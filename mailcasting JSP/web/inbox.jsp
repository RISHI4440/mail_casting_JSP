<%@page import="java.sql.*" %>
<head>
<link href="css/tablestyle.css" rel="stylesheet" type="text/css"/>
<script>

var request;
function viewAll(name)
{
var v=name;
var url="delete.jsp?val="+v;

if(window.XMLHttpRequest){
request=new XMLHttpRequest();
}
else if(window.ActiveXObject){
request=new ActiveXObject("Microsoft.XMLHTTP");
}

try
{
request.onreadystatechange=getAllInfo;
request.open("GET",url,true);
request.send();
}
catch(e){alert("Unable to connect to server");}
}

function getAllInfo(){
if(request.readyState==4){
var val=request.responseText;
document.getElementById('bottom').innerHTML=val;
}
}

</script>
</head>


<jsp:include page="header.jsp"></jsp:include>
<div id="main">
	 	<div class="5grid">   
		<div class="main-row">      
	 <!--	<div class="4u-first">
		
                   <section>
                                    <h2>INBOX</h2>
                                    <img src="Images/gmail-logo-icon.png"> 
                   </section>
					
		</div>               <div class="4u>             -->
					
                                    
                                    <div class="4u">  
					<h2>INBOX</h2>				
<% 
									
            if(session.getAttribute("username")!=null)
            {
                  String username=(String)session.getAttribute("username");		
                  out.print("<h4 font style='color:#007897'>Welcome "+username+"</font> </h4> <br> ");
             //      out.print("");
                  if(request.getAttribute("delete")!=null)
                  {
                    	String delete=(String)session.getAttribute("username");		
                	out.print("<font style='color:navy'>"+delete+"</font>");
                  }
            
                 try 
                {
                  //  Class.forName("oracle.jdbc.driver.OracleDriver");
                 // Connection con= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","oracle");
                   
                  Class.forName("com.mysql.jdbc.Driver");
                  Connection con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/mysql?user=root&password=root");
                  
                    PreparedStatement ps=con.prepareStatement("Select * from INBOX6 where RECIEVER=?");
                    ps.setString(1,username);
                    ResultSet rs=ps.executeQuery();
             //    out.print("<div id='bottom'></div>");
			
		
                out.print("<table class='box-style'>");     //border=4 cellspacing='4' cellpadding='5' width='1150px'align='center'>");
          //      out.print("<table class='box-style'>"); // border=4 cellspacing='4' cellpadding='5' width='1150px'align='center'>");
                
        //	out.print("<thead>");
                out.print("<tr >"
                        + "<th scope='col' width='140px'>SENDER</th> "
                        + "<th scope='col'>MESSAGE</th> "
                        + "<th scope='col'width='160px'>DATE OF RECIEVING</th> "
                        + "<th scope='col' width='80px'>DELETE</th> </tr>");
        //	out.print("</thead>");
                
                while(rs.next())
                {
                    int id=rs.getInt(1);
                    System.out.print(id);
             //      out.print("<tbody"); 
                    out.print("<tr>");
                    out.print("<td align='center'>" + rs.getString(3) + "</td>");
                 
                    out.print("<td align='center'>" + rs.getString(4) + "</td>");
                   
                    out.print("<td align='center'>" + rs.getString(5) + "</td>");  //out.print("<td>" + rs.getString(4) + "</td>");     //out.print("<td>" DeleteServlet.Del`"</td>");
                    out.print("<td align='center'><a href='delete.jsp?val="+rs.getInt(1)+"'> Delete</a></td>");
                    
                    out.print("</tr>");
           //        out.print("</tbody"); 
               
                  
                }
                     out.print("</table>"); 
                    
		} 
                 catch (SQLException e) 
                 {
            		e.printStackTrace();
		}
	}
        else
        {
		request.setAttribute("Error1","Plz Do login First");
		%>
		<jsp:forward page="index.html"></jsp:forward>
		<%
									
	}
		%>
                                  
         
                                    </div>
                </div>	
                </div>	
			
                <br><br><br><br><br><br><br><br><br><br><br>
</div>
		

 <jsp:include page="footer.html"></jsp:include>