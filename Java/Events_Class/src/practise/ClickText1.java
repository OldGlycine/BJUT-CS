package practise;

import java.awt.*;
import java.awt.event.*;
import javax.swing.*;

public class ClickText1 extends JFrame{
    public ClickText1()
    {
        super("鼠标事件处理");
        JButton btnMouse = new JButton("测试鼠标事件");
        btnMouse.addMouseListener(new MyMouseListener());
        btnMouse.addMouseMotionListener(new MyMouseMotionListener());
        Container contentPane = getContentPane();
        contentPane.setLayout(new FlowLayout());
        contentPane.add(btnMouse);
        this.setSize(200, 100);
        this.setVisible(true);
    }

    public static void main(String[] args)
    {
        ClickText1 frm = new ClickText1();
        frm.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
    }

    // 监听器类
    static class MyMouseListener extends MouseAdapter
    {
        public void mouseClicked(MouseEvent e)
        {
            if(e.getClickCount() == 2)
                System.out.println("你正在双击鼠标，双击666");
        }

        public void mouseEntered(MouseEvent e)
        {
            System.out.println("鼠标进入组件区域");
        }
    }

    static class MyMouseMotionListener extends MouseMotionAdapter
    {
        public void mouseMoved(MouseEvent e)
        {
            System.out.println("鼠标组件区域内移动");
        }
    }
}
