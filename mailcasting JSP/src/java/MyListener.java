import javax.servlet.*;
import java.sql.*;

/*
public class MyListener implements ServletContextListener{

        @Override
	public void contextInitialized(ServletContextEvent arg0) {
		
		Connection con=null;
	try{
		
		Class.forName("oracle.jdbc.driver.OracleDriver");
		con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","oracle");
                PreparedStatement ps=con.prepareStatement("CREATE TABLE MAILCASTINGUSER(EMAIL VARCHAR2(4000),PASSWORD VARCHAR2(4000),NAME VARCHAR2(4000),GENDER VARCHAR2(4000),MNAME VARCHAR2(4000), COUNTRY VARCHAR2(4000))");
		ps.executeUpdate();
		PreparedStatement ps4=con.prepareStatement("CREATE TABLE INBOX6(ID NUMBER,RECIEVER VARCHAR2(4000),SENDER VARCHAR2(4000),MESSAGE VARCHAR2(4000),DATE_OF_RECEIVING VARCHAR2(4000))");
		ps4.executeUpdate();		
		
		 PreparedStatement ps3=con.prepareStatement("CREATE SEQUENCE RUSHI MINVALUE 1 MAXVALUE 999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE");
		ps3.executeUpdate(); 
                
                Statement stmt=con.createStatement();
	      stmt.executeUpdate("CREATE TRIGGER  BI_INBOX6 before insert on INBOX6 for each row begin select RUSHI.nextval into :NEW.ID from dual;end");
		}	
	    catch(Exception e){
	    	e.printStackTrace();
	    	
	    }
	    }
	    
        @Override
	    public void contextDestroyed(ServletContextEvent arg0) {
		System.out.println("project undeployed");
                
	}
}
*/

public class MyListener implements ServletContextListener
{

        @Override
	public void contextInitialized(ServletContextEvent arg0) 
        {
		Connection con=null;
	try{
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/mysql?user=root&password=root");
                
                PreparedStatement ps=con.prepareStatement("CREATE TABLE MAILCASTINGUSER(ID MEDIUMINT NOT NULL AUTO_INCREMENT,PRIMARY KEY (id),EMAIL VARCHAR(4000),PASSWORD VARCHAR(4000),NAME VARCHAR(4000),GENDER VARCHAR(4000),MNAME VARCHAR(4000), COUNTRY VARCHAR(4000))");
		ps.executeUpdate();
		PreparedStatement ps4=con.prepareStatement("CREATE TABLE INBOX6(ID MEDIUMINT NOT NULL AUTO_INCREMENT,PRIMARY KEY (id),RECIEVER VARCHAR(4000),SENDER VARCHAR(4000),MESSAGE VARCHAR(4000),DATE_OF_RECEIVING VARCHAR(4000))");
		ps4.executeUpdate();		
		
		}	
	    catch(Exception e){
	    	e.printStackTrace();
	    }
	    }
        @Override
	    public void contextDestroyed(ServletContextEvent arg0) 
            {
		System.out.println("project undeployed");
                
	}
}