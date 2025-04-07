package practise;

import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.InputEvent;
import java.awt.event.KeyEvent;
import javax.swing.*;
import javax.swing.event.MenuEvent;

public class menu {
    public static void main(String[] args)
    {
        MenuFrame frm = new MenuFrame();
        frm.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frm.setSize(300, 200);
        frm.setVisible(true);
    }

    static class MenuFrame extends JFrame
    {
        MenuFrame()
        {
            super("Menu Example");
            JMenuBar menuBar = new JMenuBar();
            setJMenuBar(menuBar);
            JMenu menu1 = new JMenu("Menu1");
            menu1.setMnemonic(KeyEvent.VK_M);

            JMenu menu2 = new JMenu("Menu2");
            menu2.setMnemonic(KeyEvent.VK_N);
            JMenuItem exit = new JMenuItem("Exit");
            exit.setMnemonic(KeyEvent.VK_E);

            menuBar.add(menu1);
            menuBar.add(menu2);

            JMenuItem m11 = new JMenuItem("m11");
            m11.setMnemonic(KeyEvent.VK_1);
            JMenuItem m12 = new JMenuItem("m12");
            m12.setMnemonic(KeyEvent.VK_2);
            JMenuItem m21 = new JMenuItem("m21");
            m21.setMnemonic(KeyEvent.VK_1);
            JMenuItem m22 = new JMenuItem("m22");
            m22.setMnemonic(KeyEvent.VK_2);

            m11.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_O, InputEvent.CTRL_DOWN_MASK));
            m12.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_P, InputEvent.CTRL_DOWN_MASK));
            m21.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_K, InputEvent.CTRL_DOWN_MASK));
            m22.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_L, InputEvent.CTRL_DOWN_MASK));

            exit.setAccelerator(KeyStroke.getKeyStroke(KeyEvent.VK_E, InputEvent.CTRL_DOWN_MASK));

            menu1.add(m11); menu1.add(m12); menu1.add(exit);
            menu2.add(m21); menu2.add(m22);
            exit.addActionListener(new MenuEvent(this));
            m11.addActionListener(new MenuEvent(this));
            m12.addActionListener(new MenuEvent(this));
            m21.addActionListener(new MenuEvent(this));
            m22.addActionListener(new MenuEvent(this));
                   
        }
    }

    static class MenuEvent implements ActionListener
    {
        MenuFrame frm;
        MenuEvent(MenuFrame frm)
        {
            this.frm = frm;
        }

        @Override
        public void actionPerformed(ActionEvent e) {
            if(e.getActionCommand().equals("Exit"))
            {
                System.exit(0);
            }
            JOptionPane.showMessageDialog(frm, e.getActionCommand());
        }
    }
}
