package practise1;

import javax.swing.*;
import java.awt.*;
import java.awt.event.*;

public class layout extends JFrame{
    public layout()
    {
        super("BorderLayout布局管理器");
        Container contentPane = getContentPane();
        contentPane.add( new JButton("South"), BorderLayout.SOUTH);
        contentPane.add( new JButton("North"), BorderLayout.NORTH);
        contentPane.add( new JButton("WEST"), BorderLayout.WEST);
        contentPane.add( new JButton("EAST"), BorderLayout.EAST);
        contentPane.add( new JButton("MIDDLE"), BorderLayout.CENTER);
        setSize(300,200);
        setVisible(true);

    }
    public static void main(String[] args)
    {
        layout frm = new layout();
        frm.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
    }
}
