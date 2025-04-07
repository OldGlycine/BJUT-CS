package GUI_homework;


import javax.swing.*;
import java.awt.*;
import java.awt.event.*;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;

public class StudentGUI extends JFrame{

    static ArrayList<Student> students = new ArrayList<>();
    // 当前为第几个学生，默认为0
    Integer student_num = 0;
    // 当前为第几个课程，默认为0
    Integer class_num = 0;
    // 依次添加课程用的推进器,和 class_num 联合使用.同时也充当修改/删除标记器
    int classFlag = 1;
    // 辅助课程修改/删除标记器
    String className = "";
    // 充当修改/删除标记器
    int studentFlag = 0;
    // 辅助学生修改/删除标记器
    String studentName = "";

    // 展示文本区
    public static JTextArea jta = new JTextArea("",9,40);
    JScrollPane jsp;
    // 文本区
    JLabel numberSL = new JLabel("请输入学号：");
    JLabel nameSL = new JLabel("请输入姓名：");
    JLabel majorSL = new JLabel("请输入专业：");
    JLabel birthSL = new JLabel("请输入生日：");
    JLabel classNumberCL = new JLabel("请输入课程数目：");
    JLabel subjectCL = new JLabel("请输入课程名称：");
    JLabel dateCL = new JLabel("请输入考试时间：");
    JLabel scoreCL = new JLabel("请输入考试分数：");
    JLabel teacherCL = new JLabel("请输入指导教师：");

    JLabel changeSL = new JLabel("*****请输入要修改或删除的指定学生的信息：*****");
    JLabel changeCL = new JLabel("*****请输入要修改或删除的指定课程的信息：*****");

    JLabel ifo1 = new JLabel("***************************在下方输入学生信息***************************");
    JLabel ifo2 = new JLabel("*****************************在下方输入课程信息*****************************");
    JLabel ifo3 = new JLabel("*****************************下方展示所有的信息*****************************");
    JLabel ifo4 = new JLabel("************日期的正确形式：“yyyy.mm.dd”,比如2002.9.27************");
    JLabel mode = new JLabel("**********mode：(默认为”添加学生数据“)**********");

    // 按钮区
    JButton appendSB = new JButton("添加新学生和考试科目数据");
    JButton deleteSB = new JButton("删除学生数据");
    JButton changeSB = new JButton("修改学生信息");
    JButton deleteCB = new JButton("删除考试科目数据");
    JButton changeCB = new JButton("修改考试科目数据");
    JButton addCB = new JButton("添加新课程");

