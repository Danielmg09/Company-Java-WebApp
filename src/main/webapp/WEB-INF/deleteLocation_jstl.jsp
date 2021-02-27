<%-- 
    Document   : delete_jstl
    Created on : 16-oct-2020, 10:25:26
    Author     : daniel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:useBean id="deletedLocation" type="com.mycompany.tecnaraenterprise.domain.Location" scope="session"/>



<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Ubicacion eliminada</h1>
        
        <h2>Has borrado la ubicacion</h2>
        <h2>${deletedLocation.ubicacion}</h2>
        
        <h3><a href="http://localhost:8080/tecnaraEnterprise/locations/listLocations">Ubicaciones</a></h3>
    </body>
</html>
