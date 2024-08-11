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
                                    <li ><a href="authority_page.jsp">Authority Home</a>

                                    </li>

                                    <li ><a href="f_upload.jsp">File Upload</a></li>
                                    <li class="current"><a href="f_request.jsp">File Secret Key</a></li>
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
                        </center>
                        <center>
                            <table border="8" width="1000px" hieght="1200px" style="text-align: center;background-color:lightblue;color:black;">
                                <caption><font size="50px">File Secret Key</font></caption>
                                <tr>

                                    <th style="color:#660066; font-size:23px;font:bolder" >File Name</th>
                                    <th style="color:#660066; font-size:23px;font:bolder">Uploaded On</th>
                                    <th style="color:#660066; font-size:23px;font:bolder">Size</th>
                                    <th style="color:#660066; font-size:23px;font:bolder">Requested By</th>
                                    <th style="color:#660066; font-size:23px;font:bolder">Status</th>
                                    <th style="color:#660066; font-size:23px;font:bolder">Secret Key</th>
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
                                            rs = st.executeQuery("select * from authority where status='key request'");
                                            while (rs.next()) {

                                    %>
                                    <td style="font-size:18px;font:bolder"><%=rs.getString("file_name")%></td>
                                    <td style="font-size:18px;font:bolder" ><%=rs.getString("date")%></td>
                                    <td style="font-size:18px;font:bolder"><%=rs.getString("size")%></td>
                                    <td style="font-size:18px;font:bolder"><%=rs.getString("request")%></td>
                                    <td style="font-size:18px;font:bolder"><%=rs.getString("author")%></td>
                                    <td style="font-size:18px;font:bolder;color:whitesmoke"><a href="secretkey.jsp?fname=<%=rs.getString("file_name")%>&email=<%=rs.getString("request")%>" >Send Key</a> </td>
                                </tr>
                                <%}
                                    } catch (Exception ex) {
                                        ex.printStackTrace();
                                    }
                                %>
                            </table>
                        </center>




                    </div>
                </div>
            </div>
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