    JButton confirmClassNum = new JButton("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!确认课程数目!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
    // 下面两个按钮的文字是动态的,随着student_num 和 class_num 的变化而变化
    JButton confirmSB = new JButton("添加第1名学生的信息");
    JButton confirmCB = new JButton("添加第1名学生第1门课程的信息");

    JButton showAll = new JButton("查看全部信息");
    JButton showOne = new JButton("查看本学生的信息");

    JButton confirmChangeSB = new JButton("确认");
    JButton confirmChangeCB = new JButton("确认");

    // 输入区
    JTextField numberST = new JTextField(10);
    JTextField nameST = new JTextField(10);
    JTextField majorST = new JTextField(10);
    JTextField birthST = new JTextField(10);
    JTextField classNumberCT = new JTextField(10);
    JTextField subjectCT = new JTextField(10);
    JTextField dateCT = new JTextField(10);
    JTextField scoreCT = new JTextField(10);
    JTextField teacherCT = new JTextField(10);

    JTextField changeST = new JTextField(10);
    JTextField changeCT = new JTextField(10);

    private void appendSB_actionPerformed(ActionEvent e)
    {

        appendSB.setEnabled(false);
        confirmChangeCB.setEnabled(false);
        confirmChangeSB.setEnabled(true);
        deleteSB.setEnabled(false);
        changeSB.setEnabled(false);
        deleteCB.setEnabled(false);
        changeCB.setEnabled(false);
        changeST.setEnabled(true);
        changeCT.setEnabled(true);
        addCB.setEnabled(false);
        changeST.setText("");
        changeCT.setText("");

        confirmSB.setEnabled(true);
        confirmCB.setEnabled(false);
        confirmClassNum.setEnabled(false);
        showOne.setEnabled(true);
        showAll.setEnabled(true);
    }

    private void confirmS_actionPerformed(ActionEvent e)
    {
        String number = numberST.getText();
        String name = nameST.getText();
        String major = majorST.getText();
        String birth = birthST.getText();
        String[] split;
        try {
            int flag = 0;
            split = birth.split("\\.");
            int year = Integer.parseInt(split[0]);
            int month = Integer.parseInt(split[1]);
            int day = Integer.parseInt(split[2]);

            if(split.length > 3)
                throw new MyException("日期格式错误");
            if(new dateJudge(year, month, day).judgeS())
                flag = 1;

            if((((!Objects.equals(number, "") && !Objects.equals(name, ""))&& !Objects.equals(major, "")) && !birth.equals("")) && flag == 1)
            {
                if(e.getActionCommand().equals("append")) {
                    // 默认本学生添加完毕之后进入下一个学生的添加
                    student_num++;
                    students.add(new Student(number, name, major, birth));
                    confirmClassNum.setEnabled(true);
                    jta.setText("添加本学生成功！可以查看该学生信息,也可以在下方添加该学生的课程信息");
                }
                else if(e.getActionCommand().equals("change"))
                {
                    Student i = students.get(studentFlag);
                    i.setNumber(number);
                    i.setName(name);
                    i.setMajor(major);
                    i.setSYear(year);
                    i.setSMonth(month);
                    i.setSDay(day);
                    //i.setSDate(birth);
                    appendSB_actionPerformed(e);
                    jta.setText("修改学生：" + i.getName() + "信息成功！返回“添加新学生和考试科目数据”模式");
                    confirmSB.setActionCommand("append");
                }
                int temp = student_num + 1;
                confirmSB.setText("添加第" + temp + "名学生的信息");
                confirmCB.setText("添加第" + (temp - 1) + "名学生第1门课程的信息");
                // 清空text区域
                numberST.setText("");
                nameST.setText("");
                majorST.setText("");
                birthST.setText("");

            }
            else if((((Objects.equals(number, "") || Objects.equals(name, ""))|| Objects.equals(major, "")) || birth.equals("")))
                throw new MyException("请正确填写所有信息！");
        }
        catch (MyException e1)
        {
            jta.setText(e1.toString());
        }
        catch(NumberFormatException e1)
        {
            jta.setText("日期格式错误,应当用“.”来分割");
        }
        catch (ArrayIndexOutOfBoundsException e1)
        {
            jta.setText("日期格式错误,少写了月份和日期,或少写了日期");
        }

    }

    private void confirmC_actionPerformed(ActionEvent e)
    {
        String subject = subjectCT.getText();
        String date = dateCT.getText();
        String teacher = teacherCT.getText();
        String score_string = scoreCT.getText();
        String[] split;
        try{
            double score = Double.parseDouble(scoreCT.getText());
            int flag = 0;
            split = date.split("\\.");
            int year = Integer.parseInt(split[0]);
            int month = Integer.parseInt(split[1]);
            int day = Integer.parseInt(split[2]);
            if(split.length > 3)
                throw new MyException("日期格式错误");
            if(score < 0 || score > 100)
                throw new MyException("分数必须在0到100之间！");
            if(e.getActionCommand().equals("append"))
            {
                if(new dateJudge(year, month, day).judgeC(students.get(student_num).getSYear(), students.get(student_num).getSMonth(), students.get(student_num).getSDay()))
                    flag = 1;
                if(((!Objects.equals(subject, "") && !date.equals(""))&& !Objects.equals(teacher, ""))&& !Objects.equals(score_string, "") && flag == 1)
                {

                        students.get(student_num).classes.add(new Class(subject, date, score, teacher));
                        if(class_num == classFlag) {
                            confirmSB.setEnabled(true);
                            confirmCB.setEnabled(false);
                            classNumberCT.setEnabled(true);
                            showOne.setEnabled(true);
                            confirmChangeSB.setEnabled(true);
                            // 学生序号返回下一个
                            student_num++;
                            // 课程序号重置
                            class_num = 0;
                            classFlag = 1;
                            // 信息区重置
                            subjectCT.setText("");
                            dateCT.setText("");
                            scoreCT.setText("");
                            teacherCT.setText("");
                        }
                        else
                        {
                            // 信息区重置
                            subjectCT.setText("");
                            dateCT.setText("");
                            scoreCT.setText("");
                            teacherCT.setText("");
                            classFlag += 1;
                            jta.setText("添加本课程成功！可以查看该学生和课程的信息,也可以在上方点击”添加新学生和考试科目数据“按钮来结束本学生全部信息的添加");
                        }
                        int temp1 = student_num + 1;
                        int temp2 = classFlag;
                        confirmCB.setText("添加第" + temp1 + "名学生第" + temp2 + "门课程的信息");
    //
                }
                else if(((Objects.equals(subject, "")|| date.equals(""))|| Objects.equals(teacher, "")) || Objects.equals(score_string, ""))
                    throw new MyException("请正确填写所有信息！");
            }
            else if(e.getActionCommand().equals("change"))
            {
                if(new dateJudge(year, month, day).judgeC(students.get(studentFlag).getSYear(), students.get(studentFlag).getSMonth(), students.get(studentFlag).getSDay()))
                    flag = 1;
                if(((!Objects.equals(subject, "") && !date.equals(""))&& !Objects.equals(teacher, ""))&& !Objects.equals(score_string, "") && flag == 1)
                {
                    Class i = students.get(studentFlag).classes.get(classFlag - 1);
                    i.setScore(score);
                    i.setTeacher(teacher);
                    i.setSubject(subject);
                    i.setYear(year);
                    i.setMonth(month);
                    i.setDay(day);
                    appendSB_actionPerformed(e);
                    // 信息区重置
                    subjectCT.setText("");
                    dateCT.setText("");
                    scoreCT.setText("");
                    teacherCT.setText("");
                    jta.setText("修改学生的课程：" + i.getSubject() + "信息成功！返回“添加新学生和考试科目数据”模式");
                    confirmSB.setActionCommand("append");
                    int temp = student_num;
                    confirmCB.setText("添加第" + temp + "名学生第1门课程的信息");
                }
                else if(((Objects.equals(subject, "")|| date.equals(""))|| Objects.equals(teacher, "")) || Objects.equals(score_string, ""))
                    throw new MyException("请正确填写所有信息！");
            }
            else if(e.getActionCommand().equals("add"))
            {
                if(new dateJudge(year, month, day).judgeC(students.get(studentFlag).getSYear(), students.get(studentFlag).getSMonth(), students.get(studentFlag).getSDay()))
                    flag = 1;
                if(((!Objects.equals(subject, "") && !date.equals(""))&& !Objects.equals(teacher, ""))&& !Objects.equals(score_string, "") && flag == 1)
                {
                    Student i = students.get(studentFlag);
                    i.classes.add(new Class(subject, date, score, teacher));
                    appendSB_actionPerformed(e);
                    // 信息区重置
                    subjectCT.setText("");
                    dateCT.setText("");
                    scoreCT.setText("");
                    teacherCT.setText("");
                    jta.setText("添加学生的课程：" + subject + "的信息成功！返回“添加新学生和考试科目数据”模式");
                    confirmSB.setActionCommand("append");
                    int temp = student_num;
                    confirmCB.setText("添加第" + temp + "名学生第1门课程的信息");
                }
                else if(((Objects.equals(subject, "")|| date.equals(""))|| Objects.equals(teacher, "")) || Objects.equals(score_string, ""))
                    throw new MyException("请正确填写所有信息！");
            }
        }
        catch (MyException ex) {
            jta.setText(ex.toString());
        }
        catch(NumberFormatException e1)
        {
            jta.setText("分数含有数字以外的字符\n或日期格式错误,应当用“.”来分割");
        }
        catch (ArrayIndexOutOfBoundsException e1)
        {
            jta.setText("日期格式错误,少写了月份和日期,或少写了日期");
        }

    }

    // 确认课程数目
    private void ConfirmClassNum_actionPerformed(ActionEvent e)
    {
        try{
            int classNumber = Integer.parseInt(classNumberCT.getText());
            if(classNumber > 0)
            {
                classNumberCT.setEnabled(false);
                confirmClassNum.setEnabled(false);
                confirmCB.setEnabled(true);
                confirmChangeSB.setEnabled(false);
                // 课程数目变为当前输入的数目
                class_num = classNumber;
                // 让student_num变为最后添加的那个学生
                student_num = students.size() - 1;
                confirmSB.setEnabled(false);
                showOne.setEnabled(false);
            }
            else
                jta.setText("请输入大于零的整数！");
        }catch(NumberFormatException e1) {
            jta.setText("请输入整数！");
        }
    }

    private void ConfirmChangeSB_actionPerformed(ActionEvent e)
    {
        String name = changeST.getText();
        if(Objects.equals(name, ""))
        {
            jta.setText("还没有输入学生姓名,请重新输入！");
            return;
        }
        // 开始检测是否有本学生
        int flag = 0;
        Iterator<Student> i = students.iterator();
        while(i.hasNext())
        {
            if(Objects.equals(name, students.get(studentFlag).getName()))
            {
                int temp = studentFlag;
                flag = 1;
                jta.setText("已查找到学生：“" + name + "”信息！请选择修改/删除改本学生的课程信息,如果放弃本次操作,请点击上方“添加新学生和考试科目数据”按钮");
                changeSB.setEnabled(true);
                deleteSB.setEnabled(true);
                confirmChangeCB.setEnabled(true);
                appendSB.setEnabled(true);
                confirmChangeSB.setEnabled(false);
                changeCT.setEnabled(true);
                addCB.setEnabled(true);

                confirmSB.setEnabled(false);
                confirmCB.setEnabled(false);
                confirmClassNum.setEnabled(false);
                showAll.setEnabled(false);
                return;
            }
            else
            {
                if(studentFlag == students.size() - 1)
                    break;
                else
                    studentFlag++;
            }
        }
        if(flag == 0)
        {
            jta.setText("信息系统中无本学生");
            studentName = "";
            studentFlag = 0;
        }
    }

    private void ConfirmChangeCB_actionPerformed(ActionEvent e)
    {
        if(students.get(studentFlag).classes.size() == 0)
        {
            jta.setText("本学生还无任何课程录入,删除失败！");
            appendSB_actionPerformed(e);
            return;
        }
        String name = changeCT.getText();
        if(Objects.equals(name, "")) {
            jta.setText("还没有输入课程名,请重新输入！");
            return;
        }
        int flag = 0;
        Iterator<Class> i = students.get(studentFlag).classes.iterator();
        while(i.hasNext())
        {
            if(Objects.equals(name, students.get(studentFlag).classes.get(classFlag - 1).getSubject()))
            {
                int temp = classFlag - 1;
                jta.setText("已找到课程：“" + name + "”信息！");
                appendSB_actionPerformed(e);
                changeST.setText("");
                flag = 1;
                changeCB.setEnabled(true);
                deleteCB.setEnabled(true);
                addCB.setEnabled(false);
                changeST.setEnabled(false);
                confirmChangeSB.setEnabled(false);
                appendSB.setEnabled(true);
                changeCT.setEnabled(false);

                confirmSB.setEnabled(false);
                confirmCB.setEnabled(false);
                showAll.setEnabled(false);
                return;
            }
            else
            {
                if(classFlag == students.get(studentFlag).classes.size())
                    break;
                else
                    classFlag++;
            }
        }
        if(flag == 0) {
            jta.setText("本学生无本科目！");
            studentFlag = 0;
            classFlag = 1;
            appendSB_actionPerformed(e);
        }
    }

    // 展示当前学生以及他的课程信息
    private void showOne_actionPerformed(ActionEvent e)
    {
        try{
            String string = "";
            string += students.get(student_num - 1).toString() + "\n" + students.get(student_num - 1).returnClasses();
            jta.setText(string);
        }catch (IndexOutOfBoundsException ex)
        {
            jta.setText("当前无任何信息");
        }

    }
    // 展示目前所有学生以及他课程的信息
    private void showALL_actionPerformed(ActionEvent e)
    {
        String string = "";
        for(Student i : students)
        {
            string += i.toString() + "\n" + i.returnClasses() + "";
        }
        if(string.equals(""))
            jta.setText("当前无任何信息");
        else
            jta.setText(string + "\n");

    }

    private void deleteSB_actionPerformed(ActionEvent e)
    {
        String name = students.get(studentFlag).getName();
        students.remove(studentFlag);
        jta.setText("学生：“" + name + "”信息删除成功！返回“添加新学生和考试科目数据”模式");
        appendSB_actionPerformed(e);
        changeST.setText("");
        changeCT.setText("");
        student_num--;
        studentFlag = 0;
        studentName = "";
        int temp = student_num + 1;
        confirmSB.setText("添加第" + temp + "名学生的信息");
        confirmCB.setText("添加第" + temp + "名学生第1门课程的信息");
    }

    public void deleteCB_actionPerformed(ActionEvent e)
    {
        String name = students.get(studentFlag).classes.get(classFlag - 1).getSubject();
        students.get(studentFlag).classes.remove(classFlag - 1);
        jta.setText("课程：“" + name + "”信息删除成功！返回“添加新学生和考试科目数据”模式");
        appendSB_actionPerformed(e);
        changeST.setText("");
        changeCT.setText("");
    }

    public void changeSB_actionPerformed(ActionEvent e)
    {
        int temp = studentFlag + 1;
        jta.setText("请重新输入本同学的所有信息,如果放弃本次操作,请点击上方“添加新学生和考试科目数据”按钮");
        confirmSB.setEnabled(true);
        deleteSB.setEnabled(false);
        changeSB.setEnabled(false);
        confirmChangeCB.setEnabled(false);
        confirmSB.setText("修改第" + temp + "名学生的信息");
        confirmSB.setActionCommand("change");
    }

    public void changeCB_actionPerformed(ActionEvent e)
    {
        int temp = studentFlag + 1;
        jta.setText("请重新输入本同学本门课程的所有信息,如果放弃本次操作,请点击上方“添加新学生和考试科目数据”按钮");
        confirmSB.setEnabled(false);
        confirmClassNum.setEnabled(false);
        deleteCB.setEnabled(false);
        confirmCB.setEnabled(true);
        confirmCB.setActionCommand("change");
        confirmCB.setText("修改第" + temp + "名学生的课程："+ students.get(studentFlag).classes.get(classFlag - 1).getSubject() +"的信息");
    }

    public void addCB_actionPerformed()
    {
        int temp = studentFlag + 1;
        jta.setText("请输入本同学新增课程的所有信息,如果放弃本次操作,请点击上方“添加新学生和考试科目数据”按钮");
        addCB.setEnabled(false);
        confirmSB.setEnabled(false);
        confirmClassNum.setEnabled(false);
        deleteSB.setEnabled(false);
        changeSB.setEnabled(false);
        deleteCB.setEnabled(false);
        confirmCB.setEnabled(true);
        confirmCB.setActionCommand("add");
        confirmCB.setText("添加第" + temp + "名学生的课程信息");

    }

    public StudentGUI()
    {
        // 按钮功能实现区
        confirmSB.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                confirmS_actionPerformed(e);
            }
        });
        confirmCB.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                confirmC_actionPerformed(e);
            }
        });
        confirmClassNum.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                ConfirmClassNum_actionPerformed(e);
            }
        });
        confirmChangeSB.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                ConfirmChangeSB_actionPerformed(e);
            }
        });
        confirmChangeCB.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                ConfirmChangeCB_actionPerformed(e);
            }
        });
        deleteSB.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                deleteSB_actionPerformed(e);
            }
        });
        deleteCB.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                deleteCB_actionPerformed(e);
            }
        });
        changeSB.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                changeSB_actionPerformed(e);
            }
        });
        changeCB.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                changeCB_actionPerformed(e);
            }
        });
        addCB.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                addCB_actionPerformed();
            }
        });
        showOne.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                showOne_actionPerformed(e);
            }
        });
        showAll.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                showALL_actionPerformed(e);
            }
        });

        // 换mode
        appendSB.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                jta.setText("取消成功！");
                appendSB_actionPerformed(e);
                classFlag = 1;
                className = "";
                studentFlag = 0;
                studentName = "";
            }
        });

        // 设置按钮初始状态
        appendSB.setEnabled(false);
        confirmClassNum.setEnabled(false);
        confirmCB.setEnabled(false);
        changeSB.setEnabled(false);
        deleteSB.setEnabled(false);
        changeCB.setEnabled(false);
        deleteCB.setEnabled(false);
        confirmChangeCB.setEnabled(false);
        changeCT.setEnabled(false);
        addCB.setEnabled(false);

        // 设置按钮初始指令
        confirmSB.setActionCommand("append");
        confirmCB.setActionCommand("append");

        JPanel p = new JPanel();
        setTitle("学生管理系统GUI作业——MADE BY 高立扬");

        jta.setLineWrap(true);
        jsp = new JScrollPane(jta);
        // 下面的add语句都是按照实际程序的展示来的
        p.add(mode);p.add(appendSB);
        p.add(changeSL);p.add(changeST);p.add(confirmChangeSB);p.add(deleteSB);p.add(changeSB);
        p.add(changeCL);p.add(changeCT);p.add(confirmChangeCB);p.add(deleteCB);p.add(changeCB);p.add(addCB);
        p.add(ifo1);
        p.add(ifo4);
        p.add(numberSL);p.add(numberST);
        p.add(nameSL);p.add(nameST);
        p.add(majorSL);p.add(majorST);
        p.add(birthSL);p.add(birthST);
        p.add(confirmSB);
        p.add(ifo2);
        p.add(classNumberCL);p.add(classNumberCT);p.add(confirmClassNum);
        p.add(subjectCL);p.add(subjectCT);
        p.add(dateCL);p.add(dateCT);
        p.add(scoreCL);p.add(scoreCT);
        p.add(teacherCL);p.add(teacherCT);
        p.add(confirmCB);
        p.add(ifo3);
        p.add(showAll);p.add(showOne);
        p.add(jsp);
        getContentPane().add(p);
        setSize(450,700);
        setVisible(true);
        setResizable(false);
    }

    public static void main(String[] args){
        StudentGUI frm = new StudentGUI();
        frm.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
    }
}
