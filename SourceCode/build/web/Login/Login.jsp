<!DOCTYPE html>
<html lang="en">
<head>
	<title>Login</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
	<link rel="stylesheet" type="text/css" href="../css/style.css">
<!--===============================================================================================-->

<style type="text/css">
        	*{
			margin: 0;
			padding: 0;
		}
		header{
	background-image: none;
		}
		.mainheader button{
			padding: 10px 30px;
			text-align: center;
			font-size: 14px;
			color: #fff;
			border: none;
			background-image: linear-gradient(to right,#649bff,#0070fa,#649bff); 
			border-radius: 10px;
		}
                
                #mainselection select {
		   border: 0;
		   color: white;
		   background: transparent;
		   font-size: 20px;
		   font-weight: bold;
		   padding: 2px 10px;
		   width: 300px;
		   *width: 300px;
		   *background: #58B14C;
		   -webkit-appearance: none;
		}

		#mainselection {
		   overflow:#649bff;
		   width:300px;
		   -moz-border-radius: 9px 9px 9px 9px;
		   -webkit-border-radius: 9px 9px 9px 9px;
		   border-radius: 9px 9px 9px 9px;
		   background: grey;
		}       
		
        </style>

</head>
<body>
	   	<div class="limiter">
	   		<header>
				<div class="mainheader">
					<div class="logo">
						<img src="../images/logo.png">
					</div>

					<nav>
						<a href="../index.html">home</a>
						<a href="../About/About.html">about city</a>
						<a href="../map.html">city map</a>
						<a href="../Gallery.html">gallary</a>
						<a href="../About/History.html">history</a>
						<a href="../contact.html">contact</a>
								<li class="dropdown">
									<a class="dropbtn">sign up</a>
               						 <div class="drop">
                                                            <a href="../Registration/StudentRegister.jsp">Student</a>             
                                                            <a href="../Registration/TouristRegister.jsp">Tourist</a>
                                                            <a href="../Registration/JobseekerRegister.jsp">Jobseeker</a>
                                                            <a href="../Registration/BusinessmanRegister.jsp">Businessman</a>
               			 			</div>
            					</li>    
					</nav>
					<div class="menubtn">
			<a href="Login.jsp"><button>Login Page</button></a>
		</div>
				</div>
		<div class="container-login100">			
			<div class="wrap-login100">
                            <form class="login100-form validate-form" action="../LoginServlet" method="post">
					<span class="login100-form-title p-b-26">
						Welcome <br>to <br>Shrirampur city
					</span>
					<br><br>

					<div class="wrap-input100 validate-input" data-validate = "Valid email is: a@b.c">
						<input class="input100" type="text" name="email">
						<span class="focus-input100" data-placeholder="Email"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate="Enter password">						
						<input class="input100" type="password" name="password">
						<span class="focus-input100" data-placeholder="Password"></span>
					</div>
                                        
                                        <!--<div id="mainselection">
                                            <select name="typ">
							<option>Select User type</option>
							<option>Student</option>
							<option>Tourist</option>
							<option>Jobseeker</option>
							<option>Businessman</option>						
						</select>
					</div>-->
                                        <br>

					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
							<button class="login100-form-btn">
								Login
							</button>
						</div>
					</div><br>

					<div class="text-center p-t-115">
						<span class="txt1">
							Don?t have an account?&nbsp;
						</span>

						<a class="txt2" href="../Registration/JobseekerRegister.jsp">
							Sign Up
						</a>
					</div>
				</form>
			</div>

		</div></header>
	</div>
	
</header>
</body>
</html>