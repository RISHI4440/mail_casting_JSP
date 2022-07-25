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
	
                 <link rel="stylesheet" href="css/regstyle.css">   
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
							<h2>Get Registered for new Account!</h2>
							<p>Get your new account now on <strong> Mail Services</strong>for today free.
							
							It's free of cost,and always will be. Let's try it.....
							</p>
							
						</section>
					
					</div>
					<div class="4u">
						
                                            <section>
                                                   
                                                                             
									
									
                                                      
                     <!--    (OlD Form)                                 <form action="RegisterServlet" >
									<table style="table-layout: fixed;">
					
                                                                            <tr><td>EmailId:</td><td> <input type="text" name="email"/><br/><br/></td></tr>
					
                                                                            <tr><td>Password: </td><td><input type="password" name="password"/><br/><br/></td></tr>
					
                                                                            <tr><td>Name: </td><td><input type="text" name="name"/><br/><br/></td></tr>
					
                                                                            <tr>
                                                                                <td>Gender:</td>
                                                                               
                                                                                <td> Male<input type="radio" name="gender" value="male">
																					Female<input type="radio" name="gender" value="female"/>
																					
																					<br/><br/></td></tr>
				
                                                                            <tr><td>Contact Number:</td><td> <input type="text" name="mname"/><br/><br/></td></tr>
				
                                                                            <tr><td>Country: </td><td><input type="text" name="country"/><br/><br/></td></tr>
				
                                                                            <tr><td></td><td><input type="submit" value="Submit"/></td></tr>
				
                                                                        </table>
                                                                        </form>           -->
                                                                       
                                                                        <h2 class="register-title">Sign Up</h2>
                                                                    <form class="register" action="RegisterServlet">
                                                                        <input type="text" name="name" class="register-input" placeholder="Name">
  
                                                                        <input type="text" name="email" class="register-input" placeholder="Email address">
  
                                                                        <input type="password" name="password" class="register-input" placeholder="Password">
                                                                        <div class="register-switch">
                                                                            <input type="radio" name="gender" value="male" id="sex_m" class="register-switch-input">
                                                                            <label for="sex_m" class="register-switch-label">Male</label>
                                                                            <input type="radio" name="gender" value="female" id="sex_f" class="register-switch-input" checked>
	
                                                                            <label for="sex_f" class="register-switch-label">Female</label>
                                                                        </div>
                                                                        <input type="text" name="mname" class="register-input" placeholder="Contact Number">
                                                                        <input type="text" name="country" class="register-input" placeholder="Country">
                                                                       
                                                                        <span>
									<% 
									if(request.getAttribute("registererror")!=null){
									String msg=(String)request.getAttribute("registererror");
									out.print("<font style='color:red'>"+msg);
									out.print("</font><br/>");
									}
									%>
                                                                        </span>
                                                                        <input type="submit" value="Create Account" class="register-button">
                                                                    </form>
                                                                 
                                                                       
                                                                         
                                                                        </section>
					
					</div>
					<div class="4u">
					
						<section>
							
                                                    <img src="Images/mail.png">
							
						</section>

					</div>
				</div>
				
			</div>
		</div>
			</body>
		
	<div id="footer">	
					<div id="copyright">
					<br>
				
						<h4>&copy; Copyright 2013,All Rights reserved....</h4>
		
					</div>
		<br>
				
</div>
	
	<!-- ********************************************************* -->

</html>