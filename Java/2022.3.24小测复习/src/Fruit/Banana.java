package Fruit;

public class Banana extends Fruit{
    public Banana(String name)
    {
        this.brand = name;
    }

    @Override
    public void show() {
        System.out.println("Banana:" + this.brand);
    }
}
