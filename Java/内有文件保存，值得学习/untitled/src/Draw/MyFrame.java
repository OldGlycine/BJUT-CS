package Draw;

import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
import java.awt.geom.Line2D;
import java.io.File;
import java.awt.Graphics;
import java.awt.Image;
import java.awt.image.BufferedImage;
import java.io.IOException;
import javax.imageio.ImageIO;
import javax.swing.JFrame;
import javax.swing.JPanel;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
public class MyFrame extends JFrame{
	 int r=0,g1=0,b=0;
	 float w=1;
	 int x1,x2,y1,y2,flag;
	 private JFileChooser chooser;
	 private JLabel label;
	 private static final int DEFAULT_WIDTH = 300;
	 private static final int DEFAULT_HEIGHT = 400;
	 private FileDialog openDia, saveDia;// 定义“打开、保存”对话框
	  private File file;//定义文件
	  public MyFrame(){
		  chooser = new JFileChooser();
			chooser.setCurrentDirectory(new File("."));
			saveDia = new FileDialog(this, "保存", FileDialog.SAVE);
	       setSize(800,600);
	       setTitle(" windows dsflfdjls");
	       JButton  b1,b2,b3,b4,b5,b6;    
		   JMenuBar menuBar=new JMenuBar();
	       JMenu fileMenu =new JMenu("文件");
	       JMenu colorMenu =new JMenu("颜色");
	       JMenu wideMenu =new JMenu("粗细");
	       JMenuItem newMenuItem = new JMenuItem("新建");
	       JMenuItem openMenuItem = new JMenuItem("打开");
	       JMenuItem saveMenuItem = new JMenuItem("保存");
	       JMenuItem exitMenuItem = new JMenuItem("退出");
	       JMenuItem changecolor= new JMenuItem("更改颜色");
	       JMenuItem changewide= new JMenuItem("更改粗细");
		   JPanel j1=new JPanel();
		   getContentPane().add(j1,BorderLayout.NORTH);
		   //setLayout(new BorderLayout());
		   JPanel j2=new JPanel();  
		   JPanel j3=new JPanel();
		   label =new JLabel();
		   j3.add(label);
		   getContentPane().add(j2,BorderLayout.SOUTH);
		   getContentPane().add(j3,BorderLayout.CENTER);
	       menuBar.add(fileMenu);
	       menuBar.add(colorMenu);
	       menuBar.add(wideMenu);
	        //fileMenu.add(newMenuItem);
	        fileMenu.add(openMenuItem);
	        fileMenu.add(saveMenuItem);
	        fileMenu.addSeparator();       // 添加一条分割线
	        fileMenu.add(exitMenuItem);
	        colorMenu.add(changecolor);
	        wideMenu.add(changewide);
	        setJMenuBar(menuBar);
	        setVisible(true);
	        openMenuItem.addActionListener(new ActionListener() {
				
				@Override
				public void actionPerformed(ActionEvent e1) {
					// TODO Auto-generated method stub
					 int result = chooser.showOpenDialog(null);
					 if(result == JFileChooser.APPROVE_OPTION){
						// label =new JLabel();
						 String name = chooser.getSelectedFile().getPath();
	                   label.setIcon(new ImageIcon(name));
	                   
					 }
				}
			});
	        saveMenuItem.addActionListener(new ActionListener() {
				
				@Override
				public void actionPerformed(ActionEvent e) {
					// TODO Auto-generated method stub
					if (file == null) {
	                    saveDia.setVisible(true);//显示保存文件对话框
	                    String dirpath = saveDia.getDirectory();//获取保存文件路径并保存到字符串中。
	                    String fileName = saveDia.getFile();////获取打保存文件名称并保存到字符串中
	                    
	                    if (dirpath == null || fileName == null)//判断路径和文件是否为空
	                        return;//空操作
	                    else
	                        file=new File(dirpath,fileName);//文件不为空，新建一个路径和名称
	                }
	                    try {
	                        BufferedWriter bufw = new BufferedWriter(new FileWriter(file));
	                        
	                       
	                        bufw.close();//关闭文件
	                    } catch (IOException e1) {
	                        //抛出IO异常
	                        e1.printStackTrace();
	                    }
	                

	            }
				
			});
	        changecolor.addActionListener(new ActionListener() {
				
				@Override
				public void actionPerformed(ActionEvent e) {
					// TODO Auto-generated method stub
					String R=JOptionPane.showInputDialog("请输入R:");
					String G=JOptionPane.showInputDialog("请输入G:");
					String B=JOptionPane.showInputDialog("请输入B:");
					r=Integer.parseInt(R);
					g1=Integer.parseInt(G);
					b=Integer.parseInt(B);
				}
			});
	        changewide.addActionListener(new ActionListener() {
				
				@Override
				public void actionPerformed(ActionEvent e) {
					// TODO Auto-generated method stub
					String W=JOptionPane.showInputDialog("请输入粗细:");
					w=Float.valueOf(W).floatValue();
				}
			});
		    		j3.setBackground(Color.white);
		    		
		    		JTextField t=new JTextField(10);
		    		j1.add(t);
		    		b1=new JButton("文本输出");
		    		j1.add(b1);
		    		b2=new JButton("清空");
		    		j1.add(b2);
		    		b3=new JButton("徒手绘画");
		    		j2.add(b3);
		    		b4=new JButton("画矩形");
		    		j2.add(b4);
		    		b5=new JButton("画线");
		    		j2.add(b5);
		    		b6=new JButton("画圆");
		    		j2.add(b6);
		    		
		            b1.addActionListener(  new ActionListener( ){
		                public void actionPerformed(ActionEvent e)
		                   {  flag=1; 
		                  // repaint(); 清除画板
		                   }        });
		            b2.addActionListener(  new ActionListener( ){
		                public void actionPerformed(ActionEvent e)
		                   {  flag=2; 
		                   repaint(); 
		                   label.setIcon(new ImageIcon());
		                  // j3.remove(label);
		                   }        });
		            b3.addActionListener(  new ActionListener( ){
		                public void actionPerformed(ActionEvent e)
		                   {  flag=3; 
		                   //repaint();
		                   }        }); 
		            b4.addActionListener(  new ActionListener( ){
		                public void actionPerformed(ActionEvent e)
		                   {  flag=4; 
		                   //repaint();
		                   }        });     
		             b5.addActionListener(  new ActionListener( ){
		                public void actionPerformed(ActionEvent e)
		                   {  flag=5; 
		                   //repaint();
		                   }        }); 
		             b6.addActionListener(  new ActionListener( ){
		                 public void actionPerformed(ActionEvent e)
		                    {  flag=6; 
		                    //repaint();
		                    }        }); 
		             addMouseListener(new MouseAdapter() {   
		                 public void mousePressed(MouseEvent event){  
		                     x1=event.getX();           y1=event.getY();//徒手绘画起点

		                 }
		                 public void mouseReleased(MouseEvent event) {
		                           Graphics2D g=(Graphics2D)getGraphics();
		                           x2=event.getX();  
		                           y2=event.getY();
		                           g.setColor(new Color(r,g1,b));
		                           Stroke stroke=new BasicStroke(w);
		                           g.setStroke(stroke);
		                           if (flag==6)    {
		                             g.drawOval(x1, y1, x2-x1,y2-y1);   //画圆、椭圆
		                            }
		                         if (flag==4) {  
		                               g.drawRect(x1, y1, x2-x1, y2-y1); //画矩形
		                           }	
		                          if (flag==5) {  
		                               g.drawLine(x1, y1, x2, y2); //画线
		                           }	
		                          if(flag==1) {
		                        	  String s;
		                        	  s=t.getText();
		                        	  g.drawString(s, x1, y1);
		                          }
		                        }
		                 }); 
		            
		             addMouseMotionListener(new MouseMotionAdapter(){             
		                 public void mouseDragged(MouseEvent event){  
		                        x2=event.getX();         
		                        y2=event.getY();
		                        Graphics2D g=(Graphics2D)getGraphics();
		                        g.setColor(new Color(r,g1,b));
		                        Stroke stroke=new BasicStroke(w);
		                           g.setStroke(stroke);
		                       if(flag==3) {      
		                    	   g.drawLine(x1, y1, x2,y2);
		                       x1=x2;
		                       y1=y2;
		                       }
		                  }
		          });
		    	
		    
	 }

}























