<%@page import="com.model.JobseekerModel"%>
<%@page import="com.dao.JobseekerDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete</title>
    </head>
     <%
    long id= Long.parseLong(request.getParameter("id"));
    JobseekerDao jd=new JobseekerDao();
    JobseekerModel j=new JobseekerModel();   
    
    j.setId(id);    
    boolean b=jd.deleteJobseeker(j);
    
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