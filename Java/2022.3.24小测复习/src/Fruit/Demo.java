package Fruit;

public class Demo {
    public static void main(String[] args)
    {
        Fruit apple = new Apple("红富士");
        Fruit pear = new Pear("香梨");
        Fruit banana = new Banana("大香蕉");
        apple.show();
        apple.Do();
        pear.show();
        pear.Do();
        banana.show();
        banana.Do();

    }

}
