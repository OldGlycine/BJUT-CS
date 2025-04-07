package practise1;

import javax.swing.*;
import java.awt.*;
public class button {
    public button()
    {
        JFrame frm = new JFrame("JPanel应用实例");
        JButton button = new JButton("HelloWorld!!!");
        JButton button1 = new JButton("好的");
        JLabel label = new JLabel("Hello!");
        JPanel panel = new JPanel();
        panel.setBackground(Color.ORANGE);
        panel.setPreferredSize(new Dimension(300,200));
        panel.add(label);
        panel.add(button);
        panel.add(button1);
        frm.getContentPane().add(panel);
        frm.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frm.pack();
        frm.setVisible(true);
    }
    public static void main(String[] args)
    {
        button paneButtonDemo = new button();
    }
}
