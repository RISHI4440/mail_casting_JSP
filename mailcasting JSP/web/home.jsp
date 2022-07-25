<jsp:include page="header.jsp"></jsp:include>
<div id="main">
			<div class="5grid">
				<div class="main-row">
					<div class="4u-first">
						
						<section>
							<h2><font size="6px"> Welcome to Home of Mail Services!</font></h2>
                                                        <img src="Images/homelogo.jpg "> 
                                                        
							
						</section>
					
					</div>
					<div class="4u">
						
						
                              <section>
                                <ul class="small-image-list">	
				<li>
                                   
                                    <!--CENTER   --->
                                    
                                    
                                </li>	   
                                
                                
                        <!--        <li>
						<marquee direction="up">
						<font style="color: navy;">
                                                
                                                                <h5>Do any kind of operation related to <br>
								Mail Services Such as Compose mail,<br>
								Inbox,And if you have Any Query just<br>
								Contact Us .... <br>
                                                                Navigate by clicking above Links ..</h5></font></marquee>
                                             
                                  </li>    --->
					
                                                       
                                </ul>
						</section>
                       
					</div>
					<div class="4u">
					
						<section>       <!-- RIGHT SIDE SECTION --->
							  
                                                    
                                                    
                                                    
							
                                         <div>
            <% 
                if(session.getAttribute("username")!=null)
                {
                    String username=(String)session.getAttribute("username");		
                    out.print("<h3> <font style='color:#007897'>Wellcome.. "+username+"</font></h3>");
		}
		else
                {
                    request.setAttribute("Error1","Plz Do login First");
                 %>
                    <jsp:forward page="index.jsp"></jsp:forward>
		<%
                }
		%>
                       </div>
                                                        <img src="Images/im-msn.png">   
                                                        
                                                        
                                                        
                                                        
                                                        <div class="6u-first">
							
									
                                                                  
                                                                    
								
							</div>
							
						</section>

					</div>
				</div>
				
			</div>
		</div>

<jsp:include page="footer.html"></jsp:include>