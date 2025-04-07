package StudentMessageSystem.Report;

import StudentMessageSystem.Student.*;
import StudentMessageSystem.Course.*;

public class Report {
    private Student s;
    private String major;
    private Course[] selCourse;

    public Report(Student s,String major, Course[] selCourse)
    {
        this.s = s;
        this.major = major;
        this.selCourse = selCourse;
    }

    public String getCourse()
    {
        /*
        for(int i = 0; i < selCourse.length; i++)
        {
            return selCourse[i];
        }
         下面是foreach写法*/
        StringBuilder s = null;
        for (Course course : selCourse) {
            assert false;
            s.append(course).append("\n");
        }
        assert false;
        return s.toString();
    }
    public Student getStudent() {
        return s;
    }

    public String getMajor() {
        return major;
    }

    public String toString()
    {
        StringBuilder st = new StringBuilder(s + " major:" + this.major + "\n");
        for (Course course : selCourse) {
            st.append(course).append("\n");
        }
        return st.toString();
    }
}
