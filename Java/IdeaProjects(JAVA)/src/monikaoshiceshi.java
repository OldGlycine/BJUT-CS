//public class monikaoshiceshi {
//    static String[] a = {"1123123", "123123123"};
//    static String[] b;
//    public static void main(String[] args)
//    {
//        b = a;
//        System.out.println(b[0]);
//        for(String i : b)
//        {
//            System.out.println(i);
//        }
//    }
//}
import javax.swing.*;
import java.awt.*;
import java.awt.event.*;

public class monikaoshiceshi {
    static int name,pword;
    public static void main(String[] args){
        Frame f = new Frame();
    }
    static class Frame extends JFrame{
        Frame()
        {
            Panel p = new Panel();
            add(p);
            setSize(300,200);
            setVisible(true);
        }
    }
    static class Panel extends JPanel{
        JLabel l1 = new JLabel("用户名：");
        JLabel l2 = new JLabel("密码：");
        JTextField f1 = new JTextField(20);
        JTextField f2 = new JTextField(20);
        JButton b1 = new JButton("确定");
        JButton b2 = new JButton("重置");
        Panel()
        {
            b1.addActionListener(new ActionListener() {
                @Override
                public void actionPerformed(ActionEvent e) {
                    Frame frm = null;
                    name = Integer.parseInt(f1.getText());
                    pword = Integer.parseInt(f2.getText());
                    if(name == 21071003 && pword == 21071003)
                        JOptionPane.showMessageDialog(frm,"欢迎进入");
                    else
                        JOptionPane.showMessageDialog(frm,"用户名/密码输入错误！");
                }
            });
            add(l1);add(f1);add(l2);add(f2);add(b1);add(b2);
        }

    }
}