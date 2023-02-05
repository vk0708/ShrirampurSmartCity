<%@page import="com.model.JobseekerModel"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Jobseeker Index</title>
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
        margin-top: -30px;
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
			<img src="../../images/joblogo.png">
		</div>

		<nav>
			<a href="JobskIndex.jsp" style="color: red">home</a>
			<a href="map.html">city map</a>
			<a href="bmandetails.jsp">View Business/ shop</a>
			<a href="News.jsp">News</a>
			<a href="checkjob.jsp">check Job request</a>
			<a href="Feedback.html">Feedback</a>
		
		</nav>
		<div class="menubtn">
                    <a href="../../Login/Login.jsp" onclick="logout()"><button>Logout</button></a>
		</div>
	</div>
            
            
        <%
    JobseekerModel Jobseeker=(JobseekerModel)session.getAttribute("Jobseeker");
        %>
    
        <center><h2  style="color: red"> Welcome </h2></center>
        <div class="right-sec">
         <h2 style="color: red"> PROFILE </h2><br>
        <h3><%=Jobseeker.getFname()%> <%=Jobseeker.getLname()%></h3><br>
        <h3><%=Jobseeker.getBirth()%></h3>
        <h4><%=Jobseeker.getGender()%></h4>
        <h4><%=Jobseeker.getEmail()%></h4>
        <h4><%=Jobseeker.getMobile()%></h4>
        <h4><%=Jobseeker.getAddr()%></h4>
        <h4><%=Jobseeker.getPassword()%></h4>
        <h4><%=Jobseeker.getQual()%></h4>
        </div>
        
        <div class="ubtn">
                    <a href="#"><button>Update Profile</button></a>
		</div>
        
        </header>
    </body>
</html>
