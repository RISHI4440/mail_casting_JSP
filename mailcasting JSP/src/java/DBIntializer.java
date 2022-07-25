/*
public interface DBIntializer 
{
String DRIVER="oracle.jdbc.driver.OracleDriver";
String CON_STRING="jdbc:oracle:thin:@localhost:1521:xe";
String USERNAME="system";
String PASSWORD="oracle";
}
*/

public interface DBIntializer 
{
String DRIVER="com.mysql.jdbc.Driver";
String CON_STRING="jdbc:mysql://127.0.0.1:3306/mysql";
String USERNAME="root";
String PASSWORD="root";
}