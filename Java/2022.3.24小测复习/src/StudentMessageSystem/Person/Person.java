package StudentMessageSystem.Person;

public class Person {
    private String name;
    private String number;
    private Date birthday;
    public Person()
    {
        this.birthday = new Date();
    }
    public Person(String name,String number, Date d)
    {
        this.name = name;
        this.number = number;
        this.birthday = d;
    }
    @Override
    public String toString() {
        return "Person{" +
                "name='" + name + '\'' +
                ", number=" + number +
                ", birthday=" + birthday +
                '}';
    }

    public void setinfo(String name, String number, Date birthday)
    {
        this.name = name;
        this.number = number;
        this.birthday = birthday;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }
}
