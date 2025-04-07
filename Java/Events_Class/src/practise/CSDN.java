package practise;

import javax.swing.ButtonGroup;
import javax.swing.JButton;
import javax.swing.JColorChooser;
import javax.swing.JFrame;
import javax.swing.JMenu;
import javax.swing.JMenuBar;
import javax.swing.JMenuItem;
import javax.swing.JOptionPane;
import javax.swing.JToggleButton;
import javax.swing.JToolBar;

import java.awt.*;
import java.awt.image.BufferedImage;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.awt.event.MouseMotionAdapter;

public class CSDN extends JFrame {

    BufferedImage image = new BufferedImage(1160, 830, BufferedImage.TYPE_INT_BGR);
    Graphics gs = image.getGraphics();
    Graphics2D g = (Graphics2D) gs;
    DrawPictureCanvas canvas = new DrawPictureCanvas();
    Color forecColor = Color.black;
    Color backgroundColor = Color.white;

    int x = -1;
    int y = -1;
    boolean rubber = false;
    /*
     * 创建按钮，菜单组件
     */
    private JToolBar toolBar;
    private JButton eraserButton;
    private JToggleButton strokeButton1;
    private JToggleButton strokeButton2;
    private JToggleButton strokeButton3;
    private JButton backgroundButton;
    private JButton foreroundButton;
    private JButton clearButton;
    private JButton savebButton;
    private JButton shapeButton;

    private JMenuItem strokeMenuItem1;
    private JMenuItem strokeMenuItem2;
    private JMenuItem strokeMenuItem3;
    private JMenuItem clearMenuItem;
    private JMenuItem foregroundMenuItem;
    private JMenuItem backgroundItem;
    private JMenuItem eraserMenuItem;
    private JMenuItem exitMenuItem;
    private JMenuItem saveMenuItem;

    private String shuiyin = "";
    private JMenuItem shuiyinMenuItem;

    public CSDN() {
        setResizable(false);//设为不可更改大小
        setTitle("画图程序(水印内容：[" + shuiyin + "])");
        setDefaultCloseOperation(EXIT_ON_CLOSE);
        setBounds(500, 100, 1160, 920);
        init();
        addListener();

    }

    private void init() {
        g.setColor(backgroundColor);
        g.fillRect(0, 0, 1160, 830);
        g.setColor(forecColor);
        canvas.setImage(image);
        getContentPane().add(canvas);

        toolBar = new JToolBar();
        getContentPane().add(toolBar, BorderLayout.NORTH);//将工具栏放在窗体上边

        /*
         * 设置各组件位置
         */
        savebButton = new JButton("保存");
        savebButton.setToolTipText("保存");
        toolBar.add(savebButton);
        toolBar.addSeparator();

        strokeButton1 = new JToggleButton("细线");
        strokeButton1.setSelected(true);
        toolBar.add(strokeButton1);

        strokeButton2 = new JToggleButton("较粗线");
        toolBar.add(strokeButton2);

        strokeButton3 = new JToggleButton("粗线");

        ButtonGroup strokeGroup = new ButtonGroup();
        strokeGroup.add(strokeButton1);
        strokeGroup.add(strokeButton2);
        strokeGroup.add(strokeButton3);
        toolBar.add(strokeButton3);
        toolBar.addSeparator();
        backgroundButton = new JButton("背景颜色");
        toolBar.add(backgroundButton);
        foreroundButton = new JButton("画笔颜色");
        toolBar.add(foreroundButton);
        toolBar.addSeparator();

        clearButton = new JButton("清除");
        toolBar.add(clearButton);
        eraserButton = new JButton("橡皮");
        toolBar.add(eraserButton);

        JMenuBar menuBar = new JMenuBar();
        setJMenuBar(menuBar);

        JMenu systemMenu = new JMenu("系统");
        menuBar.add(systemMenu);
        shuiyinMenuItem = new JMenuItem("水印");
        systemMenu.add(shuiyinMenuItem);
        saveMenuItem = new JMenuItem("保存");
        systemMenu.add(saveMenuItem);
        systemMenu.addSeparator();
        exitMenuItem = new JMenuItem("退出");
        systemMenu.add(exitMenuItem);

        JMenu strokeMenu = new JMenu("线型");
        menuBar.add(strokeMenu);
        strokeMenuItem1 = new JMenuItem("细线");
        strokeMenu.add(strokeMenuItem1);
        strokeMenuItem2 = new JMenuItem("较粗线");
        strokeMenu.add(strokeMenuItem2);
        strokeMenuItem3 = new JMenuItem("粗线");
        strokeMenu.add(strokeMenuItem3);

        JMenu colorMenu = new JMenu("颜色");
        menuBar.add(colorMenu);
        foregroundMenuItem = new JMenuItem("前景颜色");
        colorMenu.add(foregroundMenuItem);
        backgroundItem = new JMenuItem("背景颜色");
        colorMenu.add(backgroundItem);

        JMenu editMenu = new JMenu("编辑");
        menuBar.add(editMenu);
        clearMenuItem = new JMenuItem("清除");
        editMenu.add(clearMenuItem);
        eraserMenuItem = new JMenuItem("橡皮");
        editMenu.add(eraserMenuItem);

    }

