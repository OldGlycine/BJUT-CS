package StudentMessageSystem.Person;

public class Date {

    private int year,month,day;

    public Date(){
        year=1999;
        month=9;
        day=9;
    }
    public Date(int year,int month,int day){
        this.year=year;
        this.month=month;
        this.day=day;
    }
    public Date(String date){
        int i;
        for(i=6;i<date.length();i++)
        {
            if(date.substring(i, i).equals("."))
                break;
        }
        this.year= Integer.parseInt(date.substring(0,4));
        this.month= Integer.parseInt(date.substring(5,5+1));
        this.day= Integer.parseInt(date.substring(i-1));
    }
    public Date(Date date){
        year=date.year;
        month=date.month;
        day=date.day;
    }
    public void setDate(int year,int month,int day){
        this.year=year;
        this.month=month;
        this.day=day;
    }
    public int getYear(){
        return year;
    }
    public int getMonth(){
        return month;
    }
    public int getDay(){
        return day;
    }
    public String toString(){
        return year+"."+month+"."+day;
    }

}
