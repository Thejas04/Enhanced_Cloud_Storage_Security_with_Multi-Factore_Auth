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
							<li ><a href="cloud_page.jsp">Cloud Home</a>
										
							</li>
							
							<li><a href="c_uploads.jsp">Uploaded File</a></li>
							<li class="current"><a href="c_download.jsp">Cloud downloads</a></li>
							<li ><a href="cloud_login.jsp">Log Out</a>
                                                        
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
						<h2 style="color:whitesmoke"><span>Cloud Downloads</span></h2>
					</header>
					
                               </center>
			   <center>
                               <table border="8" width="800px" hieght="1200px" style="text-align: center;background-color:#ffff00">
                   
                       <tr>
                               
                           <th style="color:#660066; font-size:23px;font:bolder" >File Name</th>
                                <th style="color:#660066; font-size:23px;font:bolder">Downloaded By</th>
                             
                                
                                </tr>
                               <br></br>
                         <tr>
                                <%
                                    try {
                                                                       
HttpSession user=request.getSession();
String mail=user.getAttribute("email").toString(); 
                                        Connection con;
                                        Statement st;
                                        ResultSet rs;
                                        con = Dbconn.getConnection();
                                        st = con.createStatement();
                                        rs = st.executeQuery("select * from f_download");
               
                                        while (rs.next()) {
                                             
            %>
                                <td style="font-size:18px;font:bolder"><%=rs.getString("file_name")%></td>
                              
                                <td style="font-size:18px;font:bolder" ><%=rs.getString("down")%></td>
                                <td style="font-size:18px;font:bolder"><%=rs.getString("date")%></td>
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