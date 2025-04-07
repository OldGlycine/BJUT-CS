package GUI_homework;
import static GUI_homework.StudentGUI.jta;
public class dateJudge {
    private int year;
    private int month;
    private int day;
    public dateJudge(){}
    public dateJudge(int year, int month, int day)
    {
        this.year = year;
        this.month = month;
        this.day = day;
    }
    public boolean judgeS()
    {
        String false_string = "\n添加学生信息失败！没有正确填写内容！";
        if(year < 1900 || year > 2400)
            jta.setText("出生年份输入错误！" + false_string);
        else if(month <= 0 || month >= 13)
            jta.setText("出生月份输入错误！" + false_string);
        else if(day <= 0 || day >= 32)
            jta.setText("出生日期输入错误！" + false_string);
        else if((month == 4 || month == 6 || month == 9 || month == 11) && day > 30)
            jta.setText("4,6,9,11月份不能超过30天！" + false_string);
        else
        {
            if((year % 4 == 0 && year % 100 != 0) || year % 400 == 0)
            {
                if(month == 2 && day > 28)
                    jta.setText("闰年2月不能超过28天！" + false_string);
                else
                    return true;
            }
            else
            {
                if(month == 2 && day > 27)
                    jta.setText("平年2月不能超过27天！" + false_string);
                else
                    return true;
            }
        }
        return false;
    }

    public boolean judgeC(int byear, int bmonth, int bday)
    {
        String false_string = "\n添加课程信息失败！没有正确填写内容！";

        if(year < 1900 || year > 2400)
            jta.setText("考试年份输入错误！" + false_string);
        else if(month <= 0 || month >= 13)
            jta.setText("考试月份输入错误！" + false_string);
        else if(day <= 0 || day >= 32)
            jta.setText("考试日期输入错误！" + false_string);
        else if((month == 4 || month == 6 || month == 9 || month == 11) && day > 30)
            jta.setText("4,6,9,11月份不能超过30天！" + false_string);
        else
        {
            if((year % 4 == 0 && year % 100 != 0) || year % 400 == 0)
            {
                if(month == 2 && day > 28)
                    jta.setText("闰年2月不能超过28天！" + false_string);
                else {
                    if(year <= byear && month <= bmonth && day <= bday)
                    {
                        jta.setText("考试日期不能早于本学生出生日期！" + false_string);
                        return false;
                    }
                    return true;
                }
            }
            else
            {
                if(month == 2 && day > 27)
                    jta.setText("平年2月不能超过27天！" + false_string);
                else {
                    if(year <= byear && month <= bmonth && day <= bday)
                    {
                        jta.setText("考试日期不能早于本学生出生日期！" + false_string);
                        return false;
                    }
                    return true;
                }
            }
        }
        return false;
    }
}
