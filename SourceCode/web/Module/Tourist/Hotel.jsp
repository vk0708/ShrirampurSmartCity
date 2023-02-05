<%@page import="java.util.List"%>
<%@page import="com.dao.Admin.HotelDao"%>
<%@page import="com.model.Admin.HotelModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hotels in Shrirampur</title>
        
        <link href="../../css/style.css" rel="stylesheet" type="text/css"/>
        
        <style>
            body{    
                background-color: white;
                background-repeat: no-repeat;
                background-size: 100% 700px;
    
            }
            #record{
                padding-left: 55px;
                padding-right: 55px;
                margin-top: 10px;

            }
             #customers{
                font-family: "Trebuchet MS",Arial,Helvetica,sans-serif;
                border-collapse: collapse;
                width: 100%;
            } 
            #customers td,#customers th{
                border: 1px solid #ddd;
                padding: 8px;
                
            }
            #customers tr:nth-child(even){
                background-color: #f2f2f2;
                
            }
            #customers tr:hover{
                background-color: #ddd;
                
            }
            #customers th{
                padding-top: 12px;
                padding-bottom: 12px;
                text-align: left;
                background-color: #649bff;
                color: white;
                
            }
            #btn button{
                padding: 3px 17px;
                text-align: center;
                font-size: 14px;
                color: #fff;
                border: none;
                background-image: linear-gradient(to right,#649bff,#0070fa,#649bff); 
                border-radius: 10px;
                margin-top: 30px;
                margin-left: 50px;
                cursor: pointer;
            }
        </style>
        
        <script type="text/javascript">
            function noo(){
                alert('You are not Administrator of site');
            }
            
            function logout()
            {
                alert('Logout Successfull');
            }
        </script>
        
    </head>
    <body>
        <header>
	<div class="mainheader">
		<div class="logo">
			<img src="../../images/touristlogo.png">
		</div>

		<nav>
			<a href="TouristIndex.jsp">home</a>
			<a href="../../About/About.html">about city</a>
			<a href="map.html">map</a>
			<a href="Hotel.jsp" style="color: red">Hotels</a>
			<a href="News.jsp">News</a>
			<a href="Place.jsp">Places</a>
			<a href="Feedback.html">Feedback</a>
		
		</nav>
		<div class="menubtn">
                    <a href="../../Login/Login.jsp" onclick="logout()"><button>Logout</button></a>
		</div>
	</div>
            
            <center><h1 style="color:#0070fa">Hotels</h1></center>
         
        <div id="record">
        <table id="customers">
            <thead>
                <tr>                
                    <th>Name &nbsp; &nbsp;</th>
                    <th>Type of Hotel &nbsp; &nbsp;</th>
                    <th>Address &nbsp; &nbsp;</th>                 
                </tr>               
               
            
            
            </thead>
            <tbody>
                <%
                        HotelModel sm=new HotelModel();
                        HotelDao sd=new HotelDao();
                        
                        List<HotelModel> sm1=sd.getAllData();
                        
                        for(HotelModel plan : sm1){
                               
                %>
                <tr>
                    
                    <td><%=plan.getName()%></td>
                    <td><%=plan.getTypes()%></td>
                    <td><%=plan.getAddr()%></td>
                </tr>
                <%
                               }
                %>
                     
             
        </table>
                   
            </tbody>
                <div id="btn">
                    <a href=""><button onclick="noo()">Add Hotels</button></a>
		</div>
         </div>
            
        </header>    
    </body>
</html>
