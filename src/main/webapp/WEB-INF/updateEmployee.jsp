<%-- 
    Document   : updateEmployee
    Created on : 15-oct-2020, 20:28:36
    Author     : daniel
--%>

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
        <h1>Actualizar usuario:</h1>
        <% List<Location> locations = (List<Location>) request.getAttribute("locationlist");%>
        <% HttpSession mySession = request.getSession(false);
        String nombre = (String)mySession.getAttribute("nombre");
        int salario = (int)mySession.getAttribute("salario");
        int ubicacion = (int)mySession.getAttribute("ubicacion");
        int id = (int)mySession.getAttribute("id");
        %>
        
        <%@include file="layout/menu.jspf" %>
        <br></br>
        
        
        <form action ="/tecnaraEnterprise/employees/updateEmployee" method="post">
            <label for="id">id a modificar:</label>
            <input type="hidden" name="id" value = "<%=id%>">
            
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
