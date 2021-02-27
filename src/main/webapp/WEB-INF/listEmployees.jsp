<%-- 
    Document   : listEmployees
    Created on : 14-oct-2020, 20:56:27
    Author     : daniel
--%>

<%@page import="com.mycompany.tecnaraenterprise.domain.Employee"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <h1>Empleados</h1>

        <%@include file="layout/menuEmployees.jspf" %>
        <br></br>

        <%HttpSession mySession = request.getSession(false);
            List<Employee> employees = (List<Employee>) mySession.getAttribute("employees");
        %>

        <table border>
            <td><strong>Id</strong></td>
            <td><strong>Nombre</strong></td>
            <td><strong>Ubicacion</strong></td>

            <% if (login != null && login.isIsLogged() && login.getRole().equals("administrador")) {
            %>
            <td><strong>Salario</strong></td>

            <td><strong>Acciones</strong></td>
            <%}%>


            <%
                for (Employee e : employees) {
            %>
            <tr>
                <td><%= e.getId()%></td>
                <td><%= e.getNombre()%></td>
                <td><%= e.getUbicacion().getUbicacion()%></td>
                <% if (login != null && login.isIsLogged() && login.getRole().equals("administrador")) {
                %>
                <td><%= e.getSalario()%></td>

                <td><a href=http://localhost:8080/tecnaraEnterprise/employees/deleteEmployee?id=<%=e.getId()%>>
                        <img height="60px" width="60px" src="/tecnaraEnterprise/img/delete.png" alt=""/>
                    </a>
                    <a href=http://localhost:8080/tecnaraEnterprise/employees/updateEmployee?id=<%=e.getId()%>>
                        <img height="60px" width="60px" src="/tecnaraEnterprise/img/update.png" alt=""/>
                    </a>
                    <%}%>

            </tr>

            <%
                }
            %>


        </tr>



    </table>

    <br></br>
</body>
</html>
