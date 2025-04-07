package practise;

import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
import java.awt.geom.Line2D;

public class ClickText2 {
    public static void main(String[] args)
    {
        DragDrawFrame frm = new DragDrawFrame();
        frm.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frm.setVisible(true);
    }

    static class DragDrawFrame extends JFrame
    {
        DragDrawFrame()
        {
            setTitle("拖拽绘图");
            setSize(400, 300);
            DragDrawPanel p = new DragDrawPanel();
            getContentPane().add(p);
        }
    }

    static class DragDrawPanel extends JPanel
    {
        int x1,x2,y1,y2;
        DragDrawPanel()
        {
            addMouseMotionListener(new MouseMotionListener()
            {
               public void mouseMoved(MouseEvent e){}
               public void mouseDragged(MouseEvent e)
               {
                   Graphics2D g = (Graphics2D)getGraphics();
                   x2 = e.getX();
                   y2 = e.getY();
                   g.draw(new Line2D.Double(x1, y1, x2, y2));
                   x1 = x2; y1 = y2;
                   g.dispose();
               }
            });

            addMouseListener(new MouseAdapter() {
                public void mousePressed(MouseEvent e)
                {
                    x1 = e.getX();
                    y1 = e.getY();
                }
            });
        }
    }
}
