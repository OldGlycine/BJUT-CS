package practise1;

import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
public class frame {
    public static void main(String[] args)
    {
        JFrame frame = new JFrame("JFrame应用实例");
        frame.setDefaultCloseOperation(JFrame.DO_NOTHING_ON_CLOSE);
        JLabel label = new JLabel("JFrame应用实例");
        JButton button = new JButton("JFrame按钮应用实例");
        frame.getContentPane().add(label);
        frame.getContentPane().add(button);
        frame.pack();
        frame.setSize(new Dimension(640,480));
        frame.setVisible(true);
    }


}
