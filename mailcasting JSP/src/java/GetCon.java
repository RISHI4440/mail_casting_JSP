import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/*
public class GetCon 
{
private GetCon(){}

public static Connection con;
static
{
	try {
		Class.forName(DBIntializer.DRIVER);
		con=DriverManager.getConnection(DBIntializer.CON_STRING,DBIntializer.USERNAME,DBIntializer.PASSWORD);
	} catch (ClassNotFoundException e) {
		
		e.printStackTrace();
	} catch (SQLException e) {
	
		System.out.println("Exception in GetCon");
	}
	
}
public static Connection getCon(){
	return con;
}
}

*/

public class GetCon 
{
private GetCon(){}

public static Connection con;
static
{
	try {
		Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/mysql?user=root&password=root");
	} 
        catch (ClassNotFoundException e) 
        {
		
		e.printStackTrace();
	} catch (SQLException e) 
        {
	
		System.out.println("Exception in GetCon");
	}
	
}
public static Connection getCon(){
	return con;
}
}