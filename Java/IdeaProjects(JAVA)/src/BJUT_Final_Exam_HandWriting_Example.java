import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
public class BJUT_Final_Exam_HandWriting_Example {
    public static void main(String[] args){
        Frame frm = new Frame();
    }
    static class Frame extends JFrame{
        Frame()
        {
            Panel p = new Panel();
            add(p);
            setVisible(true);
        }
    }
    static class Panel extends JPanel{
        JLabel l1;
        JButton b1;
        JTextField f1;
        JTextArea jta = new JTextArea("",9,40);
        JScrollPane jsp;
        Panel()
        {
            l1 = new JLabel("这是标签");
            b1 = new JButton("这是按钮");
            f1 = new JTextField(10);
            b1.addActionListener(new ActionListener()
                                 {
                                     public void actionPerformed(ActionEvent e)
                                     {
                                         Frame frm = null;
                                         JOptionPane.showMessageDialog(frm,"弹窗测试");
                                     }
                                 }
            );
            jta.setLineWrap(true);
            jsp = new JScrollPane(jta);
            add(l1);add(f1);add(b1);add(jsp);
        }
    }
}
