package homework;

import java.io.*;
import java.awt.*;
import java.awt.event.*;
import javax.imageio.ImageIO;
import javax.swing.*;
import java.awt.image.*;

public class Draw {
    private static int flag;
    private static int x1,x2,y1,y2;
    private static JButton RemoveAll;
    private static String TextString = "默认文本";
    private static JTextArea jta = new JTextArea("扩展内容工具在程序最上方菜单栏和工具栏里，选中删除在按钮区，注意查看！图像保存在java文件当前的文件夹。当前无作图模式，请点击上方按钮切换作图模式！");
    private static BasicStroke bs = new BasicStroke(1, BasicStroke.CAP_BUTT, BasicStroke.JOIN_MITER);
    private static Color bcolor = Color.GREEN;
    private static Color fcolor = Color.black;
    private static JMenuItem Ibcolor,save;
    private static JMenu option,tools1,tools2;
    public static void main(String[] args)
    {
        Frame frm = new Frame();
        JOptionPane.showMessageDialog(frm, "本程序一切的操作提示，在程序最下方的栏目！\n为了方便初次使用的用户分辨出画图区，背景初始颜色为绿色，可以在工具栏修改背景颜色");
        frm.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
    }
    static class MenuEvent implements ActionListener
    {
        Frame frm;
        MenuEvent(Frame frm)
        {
            this.frm = frm;
        }
        @Override
        public void actionPerformed(ActionEvent e) {
            if(e.getActionCommand().equals("退出"))
                System.exit(0);
            if(e.getActionCommand().equals("细线"))
                bs = new BasicStroke(1, BasicStroke.CAP_BUTT, BasicStroke.JOIN_MITER);
            if(e.getActionCommand().equals("粗细线"))
                bs = new BasicStroke(2, BasicStroke.CAP_BUTT, BasicStroke.JOIN_MITER);
            if(e.getActionCommand().equals("粗线"))
                bs = new BasicStroke(4, BasicStroke.CAP_BUTT, BasicStroke.JOIN_MITER);
            if(e.getActionCommand().equals("画线颜色"))
            {
                Color fColor = JColorChooser.showDialog(frm, "选择画线颜色", Color.CYAN);
                if (fColor != null) {
                    fcolor= fColor;
                }
            }
            JOptionPane.showMessageDialog(frm, e.getActionCommand() + "设置成功！");
        }
    }
    static class Frame extends JFrame   // GUI界面
    {
        JMenuBar bar = new JMenuBar();
        JMenuItem exit,Istroke1,Istroke2,Istroke3,Ifcolor;

