package Generics;

public class Demo {
        public static void main(String args[]) {
            Gen<String> g1 = new Gen<String>();  //无参构造函数创建泛型类对象
            String[] a1 = {"red", "green", "blue"};
            g1.setArray2(a1); //调用泛型类设置方法
            for (String s : g1.getArray2())
                System.out.print(s+" ");//利用foreach输出
            System.out.println();

            Integer[] a2 = new Integer[]{10, 20, 30, 40, 50};
            Gen<Integer> g2 = new Gen<Integer>(a2); //带参数的构造函数创建泛型类对象
            for (int k : g2.getArray())
                System.out.print(k+" ");//利用foreach输出

        }
    }

