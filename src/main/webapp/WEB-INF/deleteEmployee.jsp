<%-- 
    Document   : deleteEmployee
    Created on : 15-oct-2020, 13:47:15
    Author     : daniel
--%>

<%@page import="com.mycompany.tecnaraenterprise.domain.Employee"%>
<%@page import="com.mycompany.tecnaraenterprise.domain.Location"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Empleado borrado!</h1>
        <% HttpSession mySession = request.getSession(false);
        Employee resultado = (Employee)mySession.getAttribute("resultado");
        %>
        <h2><%= "Has borrado el empleado"%></h2>
        <h2><%= resultado.getNombre()%></h2>
        
    </body>
</html>
