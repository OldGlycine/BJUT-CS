package practise1;
import java.awt.*;
import java.awt.event.*;
import javax.swing.*;

public class InputBox extends JFrame{
    JTextField jText;
    JPasswordField jPassword;
    private void b1_actionPerformed(ActionEvent e){
        // 存账户名和密码并打印
        String user = jText.getText();
        String pwd = String.copyValueOf(jPassword.getPassword());
        System.out.println(user);
        System.out.println(pwd);
    }
    public InputBox()
    {
        JLabel l1 = new JLabel("用户名：");
        JLabel l2 = new JLabel("密码：");
        jText = new JTextField(20);
        jPassword = new JPasswordField(20);
        // 模拟输入密码的时候展示出的密码都是星号
        jPassword.setEchoChar('*');
        JButton b1 = new JButton("确定");
        JButton b2 = new JButton("退出");
        b2.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                System.exit(-1);
            }
        });
        b1.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                b1_actionPerformed(e);
            }
        });
        JPanel p1 = new JPanel();
        p1.add(l1);p1.add(jText);p1.add(l2);p1.add(jPassword);p1.add(b1);p1.add(b2);
        getContentPane().add(p1);
        setSize(300,150);
        setTitle("文本输入框示范");
        show();
        setResizable(false);
    }

    public static void main(String[] args)
    {
        InputBox frm = new InputBox();
        frm.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
    }
}
