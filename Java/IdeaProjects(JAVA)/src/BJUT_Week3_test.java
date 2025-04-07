import java.util.*;

public class BJUT_Week3_test {
    public static void main(String args[]){
        Rational r1,r2;
        Scanner scan=new Scanner(System.in);
        int num1,den1,num2,den2;
        num1=scan.nextInt();
        den1=scan.nextInt();
        num2=scan.nextInt();
        den2=scan.nextInt();
        r1=new Rational(num1,den1);//创建有理数1
        r2=new Rational(num2,den2);//创建有理数2
        System.out.println(r1.add(r2));//两个有理数相加
        System.out.println(r1.substract(r2));//两个有理数相减
        System.out.println(r1.multiply(r2));//两个有理数相乘
        System.out.println(r1.divide(r2));//两个有理数相除
    }
}


