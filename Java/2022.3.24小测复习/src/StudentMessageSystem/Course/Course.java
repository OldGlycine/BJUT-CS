package StudentMessageSystem.Course;
import StudentMessageSystem.Person.Date;
public class Course {
    private int code;
    private String courseName;
    private Date testTime = null;
    private int score;
    public Course()
    {
        this.testTime = new Date();
    }
    public Course(int code,String name, Date d1, int score)
    {
        this.code = code;
        this.courseName = name;
        this.testTime = d1;
        this.score = score;
    }
    public Course(int code,String name, int y,int m,int d,int score)
    {
        this.code = code;
        this.courseName = name;
        this.testTime = new Date(y,m,d);
        this.score = score;
    }
    public String toString()
    {
        if(courseName == null)
        {
            return this.code+"  "+this.testTime+" "+this.score;
        }
        else
        {
            return this.code+" "+this.courseName+" "+this.testTime+" "+this.score;
        }

    }
    public int getCode() {
        return code;
    }

    public String getCourseName() {
        return courseName;
    }

    public Date getTestTime() {
        return testTime;
    }

    public int getScore() {
        return score;
    }
}
