package Exception_class_practise_review;

import java.util.*;
public class Demo {
    public static void main(String[] args) throws Practise2{

        /*第一个练习
        try {
            new Practise1().throws_test();
        } catch (ArithmeticException e) {
            System.out.println("除数不能为0");
        }
        */

        /*第二个练习*/
        int i = 0;
        try{
            new Practise2(i);
        }
        catch(Practise2 e)
        {
            //下面两个语句输出内容不同
            System.out.println(e);
            /*Exception_class_practise_review.Practise2: 数字小于3，不合格*/
            throw new Practise2("数字不能小于3");
            /*Exception in thread "main" Exception_class_practise_review.Practise2: 数字不能小于3
	at Exception_class_practise_review.Demo.main(Demo.java:29)*/
        }

    }
}
