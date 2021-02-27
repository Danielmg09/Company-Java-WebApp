<%-- 
    Document   : login
    Created on : 15-oct-2020, 23:27:03
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
        <h1>Iniciar sesion:</h1>
        <br>
        <% String msgError = (String)request.getSession().getAttribute("loginError");
        if (msgError != null && !msgError.isEmpty()){
        %>
        <br>
        <h3><%= msgError %></h3>
        <br>    
        <%
        }
        %>
        <form action ="/tecnaraEnterprise/login" method="post">
            <label for="user">User:</label>
            <input type="text" name="user">
            <br><br>
            <label for="password">Password:</label>
            <input type="text" name="password">
            <br><br>
            <input type="submit" value="Log In">   
        </form>
    </body>
</html>
