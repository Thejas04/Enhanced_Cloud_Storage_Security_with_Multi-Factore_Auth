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
							<li class="current"><a href="trustee_page.jsp">Home</a>
										
							</li>
							<li><a href="file_view.jsp">View File</a></li>
							<li><a href="file_issue.jsp">File Security Response</a></li>
							<li><a href="trustee_login.jsp">Log Out</a>
                                                        
                                                        
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
						<h2 style="color:whitesmoke"><span>File Security Response </span></h2>
					</header>
					
                               </center>
			   <center>
                               <table border="8" width="1000px" hieght="1200px" style="text-align: center;background-color:lightblue;color:black">
                   
                       <tr>
                               
                           <th style="color:#660066; font-size:23px;font:bolder" >File Name</th>
                                <th style="color:#660066; font-size:23px;font:bolder">Uploaded On</th>
                                <th style="color:#660066; font-size:23px;font:bolder">Size</th>
                                  <th style="color:#660066; font-size:23px;font:bolder">Requested By</th>
                                <th style="color:#660066; font-size:23px;font:bolder">Status</th>
                              
                                <th style="color:#660066; font-size:23px;font:bolder">Response</th>
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
                                        rs = st.executeQuery("select * from trustee where status='request' ");
                                        while (rs.next()) {
                                             
            %>
                                <td style="font-size:18px;font:bolder"><%=rs.getString("file_name")%></td>
                              
                                <td style="font-size:18px;font:bolder" ><%=rs.getString("date")%></td>
                                <td style="font-size:18px;font:bolder"><%=rs.getString("size")%></td>
                                  <td style="font-size:18px;font:bolder"><%=rs.getString("request")%></td>
                                 <td style="font-size:18px;font:bolder"><%=rs.getString("trust")%></td>
                               
                                 <td style="font-size:18px;font:bolder;color:whitesmoke"><a href="security_reponse.jsp?fname=<%=rs.getString("file_name")%>&email=<%=rs.getString("request")%>" >Response</a> </td>
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