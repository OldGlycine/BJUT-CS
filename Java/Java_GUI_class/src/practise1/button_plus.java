package practise1;
import java.awt.*;
import java.awt.event.*;
import java.security.Key;
import javax.swing.AbstractButton;
import javax.swing.*;

public class button_plus extends JPanel implements ActionListener{
    protected JButton b1,b2,b3;
    public button_plus() {
        b1 = new JButton("Disable middle button");
        b1.setVerticalTextPosition(AbstractButton.CENTER);
        b1.setHorizontalTextPosition(AbstractButton.CENTER);
        // VK_D作用就是在Disable xxxxxx，检测到第一个D之后加一个下划线
        b1.setMnemonic(KeyEvent.VK_D);
        b1.setActionCommand("disable");

        b2 = new JButton("Middle button");
        b2.setVerticalTextPosition(AbstractButton.BOTTOM);
        b2.setHorizontalTextPosition(AbstractButton.CENTER);
        b2.setMnemonic(KeyEvent.VK_M);

        b3 = new JButton("Enable middle button");
        b3.setMnemonic(KeyEvent.VK_E);
        b3.setActionCommand("enable");
        //b3.setEnabled(false);

        b1.addActionListener(this);
        b3.addActionListener(this);

        b1.setToolTipText("To disable the middle button");
        b2.setToolTipText("Does nothing when clicked");
        b3.setToolTipText("Enable the middle button");

        add(b1);add(b2);add(b3);
    }

    public void actionPerformed(ActionEvent e)
    {
        if("disable".equals(e.getActionCommand()))
        {
            b2.setEnabled(false);
            b1.setEnabled(true);
            b3.setEnabled(true);
        }
        else if("enable".equals(e.getActionCommand()))
        {
            b2.setEnabled(true);
            b1.setEnabled(true);
            b3.setEnabled(true);
        }
    }

    public static void main(String[] args)
    {
        JFrame fm = new JFrame("TryButton");
        fm.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        button_plus newContentPane = new button_plus();
        fm.setContentPane(newContentPane);
        fm.pack();
        fm.setVisible(true);
    }
}
