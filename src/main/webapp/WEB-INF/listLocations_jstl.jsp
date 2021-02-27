<%-- 
    Document   : listLocations_jstl
    Created on : 16-oct-2020, 13:01:45
    Author     : daniel
--%>

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
        <h1>Ubicaciones</h1>
        <%@include file="layout/menu.jspf" %>



        <table border>
            <td><strong>Id</strong></td>
            <td><strong>Ubicacion</strong></td>
            <c:if test="${login != null && login.isIsLogged() && login.isAdmin == true}"> 
            <td><strong>Acciones</strong></td>
            </c:if>


            <c:forEach items="${locations}"  var="location">
                <tr>
                    <td>${location.id}</td>
                    <td>${location.ubicacion}</td>
                    <c:if test = "${login != null && login.isLogged == true && login.isAdmin == true}">

                        <td><a href=http://localhost:8080/tecnaraEnterprise/locations/deleteLocation?id=${location.id}>
                                <img height="60px" width="60px" src="/tecnaraEnterprise/img/delete.png" alt=""/>
                            </a>
                            <a href=http://localhost:8080/tecnaraEnterprise/locations/updateLocation?id=${location.id}>
                                <img height="60px" width="60px" src="/tecnaraEnterprise/img/update.png" alt=""/>
                            </a>


                        </c:if>

                </tr>

            </c:forEach>



        </tr>



    </table>

    <br></br>


</body>
</html>
