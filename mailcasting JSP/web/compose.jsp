<jsp:include page="header.jsp"></jsp:include>
<link rel="stylesheet" href="css/messtyle.css" />
<div id="main">
			<div class="5grid">
				<div class="main-row">
					<div class="4u-first">
						
						<section>
							<h2>Compose Mail!</h2>
							<img src="Images/Gmail-Icon.png">
							
						</section>
					
					</div>
					<div class="4u">
						
						<section>
							
							<ul class="small-image-list">
								
					<li>
									<div>
									<% 
									
								if(session.getAttribute("username")!=null){
								String username=(String)session.getAttribute("username");		
								out.print("<font style='color:#007897'>Welcome "+username+"</font>");
								}
								else{
								request.setAttribute("Error1","Plz Do login First");
								%>
								<jsp:forward page="index.jsp"></jsp:forward>
									<%}
								%>
								<% 
								if(request.getAttribute("compose")!=null){
								String compose= (String)request.getAttribute("compose");
								out.print("<font style='color:navy'>"+compose+"</font>");
								}
								if(request.getAttribute("composeerr")!=null){
								String composeerr= (String)request.getAttribute("composeerr");
								out.print("<font style='color:navy'>"+composeerr+"</font>");
								}
								%>
								
								
									</div>
						</li>	
						<font style='color:#007897'><h4>Compose Message</h4> </font>
                                                
                            <!--                    <form action="ComposeServlet" >
						<table>
			 	
                                                    <tr><td>To: <input type="text" name="reciever_id"/><br/></td></tr>
			 	
                                                    <tr><td>Message:<br/></td></tr>
			 	
                                                    <tr><td><textarea rows="10" cols="50" name="message"></textarea><br/></td></tr>
			 	
                                                    <tr><td><input type="submit" value="Send"/></td></tr>
			 	
			 	
                                                </table>
                                                </form>             -->
                                                       
                                                        
                                                        <form class="form" action="ComposeServlet">  
                                                            <p class="email">  
                                                                      <input type="text" name="reciever_id" id="email" />  
                                                                     <label for="email">Send To</label>  
                                                               </p> 
	                                                              <p class="name">  
                                                                  <input type="text" name="subject" id="name" />  
                                                                    <label for="name">Subject</label>  
                                                              </p> 
	                                                            <p class="text">  
                                                                   <textarea name="message"></textarea>  
                                                              </p>  
                                                               <p class="submit">  
                                                                    <input type="submit" value="Send" />  
                                                              </p>  
                                                          </form>

                                                        </span>
								
							</ul>
						</section>
					
					</div>
					<div class="4u">
					
						<section>
							
                                                    
                                                    
                                                    
                                                    
                                                    
                                                    
							
						</section>

					</div>
				</div>
				
			</div>
		</div>

<jsp:include page="footer.html"></jsp:include>