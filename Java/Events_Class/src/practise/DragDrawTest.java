package practise;

import javax.swing.*;
import java.awt.*;
import java.awt.event.*;

public class DragDrawTest {
    static class DragDrawDemo extends JFrame   // GUI界面
    {
        DragDrawDemo()
        {
            setSize(800, 600);
            setTitle("windows dragDraw");
            DragDrawPanel p = new DragDrawPanel();
            add(p);
        }
    }

    static class DragDrawPanel extends JPanel   // 通用容器，添加组件并显示，事件处理
    {
        JButton b1,b2,b3,b4;
        int x1,x2,y1,y2,flag;

        public void paintComponent(Graphics g)
        {
            super.paintComponent(g);    // 用背景色绘制画板
            if(flag == 2)
                g.drawRect(x1,y1,x2 - x1,y2-y1);
            if(flag == 3)
                g.drawLine(x1,y1,x2,y2);
            if(flag == 4)
                g.drawOval(x1,y1,x2-x1,y2-y1);
        }
        DragDrawPanel()
        {
            b1 = new JButton("文本输出");
            b2 = new JButton("画矩形");
            b3 = new JButton("画线");
            b4 = new JButton("画圆");
            add(b1); add(b2); add(b3); add(b4);

            b1.addActionListener(new ActionListener() {
                @Override
                public void actionPerformed(ActionEvent e) {
                    flag = 1;
                }
            });
            b2.addActionListener(new ActionListener() {
                @Override
                public void actionPerformed(ActionEvent e) {
                    flag = 2;
                }
            });
            b3.addActionListener(new ActionListener() {
                @Override
                public void actionPerformed(ActionEvent e) {
                    flag = 3;
                }
            });
            b4.addActionListener(new ActionListener() {
                @Override
                public void actionPerformed(ActionEvent e) {
                    flag = 4;
                }
            });
            addMouseListener(new MouseAdapter() {
                @Override
                public void mousePressed(MouseEvent e) {
                    x1 = e.getX(); y1 = e.getY();
                    System.out.println(x1 + " " + y1);
                    if(flag == 1)
                    {
                        Graphics2D g = (Graphics2D)getGraphics();
                        x2 = e.getX();
                        y2 = e.getY();
                        g.drawString("当前坐标为：" + x2 + "，" + y2, x2, y2);
                    }
                }

                @Override
                public void mouseReleased(MouseEvent e) {
                    x2 = e.getX(); y2 = e.getY();
                    Graphics2D g = (Graphics2D)getGraphics();
                    if(flag == 4)
                        g.drawOval(x1,y1,x2-x1,y2-y1);
                    if(flag == 3)
                        g.drawLine(x1,y1,x2,y2);
                    if(flag == 2)
                        g.drawRect(x1,y1,x2-x1,y2-y1);
                }
            });

            addMouseMotionListener(new MouseMotionListener() {
                @Override
                public void mouseDragged(MouseEvent e) {
                    x2 = e.getX();
                    y2 = e.getY();
                    Graphics2D g = (Graphics2D) getGraphics();
                    if(flag == 2)
                    {
                        g.drawRect(x1,y1,x2-x1,y2-y1);
                        repaint();
                    }
                    if(flag == 3)
                    {
                        g.drawLine(x1,y1,x2,y2);
                        repaint();
                    }
                    if(flag == 4)
                    {
                        g.drawOval(x1,y1,x2-x1,y2-y1);
                        repaint();
                    }
                }

                @Override
                public void mouseMoved(MouseEvent e) {

                }
            });
        }
    }
    public static void main(String[] args)
    {
        DragDrawDemo frm = new DragDrawDemo();
        frm.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frm.setVisible(true);
    }
}
