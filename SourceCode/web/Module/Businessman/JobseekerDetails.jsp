<%@page import="java.util.List"%>
<%@page import="com.dao.JobseekerDao"%>
<%@page import="com.model.JobseekerModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Jobseeker Details</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        <link href="../../css/style.css" rel="stylesheet" type="text/css"/>
        
        <script type="text/javascript">
            function logout()
            {
                alert('Logout Successfull');
            }
         </script> 
         
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
        </style>
         
    </head>
    <body>
        
        <header>
	<div class="mainheader">
		<div class="logo">
			<img src="../../images/bmanlogo.png">
		</div>

		<nav>
			<a href="BismanIndex.jsp">home</a>
			<a href="map.html">city map</a>
			<a href="JobseekerDetails.jsp" style="color: red">View Jobseeker</a>
			<a href="News.jsp">News</a>
			<a href="Place.jsp">Post Job request</a>
			<a href="Feedback.html">Feedback</a>
		
		</nav>
		<div class="menubtn">
                    <a href="../../Login/Login.jsp" onclick="logout()"><button>Logout</button></a>
		</div>
	</div>
        
        <center><h1 style="color:#0070fa">Jobseeker Details</h1></center>
        <center><h3 style="color:red">Contact them using email OR mobile no.</h3></center>
         
        <div id="record">
        <table id="customers">
            <thead>
                <tr>
                
                    <th>First Name &nbsp; &nbsp;</th>
                    <th>Last Name &nbsp; &nbsp;</th>
                    <th>Gender &nbsp; &nbsp;</th>
                    <th>Qualification &nbsp; &nbsp;</th>
                    <th>Email &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp;</th>
                    <th>Mobile &nbsp; &nbsp;</th>
                    <th>Address &nbsp; &nbsp;</th>

                
                
                </tr>               
               
            
            
            </thead>
            <tbody>
                <%
                        JobseekerModel sm=new JobseekerModel();
                        JobseekerDao sd=new JobseekerDao();
                        
                        List<JobseekerModel> sm1=sd.getAllJobseeker();
                        
                        for(JobseekerModel plan : sm1){
                               
                %>
                <tr>
                    
                    <td><%=plan.getFname()%></td>
                    <td><%=plan.getLname()%></td>
                    <td><%=plan.getGender()%></td>
                    <td><%=plan.getQual()%></td>
                    <td><%=plan.getEmail()%></td>
                    <td><%=plan.getMobile()%></td>
                    <td><%=plan.getAddr()%></td>
                </tr>
                <%
                               }
                %>
                     
                
            </tbody>
            
        </table>
         </div>
            
        </header>     
    </body>
</html>
