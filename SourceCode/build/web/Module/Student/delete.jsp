<%@page import="com.model.StudentModel"%>
<%@page import="com.dao.StudentDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
     <%
    long id= Long.parseLong(request.getParameter("id"));
    StudentDao sd=new StudentDao();
    StudentModel s=new StudentModel();   
    
    s.setId(id);    
    boolean b=sd.deleteStudent(s);
    
    if (b){
               out.println("<script type=\"text/javascript\">");
               out.println("alert('Deleted Successfully!!!')");
               out.println("location=('detail.jsp')");
               out.println("</script>");
            }
    
    else{
                out.println("<script type=\"text/javascript\">");
               out.println("alert('Error!!!')");
               out.println("location=('detail.jsp')");
               out.println("</script>");
            }
    
    %>
    <body>
      
    </body>
</html>
