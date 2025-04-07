package Exception;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

class NumberRangeException extends Exception
{
    NumberRangeException(String msg)
    {
        super(msg);
    }
}

public class ExceptionTest extends JFrame implements ActionListener{
    JLabel L1,L2;
    JTextField tf1,tf2;
    String answerStr;
    double d1,d2;
    public ExceptionTest()
    {
        L1 = new JLabel("请输入0到100之间的整数");
        tf1 = new JTextField(6);
        tf2 = new JTextField(6);
        L2 = new JLabel("  两数相除结果：          ");
        setLayout(new FlowLayout());
        getContentPane().add(L1);
        getContentPane().add(tf1);
        getContentPane().add(tf1);
        getContentPane().add(L2);
        tf1.addActionListener(this);
        tf2.addActionListener(this);
        setSize(400,400);
        setVisible(true);
    }

    public void actionPerformed(ActionEvent evt)
    {
        try
        {
            d1 = Double.parseDouble(tf1.getText());
            d2 = Double.valueOf(tf2.getText()).doubleValue();
            L2 = new JLabel("  两数相除结果：  " + Result());
        }
        catch(NumberFormatException e)
        {
            answerStr = "输入的必须是数字";
            L2.setText(answerStr);
        }
        catch(NumberRangeException ee)
        {
            answerStr = ee.getMessage();
            L2.setText(answerStr);
        }
    }
    public double Result() throws NumberRangeException
    {
        double answer = 0;
        try
        {
            if((d1 < 0) || (d1 > 100) || (d2 < 0) || (d2 > 100))
            {
               throw new NumberRangeException("输入的数字不在指定的范围！请重新输入.");
            }
            answer = d1/d2;
        }
        catch(ArithmeticException e)
        {
            answerStr = e.toString();
        }
        return answer;
    }
}
