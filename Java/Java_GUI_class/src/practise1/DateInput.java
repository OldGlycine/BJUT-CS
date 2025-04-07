package practise1;

import javax.swing.*;
import java.awt.*;
public class DateInput extends JFrame
{
    public DateInput(){
        JFrame frm=new JFrame("JPanel应用范例");
        JButton button=new JButton("Hello");
        JTextField jtx1=new JTextField("2001.9.16",10);
        JLabel jLabel1=new JLabel("请输入年月日,格式:");
        JButton button2=new JButton("OK");JButton button3=new JButton("yes");
        JPanel panel=new JPanel();
        panel.setBackground(Color.orange);
        panel.setPreferredSize(new Dimension(300,200));

        panel.add(jLabel1);
        panel.add(jtx1);
        panel.add(button);
        panel.add(button2);
        panel.add(button3);
        frm.getContentPane().add(panel);
        frm.setSize(640,480);
        frm.pack();
        frm.setVisible(true);
    }
    public static void main(String[] args)
    {
        DateInput panelDemo=new DateInput();
        panelDemo.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
    }
}