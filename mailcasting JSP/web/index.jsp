<!DOCTYPE HTML>
<html>
	<head>
		<title>Mail Services</title>
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<!--5grid--><script src="css/5grid/viewport.js"></script><!--[if lt IE 9]><script src="css/5grid/ie.js"></script><![endif]--><link rel="stylesheet" href="css/5grid/core.css" />
		<link rel="stylesheet" href="css/style.css" />
		<!--[if IE 9]><link rel="stylesheet" href="css/style-ie9.css" /><![endif]-->
                
                <link href="css/loginstyle.css" rel="stylesheet" type="text/css"/>
        
        </head>
	<body>
	<!-- ********************************************************* -->
		<div id="header-wrapper">
			<div class="5grid">
				<div class="12u-first">
					
					<header id="header">
						<h1><a href="#">Mail services</a></h1>
						
					</header>
				
				</div>
			</div>
		</div>

		<div id="main">
			<div class="5grid">
				<div class="main-row">
					<div class="4u-first">
						
						<section>
							<h2>Welcome to Mail services!</h2>
							<p>Hi! This is <strong>Mail Services</strong>, a free service
							You can perform all email operation,Currently  it stores the information in database
							it's free of cost.Let's try it..
							</p>
                                                </section>
					
					</div>
                                    
					<div class="4u">
						<section>
                                              <!--      <img src="Images/frontpgsid.jpg">       -->
							
                                              <img src="Images/email.png">
                                                    
                                                    <div class="6u-first">
								<ul class="link-list">
                                                                    
								</ul>
							</div>
						</section>
					</div>
                                    
                                     <div class="4u">
						
						<section>  
           
                                                    
                                                    
                                                    
                           <!--     (OLD LOGIN FORM)   <form action="LoginServlet" method="post">
                                        <table style="table-layout: fixed">
                                          <tr>
                                              <td>Email id</td>
                                              <td> <input type="text" name="email"></br><br></td>
                                          </tr>               
                                          <tr>
                                              <td>Password:</td>
                                              <td> <input type="password" name="password"></br><br></td>
                                          </tr>  
                                          <tr>
                                              <td></td>
                                              <td><input type="submit" value="Sign in">&nbsp &nbsp &nbsp  &nbsp  &nbsp  <a href="Register.jsp">Signup</a> </td>   
                                          </tr>
                                        </table>
                                    </form>        -->
		
		<form name="login-form" class="login-form" action="LoginServlet" method="post">
		
	<div class="header">
		<h1>Login or Signup</h1>
		<!-- <span>Fill out the form below to login to Mail Services</span> -->
                 
                                      <span>                                
                                                                <%
									if(request.getAttribute("Error")!=null){
									String Error=(String)request.getAttribute("Error");
									out.print("<h5><font style='color:red'>"+Error+"</font></h5>");
									}
									
									if(request.getAttribute("Error1")!=null){
									System.out.print(request.getAttribute("Error1"));
									String Error1=(String)request.getAttribute("Error1");
									out.print("<h5><font style='color:red'>"+Error1+"</font></h5>");
									
									}
									if(request.getAttribute("register")!=null){
									System.out.print(request.getAttribute("register"));
									String register=(String)request.getAttribute("register");
									out.print("<h5><font style='color:navy'>"+register+"</font></h5>");
									}
									if(request.getAttribute("logout")!=null){
									System.out.print(request.getAttribute("logout"));
									String logout=(String)request.getAttribute("logout");
									out.print("<h5><font style='color:navy'>"+logout+"</font></h5>");
									}
									
									
									%>
                                                         
        
                                                                        </span>
        </div>
	
	<div class="content">
		<input name="email" type="text" class="input username" placeholder="Username" />
		<div class="user-icon"></div>
		<input name="password" type="password" class="input password" placeholder="Password" />
		<div class="pass-icon"></div>		
	</div>

		<div class="footer">
		<input type="submit" name="submit" value="Login" class="button" />
                <br>
               <!-- <input type="submit" name="submit" value="Register" class="register" />     -->
		
               <a href="Register.jsp">Register</a>
                </div>
		</form>  
                          
                                                </section>
                                         </div>
                                     </div>
				
			</div>
		
			</body>
		
                 <div id="footer">	
					<div id="copyright">
					<br>	
						<h4>&copy; Copyright 2013,All Rights reserved.....</h4>
		
					</div>
		<br>
				
</div>
	
    <!-- ********************************************************* -->

</html>