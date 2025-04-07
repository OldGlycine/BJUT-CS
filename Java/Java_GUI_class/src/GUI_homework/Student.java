package GUI_homework;

import javax.swing.*;
import java.util.ArrayList;
import java.util.Objects;

import static GUI_homework.StudentGUI.jta;

public class Student extends Class{
    private String number;
    private String name;
    private String major;
    private int year;
    private int month;
    private int day;
    private String date;
    ArrayList<Class> classes = new ArrayList<>();
    public Student()
    {
        this.number = "0";
        this.name = "NaN";
        this.major = "NaN";
        this.year = 1900;
        this.month = 0;
        this.day = 1;
    }

    public Student(String num, String name, String major, String d)
    {
        this.number = num;
        this.name = name;
        this.major = major;
        String[] split;
        split = d.split("\\.");
        this.year = Integer.parseInt(split[0]);
        this.month = Integer.parseInt(split[1]);
        this.day = Integer.parseInt(split[2]);
        this.date = d;
    }

    public Student(String num, String name, String major, String d, String subject, String b, int score, String teacher)
    {
        super(subject, b, score, teacher);
        this.number = num;
        this.name = name;
        this.major = major;
        String[] split;
        try {
            split = d.split("\\.");
            if(split.length > 3)
                throw new MyException("日期格式错误");
            this.year = Integer.parseInt(split[0]);
            this.month = Integer.parseInt(split[1]);
            this.day = Integer.parseInt(split[2]);
            classes.add(new Class(subject, b, score, teacher));
        }
        catch (MyException e)
        {
            System.out.println(e);
        }
        catch(NumberFormatException e)
        {
            jta.setText("日期格式错误,应当用“.”来分割");
        }
        catch (ArrayIndexOutOfBoundsException e)
        {
            jta.setText("日期格式错误,少写了月份和日期,或少写了日期");
        }
    }

    public void addClasses(String subject, String b, int score, String teacher)
    {
        classes.add(new Class(subject, b, score, teacher));
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {
        this.major = major;
    }

    public int getSYear() {
        return year;
    }

    public void setSYear(int year) {
        this.year = year;
    }

    public int getSMonth() {
        return month;
    }

    public void setSMonth(int month) {
        this.month = month;
    }

    public int getSDay() {
        return day;
    }

    public void setSDay(int day) {
        this.day = day;
    }

    public ArrayList<Class> getSClasses() {
        return classes;
    }

    public void setClasses(ArrayList<Class> classes) {
        this.classes = classes;
    }

    public String returnClasses()
    {
        String classString = "本同学的课程是：\n";
        for(Class i : classes)
        {
            classString += i.toString() + "\n";
        }
        return classString;
    }

    public void delClass(String name)
    {
        int is_name = 0;
        if(classes.removeIf(i -> i.getSubject() == name))
            is_name = 1;
        if(is_name == 0)
        {
            jta.setText("没有输入的科目,删除失败");
        }
    }

    public String toString()
    {
//        return "学号:" + number + " 姓名：" + name + " 专业：" + major +
//                " 出生日期：" + year + "." + month + "." + day + " 考试科目：" + getSubject() + " 考试日期：" +
//                getYear() + "." + getMonth() + "." + getDay() + " 考试分数：" + getScore() + " 指导老师：" + getTeacher();
        return "学号：" + number + " 姓名：" + name + " 专业：" + major +
                " 出生日期：" + year + "." + month + "." + day;
    }
}

class MyException extends Exception{
    public MyException(String m){
        super(m);
    }
}