package practise1;

import java.awt.event.*;
import java.awt.*;
import javax.swing.*;

class Equation {
    private int a,b,c;
    public Equation(){
        this.a = 1;
        this.b = 2;
        this.c = 1;
    }
    public Equation(int a, int b, int c){
        this.a = a;
        this.b = b;
        this.c = c;
    }
    public void set_abc(int a, int b, int c){
        this.a = a;
        this.b = b;
        this.c = c;
    }
    public int get_a(){
        return this.a;
    }
    public int get_b(){
        return this.b;
    }
    public int get_c(){
        return this.c;
    }
    public double delta_cal(){
        return Math.sqrt(b * b - (4 * a *c));
    }
    public double getX1(){
        return (((-1) * b - this.delta_cal()) / (2 * a));
    }
    public double getX2(){
        return (((-1) * b + this.delta_cal()) / (2 * a));
    }
    public String toString(){
        return a + " * X^2 + " + b + " * X + " + c + "=0";
    }
}

public class GUI_Equation extends  JFrame implements ActionListener{
    JButton button;
    JTextField a,b,c;
    JLabel la,lb,lc,l1,l2;
    public GUI_Equation()
    {
        super("ActionEvent Equation Example");
        a = new JTextField(20);
        b = new JTextField(20);
        c = new JTextField(20);
        la = new JLabel("please input a:");
        lb = new JLabel("please input b:");
        lc = new JLabel("please input c:");
        l1 = new JLabel("                      ");//显示方程
        l2 = new JLabel("                      ");//显示结果
        button = new JButton("Begin CAL");

        Font font = new Font(Font.SANS_SERIF, Font.BOLD, 20);//设置字体，文字大小
        l1.setFont(font);
        l2.setFont(font);
        la.setFont(font);
        lb.setFont(font);
        lc.setFont(font);
        a.setFont(font);
        b.setFont(font);
        c.setFont(font);
        button.setFont(font);

        FlowLayout layout = new FlowLayout(FlowLayout.LEFT);//设置布局管理
        Container contentPane = getContentPane();
        contentPane.setLayout(layout);

        contentPane.add(la);
        contentPane.add(lb);
        contentPane.add(lc);
        contentPane.add(a);
        contentPane.add(b);
        contentPane.add(c);
        contentPane.add(l1);
        contentPane.add(l2);
        contentPane.add(button);
        button.addActionListener(this); // 按下注册之后才可以激活并且执行

        setSize(400, 500);
        setVisible(true);
    }
    public void actionPerformed(ActionEvent e){
        int ta,tb,tc;//接收a,b,c from JTextField
        ta = Integer.parseInt(a.getText()); //String to int
        tb = Integer.parseInt(b.getText());
        tc = Integer.parseInt(c.getText());

        Equation eq = new Equation(ta, tb, tc);
        l1.setText(eq.toString());
        l2.setText("The result is : X1 = " + eq.getX1() + "; X2 = " + eq.getX2() + "");

    }

    public static void main(String[] args)
    {
        GUI_Equation frm = new GUI_Equation();
        frm.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
    }

}