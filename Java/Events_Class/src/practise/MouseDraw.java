package practise;

import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
import java.awt.geom.*;
import java.awt.Graphics2D;

// 已知可优化处：
// 1. 拖拽的时候也显示图形
// 2. 可以从任意角度画图(本程序x2,y2必须比x1,y1大才能画出图形，可以添加一个xy之间的排序，或者取绝对值)

public class MouseDraw {
    public static void main(String[] args)
    {
        DragDrawFrame frm = new DragDrawFrame();
        frm.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frm.setVisible(true);
    }

    static class DragDrawFrame extends JFrame
    {
        JButton b1,b2,b3;
        JPanel p1,p2;
        int x1,x2,y1,y2,flag;
        JPanel p;

        DragDrawFrame()
        {
            setTitle("拖拽画图plus");
            setSize(400, 300);
            b1 = new JButton("画圆");
            b2 = new JButton("画矩形");
            b3 = new JButton("画直线");
            p1 = new JPanel();
            p2 = new JPanel();
            p = new JPanel();
            p.setBackground(Color.green);
            p1.setBackground(new Color(220,220,220));
            p2.setBackground(new Color(220,220,220));
            p1.add(b1);
            p1.add(b2);
            p2.add(b3);
            getContentPane().add(p1, BorderLayout.SOUTH);
            getContentPane().add(p2, BorderLayout.NORTH);
            getContentPane().add(p, BorderLayout.CENTER);
            b1.addActionListener(new ActionListener() {
                @Override
                public void actionPerformed(ActionEvent e) {
                    flag = 1;
                    repaint();
                }
            });
            b2.addActionListener(new ActionListener() {
                @Override
                public void actionPerformed(ActionEvent e) {
                    flag = 2;
                    repaint();
                }
            });
            b3.addActionListener(new ActionListener() {
                @Override
                public void actionPerformed(ActionEvent e) {
                    flag = 3;
                    repaint();
                }
            });
            addMouseListener(new MouseAdapter() {
                @Override
                public void mousePressed(MouseEvent e) {
                    x1 = e.getX();
                    y1 = e.getY();

                }

                @Override
                public void mouseReleased(MouseEvent e) {
                    Graphics2D g = (Graphics2D)getGraphics();
                    x2 = e.getX();
                    y2 = e.getY();
                    if(flag == 1)
                        g.drawOval(x1, y1, x2 - x1, y2 - y1);
                    if(flag == 2)
                        g.drawRect(x1, y1, x2 - x1, y2 - y1);
                    if(flag == 3)
                        g.drawLine(x1, y1, x2, y2);
                }
            });
        }
    }
}
