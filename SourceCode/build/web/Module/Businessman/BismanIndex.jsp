<%@page import="com.model.BusinessmanModel"%>
<html>
    <head>
        <title>Businessman Index</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="../../css/style.css" rel="stylesheet" type="text/css"/>
        <link href="https://fonts.googleapis.com/css?family=Josefin+Sans&display=swap" rel="stylesheet"> 
        
        <script type="text/javascript">
            function logout()
            {
                alert('Logout Successfull');
            }
         </script>
         
         <style>
             .right-sec{	
        margin-bottom: 10px;
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
			<img src="../../images/bmanlogo.png">
		</div>

		<nav>
			<a href="BismanIndex.jsp" style="color: red">home</a>
			<a href="map.html">city map</a>
			<a href="JobseekerDetails.jsp">View Jobseeker</a>
			<a href="News.jsp">News</a>
			<a href="Place.jsp">Post Job request</a>
			<a href="Feedback.html">Feedback</a>
		
		</nav>
		<div class="menubtn">
                    <a href="../../Login/Login.jsp" onclick="logout()"><button>Logout</button></a>
		</div>
	</div>
        
        <%
    BusinessmanModel Businessman=(BusinessmanModel)session.getAttribute("Businessman");
        %>
    
        <center><h2  style="color: red"> Welcome </h2></center>
        <div class="right-sec">
         <h2 style="color: red"> PROFILE </h2><br>
        <h3><%=Businessman.getFname()%> <%=Businessman.getLname()%></h3><br>
        <h3><%=Businessman.getBname()%></h3>
        <h4><%=Businessman.getGender()%></h4>
        <h4><%=Businessman.getEmail()%></h4>
        <h4><%=Businessman.getMobile()%></h4>
        <h4><%=Businessman.getAddr()%></h4>
        <h4><%=Businessman.getPassword()%></h4>
        </div>
        
        <div class="ubtn">
                    <a href="#"><button>Update Profile</button></a>
		</div>
        
    </header>  
    </body>
</html>