        Frame()
        {
            option = new JMenu("选项");
            tools1 = new JMenu("线条粗细");
            tools2 = new JMenu("颜色修改");
            exit = new JMenuItem("退出");
            exit.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_E, InputEvent.CTRL_DOWN_MASK));
            exit.addActionListener(new MenuEvent(this));
            save = new JMenuItem("保存");
            save.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_S, InputEvent.CTRL_DOWN_MASK));
            option.add(save);option.add(exit);
            bar.add(option); bar.add(tools1);bar.add(tools2);
            setJMenuBar(bar);// 添加菜单，无需写add方法单独添加
            // 菜单有一个问题，菜单点击之后扩展下来一列信息，会覆盖住原来绘画的图像和背景，导致图案消失

            Istroke1 = new JMenuItem("细线");
            Istroke1.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_1, InputEvent.CTRL_DOWN_MASK));
            Istroke1.addActionListener(new MenuEvent(this));
            Istroke2 = new JMenuItem("粗细线");
            Istroke2.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_2, InputEvent.CTRL_DOWN_MASK));
            Istroke2.addActionListener(new MenuEvent(this));
            Istroke3 = new JMenuItem("粗线");
            Istroke3.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_3, InputEvent.CTRL_DOWN_MASK));
            Istroke3.addActionListener(new MenuEvent(this));
            Ifcolor = new JMenuItem("画线颜色");
            Ifcolor.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_F, InputEvent.CTRL_DOWN_MASK));
            Ifcolor.addActionListener(new MenuEvent(this));
            Ibcolor = new JMenuItem("背景颜色");
            Ibcolor.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_B, InputEvent.CTRL_DOWN_MASK));

            tools1.add(Istroke1);tools1.add(Istroke2);tools1.add(Istroke3);
            tools2.add(Ifcolor);tools2.add(Ibcolor);

            // 创建各个panel组件并添加
            ButtonPanel b = new ButtonPanel();
            add(b,BorderLayout.NORTH);
            DrawPanel p = new DrawPanel();
            p.setBackground(bcolor);
            add(p);
            add(jta,BorderLayout.SOUTH);

            // 设置窗口信息
            setSize(1440,800);
            setTitle("Draw Homework");
            setResizable(false);
            setVisible(true);
        }
    }

    static class ButtonPanel extends JPanel
    {
        JButton Line,Rect,Circle,Text,Any,Turn,Select;
        JLabel change;
        JTextField Change;
        ButtonPanel()
        {
            Font font = new Font("楷体", Font.BOLD, 24);
            Any = new JButton("自由作图");
            Any.setFont(font);
            Line = new JButton("画直线");
            Line.setFont(font);
            Circle = new JButton("画椭圆");
            Circle.setFont(font);
            Rect = new JButton("画矩形");
            Rect.setFont(font);
            Text = new JButton("画文字");
            Text.setFont(font);
            change = new JLabel("更换文字为：");
            change.setFont(font);
            Change = new JTextField(10);
            Change.setFont(font);
            Turn = new JButton("确认更换");
            Turn.setFont(font);
            RemoveAll = new JButton("清屏");
            RemoveAll.setFont(font);
            Select = new JButton("选中删除");
            Select.setFont(font);
            Text.addActionListener(new ActionListener() {
                @Override
                public void actionPerformed(ActionEvent e) {
                    flag = 1;
                    jta.setText("当前为画文字模式，可以通过按钮区来更换文字。");
                }
            });
            Rect.addActionListener(new ActionListener() {
                @Override
                public void actionPerformed(ActionEvent e) {
                    flag = 2;
                    jta.setText("当前为画矩形模式，拖动画图");
                }
            });
            Line.addActionListener(new ActionListener() {
                @Override
                public void actionPerformed(ActionEvent e) {
                    flag = 3;
                    jta.setText("当前为画直线模式，拖动画图");
                }
            });
            Circle.addActionListener(new ActionListener() {
                @Override
                public void actionPerformed(ActionEvent e) {
                    flag = 4;
                    jta.setText("当前为画椭圆模式，拖动画图");
                }
            });
            Any.addActionListener(new ActionListener() {
                @Override
                public void actionPerformed(ActionEvent e) {
                    flag = 5;
                    jta.setText("当前为自由作图模式，按住鼠标并移动来完成绘画");
                }
            });
            Turn.addActionListener(new ActionListener() {
                @Override
                public void actionPerformed(ActionEvent e) {
                    TextString = Change.getText();
                    jta.setText("替换文本成功！当前文本为：" + TextString);
                }
            });
            Select.addActionListener(new ActionListener() {
                @Override
                public void actionPerformed(ActionEvent e) {
                    flag = 10;
                    jta.setText("当前为选中删除模式，用画矩形的方式，可以删除矩形区域内部的一切图案");
                }
            });
            add(Any);add(Line);add(Rect);add(Circle);
            add(Text);add(change);add(Change);add(Turn);add(RemoveAll);add(Select);
        }
    }

    static class DrawPanel extends JPanel   // 通用容器，添加组件并显示，事件处理
    {
        // 保存的图片中实际呈现的是paintComponent中的东西
        public void paintComponent(Graphics g)
        {
            super.paintComponent(g);    // 用背景色绘制画板
            if(flag == 2)
                g.drawRect(Math.min(x1, x2), Math.min(y1, y2), Math.abs(x1-x2),Math.abs(y1-y2));
            if(flag == 3)
                g.drawLine(x1,y1,x2,y2);
            if(flag == 4)
                g.drawOval(Math.min(x1, x2), Math.min(y1, y2), Math.abs(x1-x2),Math.abs(y1-y2));
        }

        DrawPanel()
        {
            flag = 0;
            addMouseListener(new MouseAdapter() {
                @Override
                public void mousePressed(MouseEvent e) {
                    x1 = e.getX(); y1 = e.getY();
                    if(flag == 1)
                    {
                        Graphics2D g = (Graphics2D)getGraphics();
                        g.setStroke(bs);
                        g.setColor(fcolor);
                        x2 = e.getX();
                        y2 = e.getY();
                        g.drawString(TextString, x2, y2);
                    }
                }

                @Override
                public void mouseReleased(MouseEvent e) {
                    x2 = e.getX(); y2 = e.getY();
                    Graphics2D g = (Graphics2D)getGraphics();
                    g.setStroke(bs);
                    g.setColor(fcolor);
                    if(flag == 2) {
                        g.drawRect(Math.min(x1, x2), Math.min(y1, y2), Math.abs(x1 - x2), Math.abs(y1 - y2));
                    }if(flag == 3)
                        g.drawLine(x1,y1,x2,y2);
                    if(flag == 4)
                        g.drawOval(Math.min(x1, x2), Math.min(y1, y2), Math.abs(x1-x2),Math.abs(y1-y2));
                    if(flag == 10){
                        g.setColor(bcolor);
                        g.fillRect(Math.min(x1, x2), Math.min(y1, y2), Math.abs(x1 - x2), Math.abs(y1 - y2));
                    }

                }
            });
            addMouseMotionListener(new MouseMotionListener() {
                @Override
                // 自由画图
                public void mouseDragged(MouseEvent e) {
                    if(flag == 5)
                    {
                        Graphics2D g = (Graphics2D)getGraphics();
                        g.setStroke(bs);
                        g.setColor(fcolor);
                        g.drawLine(x1, y1, e.getX(), e.getY());
                        x1 = e.getX();
                        y1 = e.getY();
                    }
                }
                @Override
                public void mouseMoved(MouseEvent e) {}
            });
            RemoveAll.addActionListener(new ActionListener() {
                @Override
                public void actionPerformed(ActionEvent e) {
                    Graphics2D g = (Graphics2D)getGraphics();
                    g.setColor(bcolor);
                    g.fillRect(0,0,1440,1000);
                }
            });
            Ibcolor.addActionListener(new ActionListener() {
                @Override
                public void actionPerformed(ActionEvent e) {
                    Frame frm = null;// TODO:如果这里写成new Frame()，弹出窗口提示的时候，绘图程序会生成一个全新的窗口，可以试一试
                    JOptionPane.showMessageDialog(frm, "警告！换背景颜色会覆盖原来已经画好的图案！请谨慎！");
                    Color bColor = JColorChooser.showDialog(DrawPanel.this, "选择场景颜色", Color.CYAN);
                    if (bColor != null) {
                        bcolor= bColor;
                    }
                    setBackground(bcolor);
                }
            });
            save.addActionListener(new ActionListener() {
                @Override
                public void actionPerformed(ActionEvent e) {
                    BufferedImage image = new BufferedImage(1426,676,BufferedImage.TYPE_INT_RGB);
                    Graphics2D graphics = image.createGraphics();
                    paint(graphics);
                    graphics.dispose();
                    File f=new File(".\\1.jpg");
                    if( !f.exists() )
                    {
                        try {
                            f.createNewFile();
                        } catch (IOException ex) {
                            ex.printStackTrace();
                        }
                        System.out.println(123);
                    }
                    try {
                        ImageIO.write(image, "jpg",f);
                    } catch (IOException ex) {
                        ex.printStackTrace();
                    }
                }
            });
        }
    }
}
