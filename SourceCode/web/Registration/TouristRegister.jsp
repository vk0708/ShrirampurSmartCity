<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="../css/Registration.css">
        <link rel="stylesheet" type="text/css" href="../css/style.css">
	<link href="https://fonts.googleapis.com/css?family=Josefin+Sans&display=swap" rel="stylesheet">
        <title>Tourist Register</title>
            <style>
                header{
            width: 100%;
            height: 100vh;
            </style>
    </head>

<body>
    
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
					<a class="dropbtn" style="color: red">sign up</a>
               			 <div class="drop">
                                    <a href="StudentRegister.jsp">Student</a>             
                                    <a href="TouristRegister.jsp">Tourist</a>
                                    <a href="JobseekerRegister.jsp">Jobseeker</a>
                                    <a href="BusinessmanRegister.jsp">Businessman</a>
               			 </div>
            	</li>    
		</nav>
		<div class="menubtn">
			<a href="../Login/Login.jsp"><button>Login</button></a>
		</div>
	</div>
    
    <main>
                <section class="lsec">		
			<figure>
                            <a href="../Gallery.html"><img src="../images/Studentreg.jpg" width="600" height="400" style="margin-left: 70px; border-radius: 20px; outline: white;"></a>
			</figure>
		</section>
	<div class="form">
        <h2> Tourist Registration Form</h2><br>
        
        <form action="../TouristRegister" method="post"  id="as">        
          
            <input type="text" name="fname" placeholder="First Name" required="" autocomplete="off"><br><br>       
            
            <input type="text" name="lname" placeholder="Last Name" required="" autocomplete="off"><br><br>
            
            <input type="text" name="date" placeholder="Enter date dd/mm/yyyy format" autocomplete="off"><br><br>
            
            <span id="gen">Gender</span>
                <input type="radio" name="gender" checked="" value="Male" required="" id="rd" >
                <span id="gen">Male</span>
                <input type="radio" name="gender" value="Female" id="rd" >
                <span id="gen">Female</span><br><br>

            <input type="email" name="email" placeholder="Email Id" required="" autocomplete="off"><br><br>
            
            <input type="text" name="mobile" placeholder="Mobile No" required="" autocomplete="off"><br><br>
                         
            <input type="text" name="addr" placeholder="Enter Address" required="" autocomplete="off"><br><br>

            <input type="password" name="password" placeholder="Create Password" required="" ><br><br>
              
            <input id="submit" type="submit" value="Register" id="but">
        </form>
        </div>
    </main>
    </header>
</body>

</html>
