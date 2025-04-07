package practise;
import java.awt.Color;
import java.awt.Dimension;
import java.awt.FlowLayout;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.RenderingHints;
import java.awt.BasicStroke;
import java.awt.event.*;
import java.util.Random;
import javax.swing.JButton;
import javax.swing.JFrame;


public class Draw extends JFrame{

    public static void main(String[] args) {
        //在主函数中，实例化Draw类的对象，调用初始化界面的方法
        Draw draw = new Draw();
        draw.Ondraw();
    }

    private Paint[] array = new Paint[100000];//定义存储图形的数组
    private int x1, y1, x2, y2;

    //重写父类的重绘方法
    public void paint (Graphics g) {
        super.paint(g);
        Graphics2D g2d = (Graphics2D) g;
        g2d.setRenderingHint(RenderingHints.KEY_ANTIALIASING,
                RenderingHints.VALUE_ANTIALIAS_ON);// 设置画笔抗锯齿
        //把存储在数组中的图形数据取出来，重新画一次
        for (int i=0;i<array.length;i++) {
            Paint p = array[i];//获取数组中指定下标位置的图形对象
            if(p!=null) {
                x1=p.getX1();
                x2=p.getX2();
                y1=p.getY1();
                y2=p.getY2();

                g.setColor(p.getColor());
                if(p.getName().equals("直线")) {
                    g.drawLine(x1, y1, x2, y2);
                } else if(p.getName().equals("矩形")) {
                    g.drawRect(Math.min(x1, x2), Math.min(y1, y2), Math.abs(x1-x2),Math.abs(y1-y2));
                } else if(p.getName().equals("圆")) {
                    g.drawOval(Math.min(x1, x2), Math.min(y1, y2), Math.abs(x1-x2),Math.abs(y1-y2));
                } else if(p.getName().equals("文字")) {
                    g.drawString("大学生需要考四级", x1, y1);
                } else if(p.getName().equals("铅笔")||p.getName().equals("刷子")||p.getName().equals("橡皮")) {
                    g2d.setStroke(new BasicStroke(p.getWidth()));
                    g2d.drawLine(x1, y1, x2, y2);
                } else if(p.getName().equals("喷枪")) {
                    g.drawLine(x1,y1,x2,y2);
                } else if(p.getName().equals("长方体")) {
                    int a,b,c,d;
                    a=Math.min(x1, x2);
                    b=Math.max(x1, x2);
                    c=Math.min(y1, y2);
                    d=Math.max(y1, y2);
                    int m=(int)((b-a)*Math.cos(Math.PI/4)*Math.sin(Math.PI/4));
                    int n=(int)((b-a)*Math.cos(Math.PI/4)*Math.sin(Math.PI/4));
                    g.setColor(new Color(100, 200, 100));
                    g.fillRect(Math.min(x1, x2), Math.min(y1, y2), Math.abs(x1-x2),Math.abs(y1-y2));
                    g.setColor(Color.green);
                    g.fillPolygon(new int[] {a, a+m, b+m,b},new int[] {c,c-n,c-n,c},4);
                    g.setColor(Color.black);
                    g.fillPolygon(new int[] {b, b, b+m,b+m},new int[] {c,d,d-n,c-n},4);
                }
                else
                    break;

            }
        }
    }

    public void Ondraw() {

        //在初始化界面的方法中，实例化JFrame窗体容器组件类的对象
        //JFrame frame = new JFrame();
        //设置窗体容器组件对象的属性值：标题、大小、显示位置、关闭操作、可见。
        this.setTitle("画板");
        this.setSize(700,700);
        this.setDefaultCloseOperation(3);
        this.setLocationRelativeTo(null);

        //实例化FlowLayout流式布局类的对象，设置对齐方式
        FlowLayout fl = new FlowLayout(FlowLayout.CENTER);
        this.setLayout(fl);

        //在实例化DrawListener类的对象时将获取的画笔对象传递过去
        DrawListener dl = new DrawListener(this,array);

        String[] typeArray = {"直线","矩形","圆","文字","铅笔","刷子","橡皮","喷枪","长方体"};
        for(int i=0;i<typeArray.length;i++) {
            JButton button = new JButton(typeArray[i]);
            button.setPreferredSize(new Dimension(80,30));
            this.add(button);
            button.addActionListener((ActionListener) dl);//添加动作监听方法
        }

        Color[] colorArray = {Color.red,Color.green,Color.blue};
        for(int i=0;i<colorArray.length;i++) {
            JButton button = new JButton();
            button.setBackground(colorArray[i]);
            button.setPreferredSize(new Dimension(30,30));
            this.add(button);
            button.addActionListener(dl);//添加动作监听方法
        }

        this.setVisible(true);

        //获取窗体上的画笔对象
        Graphics g = this.getGraphics();

        //给窗体添加鼠标事件监听方法，指定事件的处理类的对象dl;
        dl.setG(g);//设置方法将画笔g传到DrawListener
        this.addMouseListener((MouseListener) dl);
        this.addMouseMotionListener((MouseMotionListener) dl);
    }
}


