<%-- 
    Document   : listEmployees_jstl
    Created on : 16-oct-2020, 12:57:09
    Author     : daniel
--%>

<%@page import="java.util.List"%>
<%@page import="com.mycompany.tecnaraenterprise.domain.Location"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Empleados</h1>

        <%@include file="layout/menu.jspf" %>
        <br></br>
        
        Selecciona ubicacion:
            <form action ="/tecnaraEnterprise/employees/list" method="post">

                <label for="ubicacion">Ubicacion:</label>
                <select name="ubicacion" id="ubicacion">
                    <c:forEach items="${locationlist}"  var="location">
                        <option value="${location.id}">${location.ubicacion}</option>
                    </c:forEach>
                </select>
                <input type="submit" value="Filtrar">   
            </form>

        <table border>
            <td><strong>Id</strong></td>
            <td><strong>Nombre</strong></td>
            <td><strong>Ubicacion</strong></td>

            <c:if test="${login != null && login.isIsLogged() && login.isAdmin == true}"> 
                <td><strong>Salario</strong></td>

                <td><strong>Acciones</strong></td>
            </c:if>

            

            <c:forEach items="${employees}"  var="employee">
                <tr>
                    <td>${employee.id}</td>
                    <td>${employee.nombre}</td>
                    <td>${employee.ubicacion.ubicacion}</td>

                    <c:if test = "${login != null && login.isLogged == true && login.isAdmin == true}">
                        <td>${employee.salario}</td>

                        <td><a href=http://localhost:8080/tecnaraEnterprise/employees/deleteEmployee?id=${employee.id}>
                                <img height="60px" width="60px" src="/tecnaraEnterprise/img/delete.png" alt=""/>
                            </a>
                            <a href=http://localhost:8080/tecnaraEnterprise/employees/updateEmployee?id=${employee.id}>
                                <img height="60px" width="60px" src="/tecnaraEnterprise/img/update.png" alt=""/>
                            </a>


                        </c:if>

                </tr>

            </c:forEach>


        </table>

        <br></br>

    </body>
</html>
