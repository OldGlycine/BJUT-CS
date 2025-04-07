package practise1;

import javax.swing.*;
import java.awt.event.*;
import java.awt.*;
import java.awt.geom.Ellipse2D;
import java.awt.geom.Line2D;
import java.awt.geom.Point2D;


class ClockPanelClass extends JPanel{
    private double minutes = 0;
    private double radius = 100;
    private double minutes_hand_length = 0.8 * radius;
    private double hours_hand_length = 0.6 * radius;

    public void paintComponent(Graphics g){
        super.paintComponent(g);
        Graphics2D g2 = (Graphics2D) g;
        Ellipse2D circle = new Ellipse2D.Double(0, 0, 2*radius, 2*radius);
        double hourAngle = Math.toRadians(90 - 360*minutes/(12*60));
        drawHand(g2, hourAngle, minutes_hand_length);
        double minuteAngle = Math.toRadians(90 - 360*minutes/60);
        }
    public void drawHand(Graphics2D g2, double angle, double handLength){
        Point2D end = new Point2D.Double(radius + handLength * Math.cos(angle),
                radius - handLength * Math.sin(angle));
        Point2D center = new Point2D.Double(radius, radius);
        g2.draw(new Line2D.Double(center, end));
    }

    public void setTime(int h, int m){
        minutes = h *60 + m;
        repaint();
    }
}
class clock1 extends JFrame implements ActionListener{
    private JTextField hourField;
    private JTextField minuteField;
    private ClockPanelClass clock;

    public clock1()
    {
        setTitle("JTextField使用范例");
        Container contentPane = getContentPane();
        JPanel panel = new JPanel();
        hourField = new JTextField("12", 3);
        panel.add(hourField);
        hourField.addActionListener(this);
        minuteField = new JTextField("00", 3);
        panel.add(minuteField);
        minuteField.addActionListener(this);
        contentPane.add(panel, BorderLayout.SOUTH);
        clock = new ClockPanelClass();
        contentPane.add(clock,BorderLayout.CENTER);
        setSize(210, 280);
        setVisible(true);
        setResizable(false);
    }

    public void setClock(){
        int hours = Integer.parseInt(hourField.getText().trim());
        int minutes = Integer.parseInt(minuteField.getText().trim());
        clock.setTime(hours, minutes);
    }

    public void actionPerformed(ActionEvent e){
        setClock();
    }



}
public class clock{
    public static void main(String[] args){
        clock1 clock = new clock1();
        clock.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
    }
}