class Paint {
    private int x1,y1,x2,y2;
    private Color color;
    private String name;
    private int width;//线条粗细

    public Paint(int x1, int y1, int x2, int y2, Color color, String name) {
        super();
        this.x1 = x1;
        this.y1 = y1;
        this.x2 = x2;
        this.y2 = y2;
        this.color = color;
        this.name = name;
    }

    public Paint(int x1, int y1, int x2, int y2, Color color, String name, int width) {
        super();
        this.x1 = x1;
        this.y1 = y1;
        this.x2 = x2;
        this.y2 = y2;
        this.color = color;
        this.name = name;
        this.width = width;
    }

    //可以把方法写在这里，在Draw类和DrawLisyener类中调用

    public int getX1() {
        return x1;
    }
    public void setX1(int x1) {
        this.x1 = x1;
    }
    public int getY1() {
        return y1;
    }
    public void setY1(int y1) {
        this.y1 = y1;
    }
    public int getX2() {
        return x2;
    }
    public void setX2(int x2) {
        this.x2 = x2;
    }
    public int getY2() {
        return y2;
    }
    public void setY2(int y2) {
        this.y2 = y2;
    }
    public Color getColor() {
        return color;
    }
    public void setColor(Color color) {
        this.color = color;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public int getWidth() {
        return width;
    }
    public void setWidth(int width) {
        this.width = width;
    }
}




//定义DrawListener事件处理类，该类继承自MouseListener鼠标事件接口，重写接口中的抽象方法。
class DrawListener implements MouseListener,MouseMotionListener,ActionListener {

    private int x1,x2,y1,y2;
    //定义Graphics画笔类的对象属性名
    private Graphics2D g;
    public String name = "直线";
    private Color color = Color.red;
    private JFrame frame;

    private Paint[] array;//定义存储图形的数组
    private int index = 0;

    public DrawListener(JFrame frame,Paint[] array) {
        this.frame = frame;
        this.array = array;
    }

    //定义一个带Graphics参数的构造方法
    public void setG(Graphics g) {
        this.g = (Graphics2D) g;
        this.g.setRenderingHint(RenderingHints.KEY_ANTIALIASING,
                RenderingHints.VALUE_ANTIALIAS_ON);// 设置画笔开启抗锯齿
    }

    public void actionPerformed(ActionEvent e) {
        System.out.println("点击的按钮是："+e.getActionCommand());
        if(e.getActionCommand().equals("")) {
            JButton button = (JButton) e.getSource();//获取事件源对象
            color = button.getBackground();//获取背景颜色
        }else {
            name=e.getActionCommand();//获取按钮信息
        }


    }

    public void mouseDragged(MouseEvent e){
        System.out.println("拖动");
        x2 = e.getX();
        y2 = e.getY();
        switch(name) {
            case "铅笔":
                g.setStroke(new BasicStroke(2));//设置线条的粗细
                g.drawLine(x1, y1, x2, y2);//画曲线
                Paint paint = new Paint(x1,y1,x2,y2,color,name,2);//根据图形的数据实例化Paint对象
                if(index<1000)
                    array[index++] = paint;//将数组对象存入到数组中
                x1 = x2;
                y1 = y2;
                break;
            case "刷子":
                g.setStroke(new BasicStroke(10));//设置线条的粗细
                g.drawLine(x1, y1, x2, y2);//画曲线
                Paint pain = new Paint(x1,y1,x2,y2,color,name,10);//根据图形的数据实例化Paint对象
                if(index<1000)
                    array[index++] = pain;//将数组对象存入到数组中
                x1 = x2;
                y1 = y2;
                break;
            case "橡皮":
                color = frame.getContentPane().getBackground();
                g.setColor(color);
                g.setStroke(new BasicStroke(50));
                g.drawLine(x1, y1, x2, y2);//画曲线
                Paint pai = new Paint(x1,y1,x2,y2,color,name,50);//根据图形的数据实例化Paint对象
                if(index<1000)
                    array[index++] = pai;//将数组对象存入到数组中
                x1 = x2;
                y1 = y2;
                break;
            case "喷枪":
                Random rand = new Random();
                for(int i=0;i<10;i++) {
                    int p = rand.nextInt(10);
                    int q = rand.nextInt(10);
                    g.drawLine(x2+p, y2+q, x2+p, y2+q);

                    Paint pa = new Paint(x2+p, y2+q, x2+p, y2+q,color,name);//根据图形的数据实例化Paint对象
                    if(index<1000)
                        array[index++] = pa;//将数组对象存入到数组中
                }
                x1 = x2;
                y1 = y2;
                break;
        }
    }

