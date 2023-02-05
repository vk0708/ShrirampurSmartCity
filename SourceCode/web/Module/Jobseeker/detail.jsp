<%@page import="java.util.List"%>
<%@page import="com.dao.JobseekerDao"%>
<%@page import="com.model.JobseekerModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Jobseeker details</title>
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
        </style>
        
    </head>
    <body>
        <header>
	<div class="mainheader">
		<div class="logo">
			<img src="../../images/adminlogo.png">
		</div>

		<nav>
			<a href="../Admin/AdminIndex.html">home</a>
			<a href="../Admin/Edit/NewsDetails.jsp">Edit News</a>
                        <a href="../Admin/Edit/HotelDeatils.jsp">Edit Hotels</a>
                        <a href="../Admin/Edit/PlaceDetails.jsp">Edit Places</a>
			
                                <li class="dropdown">
					<a class="dropbtn">C/I</a>
               			 <div class="drop">
                                    <a href="../Admin/Edit/CollegeDetails.jsp">Edit Colleges</a>             
                                    <a href="../Admin/Edit/InstDetails.jsp">Edit Institutes</a>
               			 </div>
                        
				<li class="dropdown">
					<a class="dropbtn" style="color: red">View users</a>
               			 <div class="drop">
                                    <a href="../Student/detail.jsp">Student</a>             
                                    <a href="../Tourist/detail.jsp">Tourist</a>
                                    <a href="detail.jsp">Jobseeker</a>
                                    <a href="../Businessman/detail.jsp">Businessman</a>
               			 </div>
                                </li>  
                        <a href="../Admin/msg.jsp">Msgs</a>
		</nav>
		<div class="menubtn">
			<a href="../../Login/Login.jsp"><button>Logout</button></a>
		</div>
	</div>
            <center><h1 style="color:#0070fa">Jobseeker Details</h1></center>
         
        <div id="record">
        <table id="customers">
            <thead>
                <tr>
                
                    <th>First Name &nbsp; &nbsp;</th>
                    <th>Last Name &nbsp; &nbsp;</th>
                    <th>Birth Date &nbsp; &nbsp;</th>
                    <th>Gender &nbsp; &nbsp;</th>
                    <th>Qualification &nbsp; &nbsp;</th>
                    <th>Email &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp;</th>
                    <th>Mobile &nbsp; &nbsp;</th>
                    <th>Address &nbsp; &nbsp;</th>
                    <th>Password &nbsp; &nbsp;</th>
                    <th>Delete &nbsp; &nbsp;</th>

                
                
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
                    <td><%=plan.getBirth()%></td>
                    <td><%=plan.getGender()%></td>
                    <td><%=plan.getQual()%></td>
                    <td><%=plan.getEmail()%></td>
                    <td><%=plan.getMobile()%></td>
                    <td><%=plan.getAddr()%></td>
                    <td><%=plan.getPassword()%></td>
                   <td><a href="Jdelete.jsp?id=<%=plan.getId()%>">Delete</a></td>
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
