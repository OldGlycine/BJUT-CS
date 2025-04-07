public class Rational {
    private long num = 0; //分子
    private long den = 1; //分母

    /************Begin*****************/
    public Rational(long num, long den)
    {
        this.num = num;
        this.den = den;
    }
    public Rational Reduction(long n1, long n2)
    //有理数约分
    {
        long t_n1 = n1;
        long t_n2 = n2;
        long n3 = 0;
        long t = 0;
        if(n1 < n2)
        {
            t = n1;
            n1 = n2;
            n2 = t;
        }
        n3 = n1%n2;
        while(n3 != 0)
        {
            n1 = n2;
            n2 = n3;
            n3 = n1%n2;
        }
        t_n1 /= n2;
        t_n2 /= n2;

        return new Rational(t_n1, t_n2);
    }
    public long getden()
    {
        return this.den;
    }
    public long getnum()
    {
        return this.num;
    }

    public String add(Rational n)
    {
        long n_ = this.num * n.getden() + this.den * n.getnum();
        long d_ = this.den * n.getden();
        Rational a = Reduction(n_, d_);
        return a.num + "/" + a.den;
    }
    public String substract(Rational n)
    {
        long n_ = this.num * n.getden() - this.den * n.getnum();
        long b_ = this.den * n.getden();
        Rational a = Reduction(n_, b_);
        return a.num + "/" + a.den;
    }
    public String multiply(Rational n)
    {
        long n_ = this.num * n.getnum();
        long b_ = this.den * n.getden();
        Rational a = Reduction(n_, b_);
        return a.num + "/" + a.den;
    }
    public String divide(Rational n)
    {
        long n_ = this.num * n.getden();
        long b_ = this.den * n.getnum();
        Rational a = Reduction(n_, b_);
        return a.num + "/" + a.den;
    }


    /*************End*****************/
}