    public void mouseMoved(MouseEvent e) {
    }

    public void mouseClicked(MouseEvent e) {
        System.out.println("点击");
    }

    public void mousePressed(MouseEvent e) {
        System.out.println("按下");
        //在按下和释放的事件处理方法中获取按下和释放的坐标值
        x1 = e.getX();
        y1 = e.getY();
        g.setColor(color);
    }

    public void mouseReleased(MouseEvent e) {
        System.out.println("释放");
        x2 = e.getX();
        y2 = e.getY();

        //设置画笔的颜色
        //g.setColor(Color.green);
        //g.setColor(new Color(100, 100, 100));
        //根据按下和释放的坐标值，使用Graphics对象进行画图

        g.setStroke(new BasicStroke(1));//设置线条的粗细
        switch(name) {
            case "直线":
                g.drawLine(x1, y1, x2, y2);
                Paint paint = new Paint(x1,y1,x2,y2,color,name,1);//根据图形的数据实例化Paint对象
                if(index<1000)
                    array[index++] = paint;//将图形对象存入到数组中
                break;

            case "矩形":
                g.drawRect(Math.min(x1, x2), Math.min(y1, y2), Math.abs(x1-x2),Math.abs(y1-y2));
                Paint k = new Paint(x1,y1,x2,y2,color,name,1);//根据图形的数据实例化Paint对象
                if(index<1000)
                    array[index++] = k;//将图形对象存入到数组中
                break;

            case "圆":
                g.drawOval(Math.min(x1, x2), Math.min(y1, y2), Math.abs(x1-x2),Math.abs(y1-y2));
                Paint f = new Paint(x1,y1,x2,y2,color,name,1);//根据图形的数据实例化Paint对象
                if(index<1000)
                    array[index++] = f;//将图形对象存入到数组中
                break;

            case "文字":
                g.drawString("大学生需要考四级", x1, y1);
                Paint j = new Paint(x1,y1,x2,y2,color,name,1);//根据图形的数据实例化Paint对象
                if(index<1000)
                    array[index++] = j;//将图形对象存入到数组中
                break;

            case "长方体":
                g.setColor(new Color(100, 200, 100));
                g.fillRect(Math.min(x1, x2), Math.min(y1, y2), Math.abs(x1-x2),Math.abs(y1-y2));
                int a,b,c,d;
                a=Math.min(x1, x2);
                b=Math.max(x1, x2);
                c=Math.min(y1, y2);
                d=Math.max(y1, y2);


                int m=(int)((b-a)*Math.cos(Math.PI/4)*Math.sin(Math.PI/4));
                int n=(int)((b-a)*Math.cos(Math.PI/4)*Math.sin(Math.PI/4));
                //顶面
                g.setColor(Color.green);
                g.fillPolygon(new int[] {a, a+m, b+m,b},new int[] {c,c-n,c-n,c},4);
                //右侧面
                g.setColor(Color.black);
                g.fillPolygon(new int[] {b, b, b+m,b+m},new int[] {c,d,d-n,c-n},4);
                Paint h = new Paint(x1,y1,x2,y2,color,name,1);//根据图形的数据实例化Paint对象
                if(index<1000)
                    array[index++] = h;//将图形对象存入到数组中
                break;
        }
    }

    public void mouseEntered(MouseEvent e) {
        System.out.println("进入");
    }

    public void mouseExited(MouseEvent e) {
        System.out.println("离开");
    }
}




