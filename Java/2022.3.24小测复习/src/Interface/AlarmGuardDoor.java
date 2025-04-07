package Interface;

public class AlarmGuardDoor extends Door implements Alarm,Guard{
    @Override
    public void alarm() {
        System.out.println("警报");
    }

    @Override
    public void guard() {
        System.out.println("守卫");
    }

    @Override
    public void open() {
        System.out.println("芝麻开门");
    }

    @Override
    public void close() {
        System.out.println("芝麻关门");
    }

    public void boom()
    {
        System.out.println("门爆炸了");
    }
}
