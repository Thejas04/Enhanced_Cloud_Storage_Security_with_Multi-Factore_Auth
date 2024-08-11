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
							<li class="current"><a href="user_page.jsp">User Home</a>
										
							</li>
							
							<li><a href="t_request.jsp">Trustee Request</a></li>
							<li><a href="a_request.jsp">Authority Secret Key</a></li>
                                                        <li><a href="f_download.jsp">File Download</a></li>
							
							<li><a href="user_login.jsp">Log Out</a>
                                                        
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
                    <center><h1 style="color:whitesmoke"><span>USER HOME</span></h1></center>
    <%
HttpSession user=request.getSession();
String name=user.getAttribute("uname").toString(); 
%>
                                
                                <br>
                                <br>
                                <br>
                                <center>
                                <header>
						<h2 style="color:whitesmoke"><span> Welcome! <%=name%></span></h2>
					</header>
					
                               </center>
                            <h1 style="color:whitesmoke"></h1>
                
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