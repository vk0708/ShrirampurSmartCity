<%@page import="com.model.TouristModel"%>
<html>
    <head>
        <title>Tourist Index</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="../../css/style.css" rel="stylesheet" type="text/css"/>
        <link href="About/style.css" rel="stylesheet" type="text/css"/>
        <link href="https://fonts.googleapis.com/css?family=Josefin+Sans&display=swap" rel="stylesheet"> 
        
        <script type="text/javascript">
            function logout()
            {
                alert('Logout Successfull');
            }
         </script> 
         
         <style>
             .right-sec{	
        margin-bottom: 40px;
        margin-left: 950px;
        padding-bottom: 25px;
        position: relative;
        margin-top: 20px;
        }
        .right-sec h4{
            font-size: 18px;
            font-weight: lighter;
	color: #242424;
        }
        
        .ubtn button{
            padding: 5px 20px;
	text-align: center;
	font-size: 13px;
	color: #fff;
	border: none;
	background-image: linear-gradient(to right,#649bff,#0070fa,#649bff); 
	border-radius: 10px;
	margin-top: 0px;
	margin-left: 1000px;
	cursor: pointer;
	transition: all 0.4s;
	-webkit-transition: all 0.4s;
        -o-transition: all 0.4s;
        -moz-transition: all 0.4s;
        }
         </style>
        
    </head>
    <body>
        <header>
	<div class="mainheader">
		<div class="logo">
			<img src="../../images/touristlogo.png">
		</div>

		<nav>
			<a href="TouristIndex.jsp" style="color: red">home</a>
			<a href="../../About/About.html">about city</a>
			<a href="map.html">map</a>
			<a href="Hotel.jsp">Hotels</a>
			<a href="News.jsp">News</a>
			<a href="Place.jsp">Places</a>
			<a href="Feedback.html">Feedback</a>
		
		</nav>
		<div class="menubtn">
                    <a href="../../Login/Login.jsp" onclick="logout()"><button>Logout</button></a>
		</div>
	</div>
            
      <%
    TouristModel Tourist=(TouristModel)session.getAttribute("Tourist");
        %>
   
        <div class="right-sec">
         <h2 style="color: red"> PROFILE </h2><br>
        <h3><%=Tourist.getFname()%> <%=Tourist.getLname()%></h3><br>
        <h4><%=Tourist.getDate()%></h4>
        <h4><%=Tourist.getGender()%></h4>
        <h4><%=Tourist.getEmail()%></h4>
        <h4><%=Tourist.getMobile()%></h4>
        <h4><%=Tourist.getAddr()%></h4>
        <h4><%=Tourist.getPassword()%></h4>
        </div>
        
        <div class="ubtn">
                    <a href="#"><button>Update Profile</button></a>
		</div>
        
       <!-- <center>
            <footer class="pagefooter">
          <p>This page was last edited on 25.02.2020 || Created by Computer 3rd year Student: </p>
          <p>Contact information: <a href="mailto:patilvaibhavkale@gmail.com">patilvaibhavkale@gmail.com</a>.</p>
          <a href="About/devlopers.html">About Devlopers</a>
            </footer>
        </center>-->
            
       </header>       
    </body>
</html>
