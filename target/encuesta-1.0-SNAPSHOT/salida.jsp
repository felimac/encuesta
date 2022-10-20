<%@page import="com.emergentes.Encuesta"%>
<%
    Encuesta encu = (Encuesta) request.getAttribute("encu");
    
    // String lenguajes[] = encu.getLenguajes();
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Gracias por llenar la encuesta</h1>
        <p>Los datos recibidos son:</p>
        <p>Nombre: <%= encu.getNombre() %> y los lenguajes de su preferencia son:</p>
        <ul>
            <%
                if (encu.getLenguajes() != null){
                    for ( String item : encu.getLenguajes() ){
            %>
            
            <li><%= item %></li>
            
            <%
                    }
                }
            %>
        </ul>
        <br>
        <a href="index.jsp">Volver</a>
    </body>
</html>
