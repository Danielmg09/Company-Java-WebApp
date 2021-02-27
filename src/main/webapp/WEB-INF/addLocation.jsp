<%-- 
    Document   : insertLocation
    Created on : 15-oct-2020, 11:22:22
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
        <h1>Añadir nueva ubicacion:</h1>
        <%@include file="layout/menu.jspf" %>
        <br></br>
        <form action ="/tecnaraEnterprise/locations/addLocation" method="post">
            <label for="nombre">Nombre:</label>
            <input type="text" name="nombre">
            
            <input type="submit" value="añadir">   
        </form>
        <br></br>
        <h3><a href="http://localhost:8080/tecnaraEnterprise/locations/listLocations">Volver a la lista</a></h3>
    </body>
</html>
