<%-- 
    Document   : listLocations
    Created on : 14-oct-2020, 13:44:03
    Author     : daniel
--%>

<%@page import="com.mycompany.tecnaraenterprise.domain.Location"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <h1>Ubicaciones</h1>
        <%@include file="layout/menuLocations.jspf" %>

        <%HttpSession mySession = request.getSession(false);
            List<Location> locations = (List<Location>) mySession.getAttribute("locations");
        %>

        <table border>
            <td><strong>Id</strong></td>
            <td><strong>Ubicacion</strong></td>
            <% if (login != null && login.isIsLogged() && login.getRole().equals("administrador")) {
            %>
            <td><strong>Acciones</strong></td>
            <%}%>


            <%
                for (Location l : locations) {
            %>
            <tr>
                <td><%= l.getId()%></td>
                <td><%= l.getUbicacion()%></td>
                <% if (login != null && login.isIsLogged() && login.getRole().equals("administrador")) {
                %>
                <td><a href=http://localhost:8080/tecnaraEnterprise/locations/deleteLocation?id=<%=l.getId()%>>
                        <img height="60px" width="60px" src="/tecnaraEnterprise/img/delete.png" alt=""/>
                    </a>
                    <a href=http://localhost:8080/tecnaraEnterprise/locations/updateLocation?id=<%=l.getId()%>>
                        <img height="60px" width="60px" src="/tecnaraEnterprise/img/update.png" alt=""/>
                    </a>
                    <%}%>
            </tr>

            <%}

            %>


        </tr>



    </table>

    <br></br>


</body>
</html>
