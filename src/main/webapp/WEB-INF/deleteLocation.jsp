<%-- 
    Document   : deleteLocation
    Created on : 15-oct-2020, 11:18:17
    Author     : daniel
--%>

<%@page import="com.mycompany.tecnaraenterprise.domain.Location"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Ubicacion eliminada</h1>
        <% HttpSession mySession = request.getSession(false);
        Location resultado = (Location)mySession.getAttribute("deletedLocation");
        %>
        <h2><%= "Has borrado la ubicacion"%></h2>
        <h2><%= resultado.getUbicacion()%></h2>
        
    </body>
</html>
