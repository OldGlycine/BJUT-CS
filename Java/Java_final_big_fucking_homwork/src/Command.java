import java.util.ArrayList;
import java.util.Objects;

//TODO:一共两处出了问题，第一点是判断字符串是否相等的时候，需要用到Objects.equal()!!!!!!'

// 第二点是硬币退回计算公式出了问题

class Command{
    Item[] a = new Item[10];
    int[] b = new int[10];

    // = new Item(1,"chips");
    //请补充其他代码
    // TODO：构造方法，易错点：new ArrayList后面的“<>”
    private ArrayList<Item> Items = new ArrayList<>();
    private ArrayList<String> WeChat = new ArrayList<>();
    private ArrayList<String> Bao = new ArrayList<>();
    private ArrayList<String> Cash = new ArrayList<>();
    private int coin = 100;
    Command()
    {
        WeChat.add("微信支付记录:\n");
        Bao.add("支付宝支付记录:\n");
        Cash.add("现金支付记录:\n");
        Items.add(new Item(1,"chips"));
        Items.add(new Item(2,"cookies"));
        Items.add(new Item(3,"popcorn"));
        Items.add(new Item(4,"chocolate"));
        Items.add(new Item(5,"lollipop"));
        Items.add(new Item(6,"colo"));
        Items.add(new Item(7,"coffee"));
        Items.add(new Item(8,"tea"));
        Items.add(new Item(9,"milk"));
        Items.add(new Item(10,"water"));
    }
    public void run(ArrayList<String> order){
        int wechat = 0;
        int bao = 0;
        int cash = 0;
        for(String i : order)
        {
            // TODO:再次强调这里字符串对比的方法！
            if(Objects.equals(i, "display"))
            {
                String s = "[清单]商品总类:10, 现有硬币数量:" + coin + ", 各类商品如下:\n";
                // TODO:foreach用法
                for(Item k : Items)
                    s += k.toString();
                System.out.print(s);
            }
            else if(Objects.equals(i, "check"))
            {
                String s = "[盘点]商品种类:10,各商品如下:\n";
                for(Item k : Items)
                    s += "货物编号:"+ k.getNo() + " 商品名称:" + k.getName() + " 剩余数量:" + k.getNumber() + " 售出金额:" + k.getIncome() + "\n";
                WeChat.add("微信付款方式共赚取:"+wechat+"\n");
                Bao.add("支付宝付款方式共赚取:"+bao+"\n");
                Cash.add("现金付款方式共赚取:"+cash+"\n");
                for(String s1 : WeChat)
                    s += s1;
                for(String s1 : Bao)
                    s += s1;
                for(String s1 : Cash)
                    s += s1;
                s += "售出货物的数量和售货总收入一致!";
                System.out.println(s);
            }
            else if(Objects.equals(i, "full"))
            {
                System.out.println("[补货]已将售货机全部商品补充到10，零钱补足100。");
                for(Item k : Items)
                    k.renewNumber();
                this.coin = 100;
            }
            else{
                //
                // TODO:转换重点
                StringBuilder s = new StringBuilder(i);
                //TODO:字符串剪切重点：掐头去尾的原理
                s.delete(0,1);s.delete(s.length() - 1,s.length());
                String[] s1 = s.toString().split(",");
                // TODO:转换重点
                int no = Integer.parseInt(s1[0]);   // 商品编号
                int amount = Integer.parseInt(s1[1]);   // 购买数量
                int cost = Items.get(no - 1).getCost(); // 商品价格
                int income = amount * cost; // 收入
                Item item = Items.get(no - 1);
                if(amount > item.getNumber())
                    System.out.println("error:数量不足/购买量超过上限\n");
                else
                {
                    // 微信支付宝付款
                    if(Objects.equals(s1[2], "1") || Objects.equals(s1[2], "2"))
                    {
                        item.addSell(amount);
                        item.reduceNumber(amount);
                        item.addIncome(income);
                        if(Objects.equals(s1[2], "1"))
                        {
                            wechat += income;
                            String s2 = "您已选择微信支付方式并成功付款!\n购买成功!\n请取走您的货物!\n";
                            s2 += "商品编号:"+item.getNo()+" 商品名称:"+item.getName()+" 收入金额:"+item.getIncome()+" 剩余数量:"+item.getNumber()+" 现有硬币数量:"+coin;
                            System.out.println(s2);
                            WeChat.add("货物编号:"+item.getNo()+" 商品名称:"+item.getName()+" 售货数量:"+amount+" 售货总额:"+income+"\n");
                        }
                        else if(Objects.equals(s1[2], "2"))
                        {
                            bao += income;
                            String s2 = "您已选择支付宝支付方式并成功付款!\n购买成功!\n请取走您的货物!\n";
                            s2 += "商品编号:"+item.getNo()+" 商品名称:"+item.getName()+" 收入金额:"+item.getIncome()+" 剩余数量:"+item.getNumber()+" 现有硬币数量:"+coin;
                            System.out.println(s2);
                            Bao.add("货物编号:"+item.getNo()+" 商品名称:"+item.getName()+" 售货数量:"+amount+" 售货总额:"+income+"\n");
                        }
                        item.warn();
                    }
                    // 现金付款
                    else if(Objects.equals(s1[2], "3"))
                    {
                        int cash_amount = Integer.parseInt(s1[3]);  // 纸币面额
                        int cash_num = Integer.parseInt(s1[4]); // 纸币数量
                        int pay = cash_amount * cash_num;   // 金额
                        if(pay < income)
                            System.out.println("error:现金不够");
                        else if(cash_amount >= 50)
                            System.out.println("error:不接受面额50元及50元以上的纸币");
                        else
                        {
                            // (货品编号,所购数量,付款方式,所付硬币或纸币面额,硬币或纸币数量)
                            int last = pay - income;  // 还剩多少钱
                            if((last / cash_amount) != 0)
                                System.out.println("取走多余的"+((last / cash_amount) * cash_amount)+"元现金!");
                            coin -= last - ((last / cash_amount) * cash_amount);
                            cash += income;
                            item.addSell(amount);
                            item.reduceNumber(amount);
                            item.addIncome(income);
                            String s2 = "您已选择现金支付方式并成功付款!\n购买成功!\n请取走您的货物!\n";
                            s2 += "商品编号:"+item.getNo()+" 商品名称:"+item.getName()+" 收入金额:"+item.getIncome()+" 剩余数量:"+item.getNumber()+" 现有硬币数量:"+coin;
                            System.out.println(s2);
                            Cash.add("货物编号:"+item.getNo()+" 商品名称:"+item.getName()+" 售货数量:"+amount+" 售货总额:"+income+"\n");
                        }
                        item.warn();
                        if(coin < 20)
                            System.out.println("warning:售卖机内零钱不足20元");
                    }
                }

            }
        }
        //执行指令显示结果
        //请补充完整此代码
    }

}

//请补充完整此代码
class Item{
    private int no;
    private String name;
    private int income = 0;
    private int number = 10;
    private int cost;
    private int sell = 0;
    Item(int no, String name)
    {
        this.no = no;
        this.name = name;
        if(1 <= no && 5 >= no)
            this.cost = 3;
        else
            this.cost = 2;
    }
    void renewNumber()
    {
        this.number = 10;
    }
    void reduceNumber(int amount)
    {
        this.number -= amount;
    }
    void addIncome(int amount)
    {
        this.income += amount;
    }
    public String toString(){
        return "商品编号:" + this.no + " 商品名称:"+ this.name +" 收入金额:"+ this.income + " 单价:"+ cost + " 剩余数量:" + this.number + "\n";
    }
    int getCost()
    {return this.cost;}
    int getNo()
    {return this.no;}
    String getName()
    {return this.name;}
    int getIncome()
    {return this.income;}
    int getNumber()
    {return this.number;}
    int getSell()
    {return this.sell;}
    void addSell(int amount)
    {this.sell += amount;}
    void warn()
    {
        if(this.number < 3)
            System.out.println("warning:商品" + this.name +"数量不足3个");
    }
}
