<%@page import="DatabaseConnectivity.Dbconn"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">
	<head>
	<title>Fine Grained</title>
	<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<link rel="stylesheet" href="css/main.css" />
	</head>
<body class="is-preload">
  
		<!-- Header -->
			<header id="header">
				<a class="logo" href="index1.html">ADAVANCED KEYWORD</a>
				<nav>
                                    <a href="#menu"><b>Menu</b></a>
				</nav>
			</header>

		<!-- Nav -->
			<nav id="menu">
                           
				<ul class="links">
							<li class="current"><a href="authority_page.jsp">Manager Home</a>
										
							</li>
							<li><a href="userdetails.jsp">User Details</a></li>
							<li><a href="f_upload.jsp">File Upload</a></li>
							<li><a href="f_request.jsp">File Secret Key</a></li>
							<li><a href="authority_login.jsp">Log Out</a>
                                                        
                                                        
								</li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
	</div>
</header>

<!--=======content================================-->


<section id="banner">
				<div class="inner">
			 <center>
                                <header>
						<h2 style="color:whitesmoke"><span>Employee Details </span></h2>
					</header>
					
                               </center>
			   <center>
                               <table border="8" width="1000px" hieght="1200px" style="text-align: center;background-color:lightblue;color:black;">
                   
                       <tr>
                               
       <th style="color:#660066; font-size:23px;font:bolder;text-align:center;" >UserName</th>
                                <th style="color:#660066; font-size:23px;font:bolder;text-align:center;">Name</th>
                                <th style="color:#660066; font-size:23px;font:bolder;text-align:center;">Password</th>
                                <th style="color:#660066; font-size:23px;font:bolder;text-align:center;">Email</th>
                                <th style="color:#660066; font-size:23px;font:bolder;text-align:center;">MobileNo</th>
                                
                               </tr>
                               <br></br>
                         <tr>
                                <%
                                    try {
                                                                       

                                        Connection con;
                                        Statement st;
                                        ResultSet rs;
                                        con = Dbconn.getConnection();
                                        st = con.createStatement();
                                        rs = st.executeQuery("select * from register  ");
                                        while (rs.next()) {
                                             
            %>
                                <td style="font-size:18px;font:bolder"><%=rs.getString("username")%></td>
                              
                                <td style="font-size:18px;font:bolder" ><%=rs.getString("name")%></td>
                                <td style="font-size:18px;font:bolder"><%=rs.getString("password")%></td>
                                  <td style="font-size:18px;font:bolder"><%=rs.getString("mail")%></td>
                                   <td style="font-size:18px;font:bolder"><%=rs.getString("phoneno")%></td>
                               
                                 
                               </tr>
                            <%}
                                } catch (Exception ex) {
                                    ex.printStackTrace();
                                }
                            %>
                        </table>
               </center>
            
                   
                            
         
				</div>
		
                           <video autoplay loop muted playsinline src="images/banner.mp4"></video>
</section>

		

             
       

<!-- Scripts -->

			<script src="js/jquery.min.js"></script>
			<script src="js/browser.min.js"></script>
			<script src="js/breakpoints.min.js"></script>
			<script src="js/util.js"></script>
			<script src="js/main.js"></script>


</script>
</body>
</html>