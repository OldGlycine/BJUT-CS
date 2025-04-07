class box
{
    int height;
    int width;
    int length;
    public int volume()
    {
        return length * width * height;
    }
}

public class BJUT_class01 {
    public static void main(String[] args)
    {
        box b = new box();
        b.width = 5;
        b.height = 6;
        b.length = 7;
        System.out.println(b.volume());
    }
}
