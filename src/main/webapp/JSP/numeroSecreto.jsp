<%-- 
    Document   : numeroSecreto
    Created on : 4 oct. 2023, 16:12:22
    Author     : carom
--%>

<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Adivina el número</title>
     <link rel="stylesheet" type="text/css" href="../CSS/numerosecreto.css">
</head>
<body>
    <h1>Adivina el número entre 1 y 100</h1>

    <%
        // Verificar si se ha enviado un intento
        String intentoStr = request.getParameter("intento");
        int intento = 0;
        
        
        // Obtener el número aleatorio de la sesión o generar uno nuevo si es la primera vez
        Integer numeroAleatorio = (Integer) session.getAttribute("numeroAleatorio");
        if (numeroAleatorio == null) {
            numeroAleatorio = (int) (Math.random() * 100) + 1;
            session.setAttribute("numeroAleatorio", numeroAleatorio);
        }

        // Obtener la lista de intentos incorrectos de la sesión o crear una nueva si es la primera vez
        ArrayList<Integer> intentosIncorrectos = (ArrayList<Integer>) session.getAttribute("intentosIncorrectos");
        if (intentosIncorrectos == null) {
            intentosIncorrectos = new ArrayList<>();
            session.setAttribute("intentosIncorrectos", intentosIncorrectos);
        }

        if (intentoStr != null) {
            intento = Integer.parseInt(intentoStr);

            // Comprobar si el intento es correcto
            if (intento == numeroAleatorio) {
                out.println("¡Felicitaciones! Has adivinado el número.");
            } else if (intento < numeroAleatorio) {
                out.println("El número es mayor. Intenta de nuevo.");
                intentosIncorrectos.add(intento); // Agregar el intento incorrecto a la lista
            } else {
                out.println("El número es menor. Intenta de nuevo.");
                intentosIncorrectos.add(intento); // Agregar el intento incorrecto a la lista
            }
        }
        
        
        // Mostrar la lista de intentos incorrectos en una tabla
    %>



    <form method="post">
        <input type="text" name="intento" placeholder="Ingresa tu número">
        <input type="submit" value="Adivinar">
    </form>    
    <table border="1">
        <tr>
            <th>Intentos Incorrectos</th>
        </tr>
        <%
            for (Integer intentoIncorrecto : intentosIncorrectos) {
        %>
            <tr>
                <td><%= intentoIncorrecto %></td>
            </tr>
        <%
            }
        %>
    </table>
    <% if (intento == numeroAleatorio) { %>
    <p><a href="http://localhost:8084/OAIvanPracticasAula/">Volver al menú</a></p>
    <% } %>
</body>
</html>