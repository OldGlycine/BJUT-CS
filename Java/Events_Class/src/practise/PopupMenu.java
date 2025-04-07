package practise;

import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import javax.swing.*;

public class PopupMenu {
    public static void main(String[] args)
    {
        PopupFrame frm = new PopupFrame();
        frm.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frm.setSize(300 ,200);
        frm.setVisible(true);
    }

    static class PopupFrame extends JFrame
    {
        JPopupMenu pop = new JPopupMenu();
        PopupFrame()
        {
            super("PopupMenu Example");
            JMenuItem m11 = new JMenuItem("m11",'1');
            JMenuItem m12 = new JMenuItem("m12",'2');
            JMenuItem exit = new JMenuItem("Exit",'E');
            pop.add(m11); pop.add(m12); pop.add(exit);
            exit.addActionListener(new PopupEvent(this));
            m11.addActionListener(new PopupEvent(this));
            m12.addActionListener(new PopupEvent(this));
            getContentPane().addMouseListener(new MouseAdapter() {
                @Override
                public void mouseReleased(MouseEvent e) {
                    if(e.isPopupTrigger())
                        pop.show(e.getComponent(), e.getX(), e.getY());
                }
            });
        }
    }

    static class PopupEvent implements ActionListener
    {
        PopupFrame frm;
        PopupEvent(PopupFrame frm)
        {
            this.frm = frm;
        }
        public void actionPerformed(ActionEvent e)
        {
            if(e.getActionCommand().equals("Exit"))
            {
                System.exit(0);
            }
            JOptionPane.showMessageDialog(frm, e.getActionCommand());
        }
    }
}
