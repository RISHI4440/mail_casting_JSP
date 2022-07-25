import java.sql.*;
import java.util.Calendar;
public class SendMessage {
static int status=0;
static int d=1;
public static int sendMsg(String sender,String reciever,String msg ){
	Connection con=GetCon.getCon();
	java.util.Date sqdate=Calendar.getInstance().getTime();
	java.sql.Date dat =new java.sql.Date(sqdate.getTime());
	try {
		PreparedStatement ps=con.prepareStatement("Insert into INBOX6 values(default,?,?,?,?)");
		
             //   ps.setInt(1,d);
                ps.setString(1,reciever);
                ps.setString(2,sender);		
		ps.setString(3,msg);
		ps.setDate(4,dat);
		status=ps.executeUpdate();
	} catch (SQLException e) {
		e.printStackTrace();
	}
	return status;
}
}
