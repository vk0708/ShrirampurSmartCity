<%@page import="java.util.List"%>
<%@page import="com.dao.Admin.CollegeDao"%>
<%@page import="com.model.Admin.CollegeModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>College Edit</title>
        
        <link href="../../../css/style.css" rel="stylesheet" type="text/css"/>
        
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
        
    </head>
    <body>
        
        <header>
	<div class="mainheader">
		<div class="logo">
			<img src="../../../images/adminlogo.png">
		</div>

		<nav>
			<a href="../AdminIndex.html">home</a>
			<a href="NewsDetails.jsp">Edit News</a>
                        <a href="HotelDeatils.jsp">Edit Hotels</a>
                        <a href="PlaceDetails.jsp">Edit Places</a>
			
                                <li class="dropdown">
					<a class="dropbtn" style="color: red">C/I</a>
               			 <div class="drop">
                                    <a href="CollegeDetails.jsp">Edit Colleges</a>             
                                    <a href="InstDetails.jsp">Edit Institutes</a>
               			 </div>
                        
				<li class="dropdown">
					<a class="dropbtn">View users</a>
               			 <div class="drop">
                                    <a href="../../Student/detail.jsp">Student</a>             
                                    <a href="../../Tourist/detail.jsp">Tourist</a>
                                    <a href="../../Jobseeker/detail.jsp">Jobseeker</a>
                                    <a href="../../Businessman/detail.jsp">Businessman</a>
               			 </div>
                                </li>  
                        <a href="../msg.jsp">Msgs</a>
		</nav>
		<div class="menubtn">
			<a href="../../../Login/Login.jsp"><button>Logout</button></a>
		</div>
	</div>
            <center><h1 style="color:#0070fa">Colleges</h1></center>
         
        <div id="record">
        <table id="customers">
            <thead>
                <tr>                
                    <th>Name &nbsp; &nbsp;</th>
                    <th>Type of College &nbsp; &nbsp;</th>
                    <th>Address &nbsp; &nbsp;</th>
                    <th>Delete &nbsp; &nbsp;</th>                    
                </tr>               
               
            
            
            </thead>
            <tbody>
                <%
                        CollegeModel sm=new CollegeModel();
                        CollegeDao sd=new CollegeDao();
                        
                        List<CollegeModel> sm1=sd.getAllData();
                        
                        for(CollegeModel plan : sm1){
                               
                %>
                <tr>
                    
                    <td><%=plan.getName()%></td>
                    <td><%=plan.getTypes()%></td>
                    <td><%=plan.getAddr()%></td>
                   <td><a href="Bdelete.jsp?id=<%=plan.getId()%>">Delete</a></td>
                </tr>
                <%
                               }
                %>
                     
                
            </tbody>
            
        </table>
                <div id="btn">
			<a href="../Sub/CollegeAdd.html"><button>Add College</button></a>
		</div>
         </div>
        </header>  
        
    </body>
</html>
