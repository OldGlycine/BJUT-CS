package Fruit;

public abstract class Fruit {
    String brand;
    public abstract void show();
    public void Do()
    {
        System.out.println(this.brand + "爆炸了");
    }
}
