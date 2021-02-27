<%-- 
    Document   : updateLocation
    Created on : 15-oct-2020, 12:46:17
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
         <h1>Actualizar ubicacion:</h1>
        <% HttpSession mySession = request.getSession(false);
        int id = (int)mySession.getAttribute("id");
        String ubicacion = (String)mySession.getAttribute("ubicacion");
        %>
        <form action ="/tecnaraEnterprise/locations/updateLocation" method="post">
            <label for="id">id a modificar:</label>
            <input type="hidden" name="id" value = "<%=id%>">
            <br></br>
            <label for="ubicacion">Nombre:</label>
            <input type="text" name="ubicacion" value = "<%=ubicacion%>">
            
            <input type="submit" value="actualizar">  
            
        </form>
        <br></br>
        <h3><a href="http://localhost:8080/tecnaraEnterprise/locations/listLocations">Volver a la lista</a></h3>
    </body>
</html>
