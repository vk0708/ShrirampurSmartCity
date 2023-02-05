
<%@page import="com.model.StudentModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Index Page</title>
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
			<img src="../../images/studentlogo.png">
		</div>

		<nav>
			<a href="StudentIndex.jsp" style="color: red">home</a>
			<a href="../../About/About.html">about city</a>
			<a href="map.html">map</a>
			<a href="College.jsp">Colleges</a>
			<a href="News.jsp">News</a>
			<a href="Institute.jsp">Institute</a>
			<a href="Feedb.html">Feedback</a>
		
		</nav>
		<div class="menubtn">
                    <a href="../../Login/Login.jsp" onclick="logout()"><button>Logout</button></a>
		</div>
	</div>
        
        <%
    StudentModel Student=(StudentModel)session.getAttribute("Student");
        %>
    
         <div class="right-sec">
         <h2 style="color: red"> PROFILE </h2><br>
        <h3><%=Student.getFname()%> <%=Student.getLname()%></h3><br>
        <h4><%=Student.getQual()%></h4>
        <h4><%=Student.getGender()%></h4>
        <h4><%=Student.getEmail()%></h4>
        <h4><%=Student.getMobile()%></h4>
        <h4><%=Student.getPassword()%></h4>
        </div>
        
        <div class="ubtn">
                    <a href="#"><button>Update Profile</button></a>
		</div>
        
    </header>
    </body>
</html>
