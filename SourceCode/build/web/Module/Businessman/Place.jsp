<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Post Job Request</title>
        <link href="../../css/style.css" rel="stylesheet" type="text/css"/>
        <link href="../Admin/Sub/AddCSS.css" rel="stylesheet" type="text/css"/>
        <script type="text/javascript">
            function noo(){
                alert('You are not Administrator of site');
            }
            
            function logout()
            {
                alert('Logout Successfull');
            }
        </script>
        
        <style>
            
        </style>
    </head>
    
    <body>
        <header>
            <form action="../../PostJobRegister" method="get">
	<div class="mainheader">
		<div class="logo">
			<img src="../../images/bmanlogo.png">
		</div>

		<nav>
			<a href="BismanIndex.jsp">home</a>
			<a href="map.html">city map</a>
			<a href="JobseekerDetails.jsp">View Jobseeker</a>
			<a href="News.jsp">News</a>
			<a href="Place.jsp" style="color: red">Post Job request</a>
			<a href="Feedback.html">Feedback</a>
		
		</nav>
		<div class="menubtn">
                    <a href="../../Login/Login.jsp" onclick="logout()"><button>Logout</button></a>
		</div>
	</div>
            
            <div class='login'>
          <h2>Post Job Request</h2>
          <input name="nam" placeholder="Your Name" type="text" autocomplete="off">
          <input name="bnam" placeholder="Name of Your business / shop" type="text" autocomplete="off">
          <input name="btyp" placeholder="Types of work" type="text" autocomplete="off">
          <input name="need" type="text" autocomplete="off" placeholder="Required Qulification e.g. school/diploma/graduation/engi. etc.">
          <input name="con" placeholder="Your Contact no." type="text">  <br><br>
              
          <input class='animated' type='submit' value='Post'>
        </div>
        </form>
        </header> 
    </body>
</html>
