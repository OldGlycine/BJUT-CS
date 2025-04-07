package practise1;
import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
import javax.swing.plaf.basic.BasicArrowButton;

public class availableButton extends JFrame implements ActionListener{
    JButton button;
    public availableButton()
    {
        super("ActionEvent事件处理范例");
        button = new JButton("退出");
        button.addActionListener(this);

        Container contentPane = getContentPane();
        contentPane.add(button);
        setSize(200,200);
        setBackground(Color.magenta);
        setVisible(true);
    }
    // 重写ActionListener里的方法
    public void actionPerformed(ActionEvent e)
    {
        System.exit(-1);
    }
    public static void main(String[] args)
    {
        availableButton frm = new availableButton();
        frm.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
    }
}
