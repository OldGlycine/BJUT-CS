package GUI_homework;

public class Class {
    private int classNumber;
    private String subject;
    private int year,month,day;
    private String date;
    private double score;
    private String teacher;
    public Class(){}
    public Class( String subject, String b, double score, String teacher)
    {
        this.subject = subject;
        this.score = score;
        this.teacher = teacher;
        String[] split;
        try{
            split = b.split("\\.");
            if(split.length > 3)
                throw new MyException("日期格式错误");
            this.year = Integer.parseInt(split[0]);
            this.month = Integer.parseInt(split[1]);
            this.day = Integer.parseInt(split[2]);
            this.date = b;
        }
        catch (MyException e)
        {
            System.out.println(e);
        }
        catch(NumberFormatException e)
        {
            System.out.println("日期格式错误,应当用“.”来分割");
        }
        catch (ArrayIndexOutOfBoundsException e)
        {
            System.out.println("日期格式错误,少写了月份和日期,或少写了日期");
        }
    }
    public Class(int classNumber, String subject, String b, double score, String teacher)
    {
        this.classNumber = classNumber;
        this.subject = subject;
        this.score = score;
        this.teacher = teacher;
        String[] split;
        try{
            split = b.split("\\.");
            if(split.length > 3)
                throw new MyException("日期格式错误");
            this.year = Integer.parseInt(split[0]);
            this.month = Integer.parseInt(split[1]);
            this.day = Integer.parseInt(split[2]);
        }
        catch (MyException e)
        {
            System.out.println(e);
        }
        catch(NumberFormatException e)
        {
            System.out.println("日期格式错误,应当用“.”来分割");
        }
        catch (ArrayIndexOutOfBoundsException e)
        {
            System.out.println("日期格式错误,少写了月份和日期,或少写了日期");
        }
    }

    public int getClassNumber()
    {
        return classNumber;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }

    public int getMonth() {
        return month;
    }

    public void setMonth(int month) {
        this.month = month;
    }

    public int getDay() {
        return day;
    }

    public void setDay(int day) {
        this.day = day;
    }

    public double getScore() {
        return score;
    }

    public void setScore(double score) {
        this.score = score;
    }

    public String getTeacher() {
        return teacher;
    }

    public void setTeacher(String teacher) {
        this.teacher = teacher;
    }


    public String toString()
    {
        return "考试科目：" + subject + " 考试日期：" + year + "." + month + "." + day + " 考试分数：" + score +
                " 指导老师：" + teacher;
    }
}
