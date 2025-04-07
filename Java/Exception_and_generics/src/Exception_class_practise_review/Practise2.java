package Exception_class_practise_review;

public class Practise2 extends Exception{
    private static final long serialVersionUID = 1L;
    public Practise2(){}
    public Practise2(String msg)throws Practise2
    {
        super(msg);
    }
    public Practise2(int i) throws Practise2
    {
        if(i < 3)
            throw new Practise2("数字小于3，不合格");
        else
            System.out.println("数字合格");
    }

}
