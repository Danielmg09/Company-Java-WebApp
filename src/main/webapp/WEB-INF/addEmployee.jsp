<%-- 
    Document   : addEmployee
    Created on : 15-oct-2020, 18:56:44
    Author     : daniel
--%>

<%@page import="com.mycompany.tecnaraenterprise.service.LocationService"%>
<%@page import="java.util.List"%>
<%@page import="com.mycompany.tecnaraenterprise.domain.Location"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Añadir nuevo empleado:</h1>

        <% List<Location> locations = (List<Location>) request.getAttribute("locationlist");%>

        <form action ="/tecnaraEnterprise/employees/addEmployee" method="post">
            <label for="nombre">Nombre:</label>
            <input type="text" name="nombre">

            <label for="salario">Salario:</label>
            <input type="text" name="salario">

            <label for="ubicacion">Ubicacion:</label>
            <select name="ubicacion" id="ubicacion">
                
                <%
                    for(Location l : locations) {
                %>
                <option value="<%=l.getId()%>"><%=l.getUbicacion()%></option>
                
                <%
                   }
                %>
            </select>
            <input type="submit" value="añadir">   
        </form>
        <br></br>
        <h3><a href="http://localhost:8080/tecnaraEnterprise/employees/list">Volver a la lista</a></h3>
    </body>
</html>
