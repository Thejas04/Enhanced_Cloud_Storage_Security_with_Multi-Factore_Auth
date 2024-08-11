<%@page import="Mail.MailSender"%>
<%@page import="java.sql.Statement"%>
<%@page import="DatabaseConnectivity.Dbconn"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Random"%>
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
        <%
    
    
    Random s = new Random();
    int a = s.nextInt(9000 - 3000)+1000;
    System.out.print(a);
    String key = String.valueOf(a);
   String msg = "\nOne time Key:" +key;
    
        HttpSession user=request.getSession();
            String mail=user.getAttribute("email").toString();
            System.out.println("mail: " + mail);
            
        Connection con = Dbconn.getConnection();
        Statement st = con.createStatement();
        int i = st.executeUpdate("update register set one_key = '" + key + "' where mail ='" + mail + "'");
        if(i!=0){
             new MailSender().sendMail(mail, "One Time key", msg);
  
        }
  %>
<body cclass="is-preload">
  
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
							<li class="current"><a href="user_login.jsp">Log Out</a>
                                                        
							
						</ul>
					</nav>
				</div>
			</div>
		</div>
	</div>
</header>



<section id="banner">
				<div class="inner">
          <center>
        <h1 style="font: monospace;font-size: 35px;font-weight: bold;color:whitesmoke">One Time Key Verfication</h1><br><br><br>
            <form action="okey_verify.jsp" name="form1" method="get" > 
<label style="font-size: 20px;margin-left:30px;">One Time Key:</label> <br><input type="text" id="id"  style="height: 40px; width:250px; " name="key"required style="margin-left: 45px;" placeholder="Enter one time key "/><br><br>
 
<input type="submit"  value="Verify"style="border-radius: 12px;height: 38px;width: 93px;background-color:#ff33ff"/>

<input type="reset" value="Reset" style="border-radius: 12px;height: 38px;width: 83px;background-color:#ff33ff"></input><br></br>
     
  
      
            
		</form>
          </center>
                             </fieldset>
                </div>
                                       <div style="height: 350px; width: 500px;margin-left:600px; background-image: url('images/key1.jpg')">
                                       </div>
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