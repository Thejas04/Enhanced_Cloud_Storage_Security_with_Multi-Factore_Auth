<%-- 
    Document   : downloadvcv
    Created on : Feb 3, 2023, 7:29:05 PM
    Author     : java4
--%>

<%@page import="java.net.URLDecoder"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.LinkedHashMap"%>
<%@page import="DatabaseConnectivity.Dbconn"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">
	<head>
	<title>Fine Grained</title>
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
							
							<li class="current"><a href="f_download.jsp">Log Out</a>
                                                        
								</li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
	</div>
</header>

<!--=======content================================-->
<%
try{
     HttpSession httpSession=request.getSession();
        String query = request.getQueryString();
        Map<String, String> query_pairs = new LinkedHashMap<String, String>();
        String[] pairs = query.split("&");
    for (String pair : pairs) {
        int idx = pair.indexOf("=");
        query_pairs.put(URLDecoder.decode(pair.substring(0, idx), "UTF-8"), URLDecoder.decode(pair.substring(idx + 1), "UTF-8"));
    }
    String downloadFile= query_pairs.get("downloadFile");
    session.setAttribute("downloadFile", downloadFile);
    
    String fname = request.getParameter("downloadFile");
    String mail = request.getParameter("mail");
     Connection con;
                                        Statement st;
                                        ResultSet rs;
                                        con = Dbconn.getConnection();
                                        st = con.createStatement();
                                        rs = st.executeQuery("SELECT distinct * FROM `files`,`trustee` where request='"+mail+"' AND  files.file_name='"+fname+"' AND files.file_name = trustee.file_name ;");
        
               
                                        if (rs.next()) {
                                            String trust=rs.getString("trust");
                                             String key=rs.getString("skey");
                                             System.out.println(trust);
                                             
                                             System.out.println(key);
                                       
                                        
     %>

<section id="banner">
				<div class="inner">
                       <center>
                                <header>
						<h2 style="color:whitesmoke"><span>Two Factor Access Control for File</span></h2>
					</header>
					
                               </center>
			   
			 <div  style="height: 297px; width: 1000px; margin-left: 10px;margin-bottom: -10px;">
                         <div style="width:500px;height: 300px;border-top-left-radius: 19px;border-bottom-left-radius: 19px;float: left;">
	
                             <fieldset style="background-color:cornflowerblue;border-radius: 9px;height: 350px;margin-top: 10px;">
                                 <br>
          <center>
        <h1 style="font: monospace;font-size: 35px;font-weight: bold;color: darkslateblue">Trustee File Security </h1><br><br><br>
          <form action="" name="form1" method="get" > 
<label style="font-size: 20px;margin-left:30px;">Trustee Status :</label> <br><input type="text" id="id"  style="height: 40px; width:250px; " name="key" value="<%=trust%>" required style="margin-left: 45px;" readonly=""/><br><br>
 
     
  
      
            
		</form>
          </center>
                             </fieldset>
                </div>
                                       <div style="height: 355px; width: 500px;margin-left:600px;">
                                           <fieldset style="background-color:#ff33ff;border-radius: 9px;height: 350px;margin-top: 10px;">
                                 <br>
          <center>
        <h1 style="font: monospace;font-size: 35px;font-weight: bold;color: darkslateblue">File Secret Key </h1><br><br><br>
            <form action="loginaction.jsp" name="form1" method="post" > 
            <label style="font-size: 20px;margin-left:30px;">Secret Key :</label> <br>
             <input type="password" id="id"  style="height: 40px; width:250px; " name="key"required style="margin-left: 45px;" placeholder="Enter secret key "/><br><br>
             <input type="hidden" value="<%=trust%>" name="trust" />
             <input type="hidden" value="<%=fname%>" name="fname" />
              <input type="hidden" value="9" name="status" />
             <input type="hidden" value="<%=mail%>" name="mail" />
             <input type="submit"  value="Download" style="border-radius: 12px;height: 38px;width: 93px;background-color:silver"/>
            </form>
          </center>
                             </fieldset>
 
                                       </div>
                         </div>
                       <br>
                       
                       
                              
                                <%
                                                               }
                                     else{
                                       response.sendRedirect("f_download.jsp?msg=get_Request_from_trustee_and_authority");      
                                      }
                                                                               
        } catch (Exception ex) {
            response.sendRedirect("f_download.jsp?msg=get_Request_from_trustee_and_authority");
                                    ex.printStackTrace();
                                }%>
         
				</div>
                   	</div>				</div>
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
<!-- coded by Fred -->
</body>
</html>
