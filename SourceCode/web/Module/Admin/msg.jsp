<%@page import="java.util.List"%>
<%@page import="com.dao.ContactDao"%>
<%@page import="com.model.ContactModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Messages</title>
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
			<a href="AdminIndex.html">home</a>
			<a href="Edit/NewsDetails.jsp">Edit News</a>
                        <a href="Edit/HotelDeatils.jsp">Edit Hotels</a>
                        <a href="Edit/PlaceDetails.jsp">Edit Places</a>
			
                                <li class="dropdown">
					<a class="dropbtn">C/I</a>
               			 <div class="drop">
                                    <a href="Edit/CollegeDetails.jsp">Edit Colleges</a>             
                                    <a href="Edit/InstDetails.jsp">Edit Institutes</a>
               			 </div>
                        
				<li class="dropdown">
					<a class="dropbtn">View users</a>
               			 <div class="drop">
                                    <a href="../Student/detail.jsp">Student</a>             
                                    <a href="../Tourist/detail.jsp">Tourist</a>
                                    <a href="../Jobseeker/detail.jsp">Jobseeker</a>
                                    <a href="../Businessman/detail.jsp">Businessman</a>
               			 </div>
                                </li>  
                        <a href="msg.jsp" style="color: red">Msgs</a>
		</nav>
		<div class="menubtn">
			<a href="../../Login/Login.jsp"><button>Logout</button></a>
		</div>
	</div>
            <center><h1 style="color:#0070fa">Messages/Queries</h1></center>
            
            <div id="record">
        <table id="customers">
            <thead>
                <tr>
                
                    <th>Name &nbsp; &nbsp;</th>
                    <th>User Type &nbsp; &nbsp;</th>
                    <th>Email &nbsp; &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp;</th>
                    <th>Message/Queries &nbsp; &nbsp;</th>
                    <th>Delete &nbsp; &nbsp;</th>               
                
                </tr>               
               
            
            
            </thead>
            <tbody>
                <%
                        ContactModel sm=new ContactModel();
                        ContactDao sd=new ContactDao();
                        
                        List<ContactModel> sm1=sd.getAllMsg();
                        
                        for(ContactModel plan : sm1){
                               
                %>
                <tr>
                    
                    <td><%=plan.getFname()%></td>
                    <td><%=plan.getModule()%></td>
                    <td><%=plan.getEmail()%></td>
                    <td><%=plan.getMsg()%></td>
                   <td><a href="deletemsg.jsp?id=<%=plan.getId()%>">Delete</a></td>
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
