package Fruit;

public class Apple extends Fruit{
    public Apple(String name)
    {
        this.brand = name;
    }

    @Override
    public void show() {
        System.out.println("Apple:" + this.brand);
    }
}
