package Interface;

public class Demo {
    public static void main(String[] args)
    {
        AlarmGuardDoor door = new AlarmGuardDoor();
        System.out.println("门的保险年限是" + door.year);
        door.open();
        door.alarm();
        door.guard();
        door.close();
        door.boom();
    }
}
