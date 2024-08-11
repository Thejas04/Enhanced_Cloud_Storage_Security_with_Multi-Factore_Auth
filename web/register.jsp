<!DOCTYPE html>
<html lang="en">
	<head>
	<title>Login Home</title>
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
                                  
					<li><a href="index1.html">Home</a></li>
                                        <li><a href="">Employee</a>
                                                          <ul>
											<li><a href="user_login.jsp">Login</a></li>
											<li><a href="register.jsp">Register</a></li>
											
                                                          </ul>
                                                        </li>
                                                        <li><a href="trustee_login.jsp">TeamLead</a></li>
							<li><a href="authority_login.jsp">Manager</a></li>
							<li><a href="cloud_login.jsp">Cloud</a>
                                                        
                                                        
					
				</ul>
			</nav>



		
                <h1 style="font: monospace;font-weight: bold;color: darkslateblue"><center>Registration</center></h1><br><br>
             
<center>       
                <form action="register" name="form1" enctype="multipart/form-data"  method="get" onsubmit="return validate()"> 

NAME:</label><input type="text" name="name" required style="width:30%;" placeholder="Enter your name"  ><br></br>
USERNAME:</label><input type="text" name="username"  required style="width:30%;" placeholder="Enter username"><br></br>
PASSWORD:</label><input type="password" name="password" required style="width:30%" placeholder="Enter password"><br></br>
RE-PASSWORD:</label><input type="password" name="cpassword" required style="width:30%" placeholder="confirm your password"><br></br>
EMAIL:</label><input type="email" name="mail" required style="width:30%"  placeholder="Enter your email"><br></br>
MOBILE NO:</label><input type="text" name="mobile" required style="width:30%" placeholder="Enter your mobile no" maxlength="10"><br>
&nbsp;<center><input type="submit" id="but" value="Submit" style="border-radius: 12px;height: 38px;width: 93px;background-color:#ffff66"/>
&nbsp;&nbsp;   <input type="reset" id="but" value="Reset" style="border-radius: 12px;height: 38px;width: 83px;background-color:#ffff66"/><br></br>
                                                         
                
            
		</form>
</center>
       

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