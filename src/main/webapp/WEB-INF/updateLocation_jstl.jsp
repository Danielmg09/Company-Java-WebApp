<%-- 
    Document   : updateLocation_jstl
    Created on : 16-oct-2020, 11:00:13
    Author     : daniel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:useBean id="id" type="Integer" scope="session"/>
<jsp:useBean id="ubicacion" type="String" scope="session"/>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <h1>Actualizar ubicacion:</h1>
         
         <%@include file="layout/menu.jspf" %>
        <br></br>
        
        <form action ="/tecnaraEnterprise/locations/updateLocation" method="post">
            <label for="id">id a modificar:</label>
            <input type="text" name="id" value = "${id}" readonly>
            <br></br>
            <label for="ubicacion">Nombre:</label>
            <input type="text" name="ubicacion" value = "${ubicacion}">
            
            <input type="submit" value="actualizar">  
            
        </form>
        <br></br>
        <h3><a href="http://localhost:8080/tecnaraEnterprise/locations/listLocations">Volver a la lista</a></h3>
    </body>
</html>
