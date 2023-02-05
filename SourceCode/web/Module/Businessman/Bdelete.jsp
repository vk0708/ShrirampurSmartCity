<%@page import="com.model.BusinessmanModel"%>
<%@page import="com.dao.BusinessmanDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete</title>
    </head>
     <%
    long id= Long.parseLong(request.getParameter("id"));
    BusinessmanDao bd=new BusinessmanDao();
    BusinessmanModel b=new BusinessmanModel();   
    
    b.setId(id);    
    boolean b1=bd.deleteBusinessman(b);
    
    if (b1){
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