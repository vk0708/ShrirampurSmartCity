<%@page import="com.model.TouristModel"%>
<%@page import="com.dao.TouristDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete</title>
    </head>
     <%
    long id= Long.parseLong(request.getParameter("id"));
    TouristDao td=new TouristDao();
    TouristModel t=new TouristModel();   
    
    t.setId(id);    
    boolean b=td.deleteTourist(t);
    
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
