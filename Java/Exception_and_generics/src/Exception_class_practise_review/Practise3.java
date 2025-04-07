package Exception_class_practise_review;
import java.util.Scanner;
public class Practise3 {
    public static void main(String[] args)
    {

// 请在Begin-End间编写代码
        /********** Begin **********/
        // 定义变量
        String str;
        // 接收给定的字符串
        Scanner sc = new Scanner(System.in);
        str = sc.nextLine();
        // 切割字符串，得到一个数组
        String[] split = str.split("#");
        // 将数组中所有元素转化为double类型，并输出所有double类型的和以及捕获异常
        double sum = 0;
        for(int i = 0;i < split.length;i++) {
            double j = 0;
            try {
                j = Double.parseDouble(split[i]);
                sum += j;
            } catch (NumberFormatException e) {
                System.out.println("元素" + split[i] + "不能转换为double类型");
            }

        }
        System.out.println("转换后的所有double类型数据的和为：" + sum);
        /********** End **********/
    }
}
