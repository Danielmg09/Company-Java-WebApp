<%-- 
    Document   : addEmployee_jstl
    Created on : 16-oct-2020, 13:57:20
    Author     : daniel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Añadir nuevo empleado:</h1>
        
        <%@include file="layout/menu.jspf" %>
        <br></br>

        <form action ="/tecnaraEnterprise/employees/addEmployee" method="post">
            <label for="nombre">Nombre:</label>
            <input type="text" name="nombre">

            <label for="salario">Salario:</label>
            <input type="text" name="salario">

            <label for="ubicacion">Ubicacion:</label>
            <select name="ubicacion" id="ubicacion">
                <c:forEach items="${locationlist}"  var="location">
                    <option value="${location.id}">${location.ubicacion}</option>
                </c:forEach>
            </select>
            <input type="submit" value="añadir">   
        </form>
        <br></br>
        <h3><a href="http://localhost:8080/tecnaraEnterprise/employees/list">Volver a la lista</a></h3>
    </body>
</html>
