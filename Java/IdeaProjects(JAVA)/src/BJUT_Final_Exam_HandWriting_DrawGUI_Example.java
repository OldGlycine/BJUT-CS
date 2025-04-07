import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
public class BJUT_Final_Exam_HandWriting_DrawGUI_Example {
    static int flag,x1,x2,y1,y2;
    public static void main(String[] args){
        Frame frm = new Frame();
        frm.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
    }
    static class Events implements ActionListener{
        Frame frm;
        Panel p;
        Events(Frame frm,Panel p)
        {
            this.frm = frm;
            this.p = p;
        }
        public void actionPerformed(ActionEvent e)
        {
            if(e.getActionCommand().equals("测试1")) {
                JOptionPane.showMessageDialog(frm, "测试1");
                flag = 1;
            }
            if(e.getActionCommand().equals("测试2")) {
                JOptionPane.showMessageDialog(frm, "测试2");
                flag = 2;
            }
            if(e.getActionCommand().equals("测试3")) {
                JOptionPane.showMessageDialog(frm, "测试3");
                flag = 3;
            }
            if(e.getActionCommand().equals("测试4"))
            {
                JOptionPane.showMessageDialog(frm,"测试4");
            }
        }
    }
    static class Frame extends JFrame{
        Frame()
        {
            JMenuBar bar = new JMenuBar();
            JMenu menu = new JMenu("菜单");
            JMenuItem item = new JMenuItem("测试4");

            item.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_E,InputEvent.CTRL_DOWN_MASK));
            item.addActionListener(new Events(this,null));

            menu.add(item);
            bar.add(menu);
            setJMenuBar(bar);

            Panel p = new Panel();

            add(p);
            setSize(900,600);
            setVisible(true);
        }
    }
    static class Panel extends JPanel{
        public void paintComponent(Graphics g)
        {
            super.paintComponent(g);
        }
        Panel()
        {
            JButton b1 = new JButton("测试1");
            JButton b2 = new JButton("测试2");
            JButton b3 = new JButton("测试3");

            b1.addActionListener(new Events(null,this));
            b2.addActionListener(new Events(null,this));
            b3.addActionListener(new Events(null,this));
            add(b1);add(b2);add(b3);
            addMouseListener(new MouseAdapter()
                             {
                                 public void mousePressed(MouseEvent e)
                                 {
                                    x1 = e.getX();y1 = e.getY();
                                 }
                                 public void mouseReleased(MouseEvent e)
                                 {
                                     x2 = e.getX();y2 = e.getY();
                                     Graphics2D g = (Graphics2D)getGraphics();
                                     if(flag == 1)
                                         g.drawRect(x1,y1,x2 - x1,y2 - y1);
                                     if(flag == 2)
                                         g.drawOval(x1,y1,x2 - x1,y2 - y1);
                                 }
                             }
            );
            addMouseMotionListener(new MouseMotionAdapter()
                                   {
                                       public void mouseDragged(MouseEvent e)
                                       {
                                           if(flag == 3){
                                               Graphics2D g = (Graphics2D)getGraphics();
                                               g.drawLine(x1,y1,e.getX(),e.getY());
                                               x1 = e.getX();
                                               y1 = e.getY();
                                           }
                                       }
                                   }
            );
        }
    }
}