    private void addListener() {
        canvas.addMouseMotionListener(new MouseMotionAdapter() {
            public void mouseDragged(final MouseEvent e) {
                if (x > 0 && y > 0) {
                    if (rubber) {
                        g.setColor(backgroundColor);
                        g.fillRect(x, y, 20, 20);
                    } else {
                        g.drawLine(x, y, e.getX(), e.getY());
                    }
                }
                x = e.getX();
                y = e.getY();
                canvas.repaint();
            }

            @Override
            public void mouseMoved(MouseEvent e) {
                if (rubber) {
                    Toolkit kit = Toolkit.getDefaultToolkit();
                    setCursor(DEFAULT_CURSOR);//设置鼠标显示样式
                } else {
                    setCursor(Cursor.getPredefinedCursor(Cursor.CROSSHAIR_CURSOR));
                }
            }
        });
        canvas.addMouseListener(new MouseAdapter() {
            public void mouseReleased(final MouseEvent arg0) {
                x = -1;
                y = -1;
            }
        });

        strokeButton1.addActionListener(new ActionListener() {

            @Override
            public void actionPerformed(ActionEvent e) {
                BasicStroke bs = new BasicStroke(1, BasicStroke.CAP_BUTT, BasicStroke.JOIN_MITER);
                g.setStroke(bs);
            }
        });

        strokeButton2.addActionListener(new ActionListener() {

            @Override
            public void actionPerformed(ActionEvent e) {
                BasicStroke bs = new BasicStroke(2, BasicStroke.CAP_BUTT, BasicStroke.JOIN_MITER);
                g.setStroke(bs);
            }
        });

        strokeButton3.addActionListener(new ActionListener() {

            @Override
            public void actionPerformed(ActionEvent e) {
                BasicStroke bs = new BasicStroke(4, BasicStroke.CAP_BUTT, BasicStroke.JOIN_MITER);
                g.setStroke(bs);
            }
        });

        backgroundButton.addActionListener(new ActionListener() {

            @Override
            public void actionPerformed(ActionEvent e) {
                Color bgColor = JColorChooser.showDialog(CSDN.this, "选择颜色对话框", Color.CYAN);
                if (bgColor != null) {
                    backgroundColor = bgColor;
                }

                backgroundButton.setBackground(backgroundColor);
                g.setColor(backgroundColor);
                g.fillRect(0, 0, 1160, 830);
                g.setColor(forecColor);
                canvas.repaint();

            }
        });

        foreroundButton.addActionListener(new ActionListener() {

            @Override
            public void actionPerformed(ActionEvent e) {
                Color fColor = JColorChooser.showDialog(CSDN.this, "选择颜色对话框", Color.CYAN);
                if (fColor != null) {
                    forecColor = fColor;
                }

                foreroundButton.setBackground(forecColor);
                g.setColor(forecColor);

            }
        });

        clearButton.addActionListener(new ActionListener() {

            @Override
            public void actionPerformed(ActionEvent e) {
                g.setColor(backgroundColor);
                g.fillRect(0, 0, 1160, 830);
                g.setColor(forecColor);
                canvas.repaint();

            }
        });

        eraserButton.addActionListener(new ActionListener() {

            @Override
            public void actionPerformed(ActionEvent e) {
                if (eraserButton.getText().equals("橡皮")) {
                    rubber = true;
                    eraserMenuItem.setText("画图");
                    eraserButton.setText("画图");
                } else {
                    rubber = false;
                    eraserMenuItem.setText("橡皮");
                    eraserButton.setText("橡皮");
                    g.setColor(forecColor);
                }

            }
        });

        savebButton.addActionListener(new ActionListener() {

            @Override
            public void actionPerformed(ActionEvent e) {
                addWatermark();
            }
        });

        // 细线菜单项
        strokeMenuItem1.addActionListener(new ActionListener() {

            @Override
            public void actionPerformed(ActionEvent e) {
                BasicStroke bs = new BasicStroke(1, BasicStroke.CAP_BUTT, BasicStroke.JOIN_MITER);
                g.setStroke(bs);
            }
        });

        // 较粗线菜单项
        strokeMenuItem2.addActionListener(new ActionListener() {

            @Override
            public void actionPerformed(ActionEvent e) {
                BasicStroke bs = new BasicStroke(2, BasicStroke.CAP_BUTT, BasicStroke.JOIN_MITER);
                g.setStroke(bs);
            }
        });

        // 粗线菜单项
        strokeMenuItem3.addActionListener(new ActionListener() {

            @Override
            public void actionPerformed(ActionEvent e) {
                BasicStroke bs = new BasicStroke(4, BasicStroke.CAP_BUTT, BasicStroke.JOIN_MITER);
                g.setStroke(bs);
            }
        });

        foregroundMenuItem.addActionListener(new ActionListener() {

            @Override
            public void actionPerformed(ActionEvent e) {
                Color fColor = JColorChooser.showDialog(CSDN.this, "选择颜色对话框", Color.CYAN);
                if (fColor != null) {
                    forecColor = fColor;
                }

                foreroundButton.setBackground(forecColor);
                g.setColor(forecColor);

            }
        });

        backgroundItem.addActionListener(new ActionListener() {

            @Override
            public void actionPerformed(ActionEvent e) {
                Color bgColor = JColorChooser.showDialog(CSDN.this, "选择颜色对话框", Color.CYAN);
                if (bgColor != null) {
                    backgroundColor = bgColor;
                }

                backgroundButton.setBackground(backgroundColor);
                g.setColor(backgroundColor);
                g.fillRect(0, 0, 1160, 830);
                g.setColor(forecColor);
                canvas.repaint();

            }
        });

        clearMenuItem.addActionListener(new ActionListener() {

            @Override
            public void actionPerformed(ActionEvent e) {
                g.setColor(backgroundColor);
                g.fillRect(0, 0, 1160, 830);
                g.setColor(forecColor);
                canvas.repaint();

            }
        });

        eraserMenuItem.addActionListener(new ActionListener() {

            @Override
            public void actionPerformed(ActionEvent e) {
                if (eraserButton.getText().equals("橡皮")) {
                    rubber = true;
                    eraserButton.setText("画图");
                    eraserMenuItem.setText("画图");
                } else {
                    rubber = false;
                    eraserButton.setText("橡皮");
                    eraserMenuItem.setText("橡皮");
                    g.setColor(forecColor);
                }

            }
        });

        exitMenuItem.addActionListener(new ActionListener() {

            @Override
            public void actionPerformed(ActionEvent e) {
                System.exit(0);

            }
        });

        shuiyinMenuItem.addActionListener(new ActionListener() {

            @Override
            public void actionPerformed(ActionEvent e) {
                shuiyin = JOptionPane.showInputDialog(CSDN.this, "你想添加什么水印？");
                if (null == shuiyin) {
                    shuiyin = "";
                } else {
                    setTitle("画图程序(水印内容：[" + shuiyin + "])");
                }

            }
        });

        toolBar.addMouseMotionListener(new MouseMotionAdapter() {//工具栏添加鼠标事件监听
            @Override
            public void mouseMoved(MouseEvent e) {
                setCursor(Cursor.getPredefinedCursor(Cursor.DEFAULT_CURSOR));//设置鼠标的形状为默认光标

            }

        });
    }

    private void addWatermark() {
        if (!"".equals(shuiyin.trim())) {// 如果水印字段不是空字符串
            g.rotate(Math.toRadians(-30));
            Font font = new Font("楷体", Font.BOLD, 72);
            g.setFont(font);
            g.setColor(Color.GRAY);
            AlphaComposite alpha = AlphaComposite.SrcOver.derive(0.4f);// 设置透明效果
            g.setComposite(alpha);
            g.drawString(shuiyin, 350, 900);
            canvas.repaint();

            g.rotate(Math.toRadians(30));// 将旋转的图片再转回来
            alpha = AlphaComposite.SrcOver.derive(1f);// 不透明效果
            g.setComposite(alpha);// 使用不透明效果
            g.setColor(forecColor);// 画笔恢复之前的颜色
        }
    }

    public static void main(String[] args) {
        CSDN frame = new CSDN();
        frame.setVisible(true);

    }

}


class DrawPictureCanvas extends Canvas {
    private Image image=null;

    public void setImage(Image image) {
        this.image=image;
    }

    @Override
    public void paint(Graphics g) {
        g.drawImage(image, 0, 0, null);
    }

    public void update(Graphics g) {
        paint(g);
    }
}




