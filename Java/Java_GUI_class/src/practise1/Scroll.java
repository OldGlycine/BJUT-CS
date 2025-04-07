package practise1;

import javax.swing.*;
import java.awt.*;
public class Scroll extends JFrame {
    JTextArea jta ;
    JButton button;
    JScrollPane jscrollPane;
    public Scroll() {
        setTitle("JTextAreaTest");
        setLayout(new FlowLayout());
        button=new JButton("确定");
        jta = new JTextArea("当字符串长度超出范围时显示纵向滚动条。换行开关关闭会显示横向滚动条",10, 10);
        jta.setLineWrap(true);// 激活自动换行功能,换行开关
        jscrollPane = new JScrollPane(jta);
        getContentPane().add(button);
        getContentPane().add(jscrollPane);
        setSize(240, 320);
        setDefaultCloseOperation(EXIT_ON_CLOSE);
        setVisible(true);
    }
    public static void main(String[] args) {
        new Scroll();
    }
}
