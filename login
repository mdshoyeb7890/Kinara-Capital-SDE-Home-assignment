import java.awt.Color;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;

import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JTextField;

import com.mysql.jdbc.Statement;


public class Student_Login extends JFrame 
   {
	JLabel l1,l2,l3,l4,l5,l6,l7,l8;
   JTextField t1,t2,t3,t4,t5,t6,t7,t8;
   JButton bt1,bt2;
   
   public New_Customer() 
   {
	   
	   setLayout(null);
	  
	   
	   /*--------------Name --------------------*/
	   l1=new JLabel("Name");
	   l1.setBounds(100,100,50,30);
	   t1=new JTextField();
	   t1.setBounds(200,100,150,30);
	   add(t1);
	   add(l1);
	   
	   /*-------------Roll Number---------------*/
	   l2=new JLabel("Roll Number");
	   t2=new JTextField();
	   l2.setBounds(100,150,150,30);
	   t2.setBounds(200,150,150,30);
	   add(l2);
	   add(t2);
     
     /*--------------Marks-------------------*/
	    l8=new JLabel("total marks");
	   t8=new JTextField();
	   l8.setBounds(100,150,150,30);
	   t8.setBounds(200,150,150,30);
	   add(l8);
	   add(t8);
     
	   /*---------------Address---------------*/
	   l3=new JLabel("Address");
	   t3=new JTextField();
	   l3.setBounds(100,200,150,30);
	   t3.setBounds(200,200,150,30);
	   add(l3);
	   add(t3);
	   
	   /*-------------State----------------*/
	   l4= new JLabel("State");
	   t4=new JTextField();
	   l4.setBounds(100,250,150,30);
	   t4.setBounds(200,250,150,30);
	   add(l4);
	   add(t4);
	   
	   /*-------------city----------------*/
	   l5= new JLabel("city");
	   t5=new JTextField();
	   l5.setBounds(100,300,150,30);
	   t5.setBounds(200,300,150,30);
	   add(l5);
	   add(t5);
	   /*-------------Email----------------*/
	   l6= new JLabel("email");
	   t6=new JTextField();
	   l6.setBounds(100,350,150,30);
	   t6.setBounds(200,350,150,30);
	   add(l6);
	   add(t6);
	   
	   /*------------phone----------------*/
	   l7= new JLabel("Phone");
	   t7=new JTextField();
	   l7.setBounds(100,400,150,30);
	   t7.setBounds(200,400,150,30);
	   add(l7);
	   add(t7);
	   
	   /*--------------Submit------------------*/
	   bt1=new JButton("SUBMIT");
	   bt1.setBounds(250,450,100,30);
	   bt1.setForeground(Color.WHITE);
	   bt1.setBackground(Color.black);
	   add(bt1);
	   bt2=new JButton("CANCEL");
	   bt2.setBounds(100,450,100,30);
	   bt2.setForeground(Color.WHITE);
	   bt2.setBackground(Color.black);
	   add(bt2);
	
	   bt1.addActionListener(new ActionListener() {
		
		@Override
		public void actionPerformed(ActionEvent arg0) {
			String a=t1.getText();
			String b=t2.getText();
      String h=t8.getText();
			String c=t3.getText();
			String d=t4.getText();
			String e=t5.getText();
			String f=t6.getText();
			String g=t7.getText();
			
			if(a.equals(""))
				JOptionPane.showMessageDialog(null,"please fill the name");
			
			else if(b.equals(""))
				JOptionPane.showMessageDialog(null,"please fill the Roll number");
        
        else if(h.equals(""))
				JOptionPane.showMessageDialog(null,"please fill the Marks");
			
			else if(c.equals(""))
				JOptionPane.showMessageDialog(null,"please fill the address");
			
			else if(d.equals(""))
				JOptionPane.showMessageDialog(null,"please fill the state");
			
			else if(e.equals(""))
				JOptionPane.showMessageDialog(null,"please fill the city");
			
			else if(f.equals(""))
				JOptionPane.showMessageDialog(null,"please fill the Email");
			
			else if(g.equals(""))
				JOptionPane.showMessageDialog(null,"please fill the Phone number");
			

		    String q1 = "insert into emp values('"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+f+"','"+g+"')";
		    Connection con;
			Statement statement = null;
			ResultSet set;
			try
			{	
				Class.forName("com.mysql.jdbc.Driver");
				 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project2","root","root");
				statement=(Statement) con.createStatement();
			     statement.executeUpdate(q1);
			     if(a.equals(""))
			    	 JOptionPane.showMessageDialog(null,"please Enter The name");
			    	 
			     JOptionPane.showMessageDialog(null,"Employee Created" );
		              }
		    		catch (Exception ex) 
		    		{
						ex.printStackTrace();
					}
	
		}
	});
	   bt2.addActionListener(new ActionListener() {
		
		@Override
		public void actionPerformed(ActionEvent arg0) {
			// TODO Auto-generated method stub
			dispose();
			
		}
	});
	   setVisible(true);
	   setSize(2000,1000);
   }
   
   public static void main(String[] args) 
   {
	new Strudent_Login().setVisible(true);
   }
	
}
