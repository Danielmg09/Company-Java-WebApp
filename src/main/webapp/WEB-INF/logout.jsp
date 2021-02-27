<%-- 
    Document   : logout
    Created on : 16-oct-2020, 12:35:29
    Author     : daniel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% String logoutName = (String)request.getAttribute("logoutname");
           %>
        <% 
   %>
   <h2>Goodbye, <%=logoutName%>.</h2>
   <br>
   <h3><a href="http://localhost:8080/tecnaraEnterprise/login">Login</a></h2>
    </body>
</html>
