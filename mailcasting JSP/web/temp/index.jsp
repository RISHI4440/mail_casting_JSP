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
                                                    <img src="Images/frontpgsid.jpg">
							<div class="6u-first">
								<ul class="link-list">
                                                                    
								</ul>
							</div>
						</section>
					</div>
                                    
                                     <div class="4u">
						
						<section>
							
							
								
							<!--		<a href="#"><img src="css/images/pic2.jpg" alt="" class="left" /></a> -->
										 
							
								<!--	<h3 style="color:#007897;"> Login or Signup</h3><br>    -->
								<% 
									if(request.getAttribute("Error")!=null){
									String Error=(String)request.getAttribute("Error");
									out.print("<font style='color:red'>"+Error+"</font>");
									}
									
									if(request.getAttribute("Error1")!=null){
									System.out.print(request.getAttribute("Error1"));
									String Error1=(String)request.getAttribute("Error1");
									out.print("<font style='color:red'>"+Error1+"</font>");
									
									
									}
									if(request.getAttribute("register")!=null){
									System.out.print(request.getAttribute("register"));
									String register=(String)request.getAttribute("register");
									out.print("<font style='color:navy'>"+register+"</font>");
									}
									if(request.getAttribute("logout")!=null){
									System.out.print(request.getAttribute("logout"));
									String logout=(String)request.getAttribute("logout");
									out.print("<font style='color:navy'>"+logout+"</font>");
									}
									
									
									 %>
					
            <!--      (OLD LOGIN FORM)  <form action="LoginServlet" method="post">
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
                                    </form>         --> 
                                  
       <!--     <div id="wrapper">      -->
		
		<form name="login-form" class="login-form" action="" method="post">
		
		<div class="header">
		<h1>Login Form</h1>
		<span>Fill out the form below to login to Mail Services</span>
		</div>
	
		<div class="content">
		<input name="username" type="text" class="input username" placeholder="Username" />
		<div class="user-icon"></div>
		<input name="password" type="password" class="input password" placeholder="Password" />
		<div class="pass-icon"></div>		
		</div>

		<div class="footer">
		<input type="submit" name="submit" value="Login" class="button" />
		<input type="submit" name="submit" value="Register" class="register" />
		</div>
		</form>
<!--	</div>   -->        
                                                
                                               
                                                
                                                </section>
                                                                        </div>
                                     </div>
				
			</div>
		</div>
			</body>
		
	<div id="footer">	
					<div id="copyright">
					<br>	
						<h3>&copy; Copyright 2013,All Rights reserved.....</h3>
		
					</div>
		<br>
				
</div>
	
	<!-- ********************************************************* -->

</html>