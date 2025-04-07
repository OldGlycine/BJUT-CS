package Exception;

import javax.swing.*;
import java.awt.*;
import java.util.*;

// 异常是指程序运行过程中出现的影响程序正常运行的意外或者特殊的事件
// 不包含常见的语法错误&逻辑错误
// 程序有异常不处理的话会导致程序无法运行并且报错
// 抛出异常，捕获异常，处理异常
public class Demo {
    public static void main (String[] arg) throws IllegalFormatConversionException
    {
        Scanner sc = new Scanner(System.in);
        String s;
        //捕获异常过程
        try
        {
            System.out.printf("%d\n",sc);//如果发生异常，将会抛出异常
        }
        catch (IllegalFormatConversionException x)//x是一个标识符，抓住错误语句用的
        {
            //捕获异常
            System.out.println("异常被捕获:Scanner不可以当做数字来输出！");
            //System.out.println(x);//调用toString方法
            //x.printStackTrace();//异常堆栈轨迹
        }
        finally
        {
            System.out.println("总会被输出的语句");
        }

      //  System.out.printf("%x\n",sc);
    }

//    public static void main(String[] args)
//    {
//        // ExceptionTest的测试代码
////        ExceptionTest frame = new ExceptionTest();
////        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
////        frame.show();
//        // Clipboard的测试代码
//        JFrame frame = new Clipborad();
//        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
//        frame.setSize(300,200);
//        frame.setVisible(true);
//    }
}
