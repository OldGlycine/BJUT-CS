package practise;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class exp1 implements ActionListener {
    JButton button = new JButton("Hello!");
    JLabel lab1 = new JLabel();
    public exp1()
    {
        JFrame frm = new JFrame("JPanel应用范例");
        JPanel panel = new JPanel();
        panel.setBackground(Color.CYAN);
        panel.setPreferredSize(new Dimension(300, 200));
        panel.add(button); panel.add(lab1);
        frm.getContentPane().add(panel);
        frm.pack(); frm.setVisible(true);
        button.addActionListener(this);
    }

    public static void main(String[] args)
    {
        exp1 p = new exp1();
    }

    public void actionPerformed(ActionEvent e)
    {
        if(e.getSource() == button)
            lab1.setText("你刚点击了按钮");
    }
}
