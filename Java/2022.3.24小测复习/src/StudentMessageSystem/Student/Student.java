package StudentMessageSystem.Student;
import StudentMessageSystem.Person.*;
public class Student extends Person{
    private int reg_num;
    private Date reg_day;
    public Student()
    {
        super();
        this.reg_day = new Date();
    }
    public Student(String name,String number,Date d1, int rn, Date d2)
    {
        super(name,number,d1);
        this.reg_num = rn;
        this.reg_day = d2;
    }
    public Student(String name,String number,Date d1, int rn, int y, int m, int d)
    {
        super(name,number,d1);
        this.reg_num = rn;
        this.reg_day = new Date(y,m,d);
    }



    public void setinfo(String name,String number,Date d)
    {
        super.setinfo(name,number,d);
    }

    @Override
    public String toString() {
        return "Student{" + "name=" + getName() + '\'' +
                    ", number=" + getNumber() +
                    ", birthday=" + getBirthday() +
                "reg_num=" + reg_num +
                ", reg_day=" + reg_day +
                '}';
    }

    public int getReg_num() {
        return reg_num;
    }

    public void setReg_num(int reg_num) {
        this.reg_num = reg_num;
    }

    public Date getReg_day() {
        return reg_day;
    }

    public void setReg_day(Date reg_day) {
        this.reg_day = reg_day;
    }
}
