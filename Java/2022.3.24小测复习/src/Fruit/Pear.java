package Fruit;

public class Pear extends Fruit{
    public Pear(String name)
    {
        this.brand = name;
    }

    @Override
    public void show() {
        System.out.println("Pear:" + this.brand);
    }
}
