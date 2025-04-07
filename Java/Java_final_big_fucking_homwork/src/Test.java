import java.util.ArrayList;
import java.util.Scanner;

public class Test {
    public static void main(String []args){
        Command cmd=new Command();
        Scanner sc=new Scanner(System.in);
        ArrayList<String> order=new ArrayList<>();
        while (sc.hasNextLine()){
            String str= sc.nextLine();
            if (str.equals("run")){break;}
            order.add(str);

        }
//        StringBuilder s = new StringBuilder(order.get(0));
//        s.delete(0,1);s.delete(s.length() - 1,s.length());
//        String[] s1 = s.toString().split(",");
//        System.out.println(s1[0] + " " + s1[1] + " " + s1[2]);
        cmd.run(order);

    }
}