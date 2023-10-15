<%-- 
    Document   : saludos
    Created on : 2 oct. 2023, 21:10:17
    Author     : Iván
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Saludo</title>
</head>
<body>
    <h1>Saludo</h1>
    <%-- Obtenemos los valores enviados desde el formulario --%>
    <% String nombre = request.getParameter("nombre");
       String sexo = request.getParameter("sexo");
       
       String saludo = "";
       if(sexo.equals("hombre")) {
           saludo = "Buenos días señor";
       } else if(sexo.equals("mujer")) {
           saludo = "Buenos días señora";
       }
    %>
    <p><%= saludo %> <%= nombre %></p>
</body>
</html>