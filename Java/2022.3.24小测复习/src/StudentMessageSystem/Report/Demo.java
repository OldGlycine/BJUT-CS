package StudentMessageSystem.Report;
import StudentMessageSystem.Student.*;
import StudentMessageSystem.Course.*;
import StudentMessageSystem.Person.*;
public class Demo {
    public static void main(String[] args) {
        Report r;
        Date d1=new Date(2001,10,17); //出生日期
        Date d2=new Date(2018,9,1);  //注册日期
        //   public Student(String name,String num, Date birthday,int reg_num,Date reg_day) //Student类的构造方法一
        Student s=new Student("Tom","110101"+d1.getYear()+d1.getMonth()+d1.getDay()+"5555",d1,17070001,d2);
        Course selCourse[]=new Course[2];
        Date d3=new Date(2018,10,17); //出生日期
        Date d4=new Date(2018,12,11);  //注册日期
        //public Course(int code,String courseName,Date testTime，int score) //Course的构造方法
        selCourse[0]=new Course(201,"math",new Date(2018,11,15),75);
        selCourse[1]=new Course(202,"C++",new Date(2018,11,22),86);
        r=new Report(s,"Computer",selCourse);
        System.out.print(r);

        Report r1;
        Student s1=new Student();
        Course selCourse_1[]=new Course[5];
        Date d;
        String[] str1={"Math","Physics","Chemistry","biology","material"};
        for (int i=0;i<selCourse_1.length;i++){
            d4=new Date(2018,12,i+1);
            selCourse_1[i]=new Course(300+i,str1[i],d4,100-i);
        }
        r1=new Report(s1,"Material",selCourse_1);
        System.out.print("\n"+r1);

        //修改r1的姓名，身份证号及出生日期信息，并重新输出
        r1.getStudent().setinfo("JERRY", "610101200205010364", new Date(2002,5,1));
        System.out.print("\n"+r1);
    }
}
