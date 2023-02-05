<%@page import="com.model.ContactModel"%>
<%@page import="com.dao.ContactDao"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete</title>
    </head>
     <%
    long id= Long.parseLong(request.getParameter("id"));
    ContactDao cd=new ContactDao();
    ContactModel c=new ContactModel();   
    
    c.setId(id);    
    boolean b1=cd.deletemsg(c);
    
    if (b1){
               out.println("<script type=\"text/javascript\">");
               out.println("alert('Deleted Successfully!!!')");
               out.println("location=('msg.jsp')");
               out.println("</script>");
            }
    
    else{
                out.println("<script type=\"text/javascript\">");
               out.println("alert('Error!!!')");
               out.println("location=('msg.jsp')");
               out.println("</script>");
            }
    
    %>
    <body>
      
    </body>
</html>