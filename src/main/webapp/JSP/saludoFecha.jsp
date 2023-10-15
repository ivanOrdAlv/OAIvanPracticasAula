<%-- 
    Document   : saludos
    Created on : 2 oct. 2023, 21:10:17
    Author     : Iván
--%>

<%@page import="java.time.Period"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Saludo</title>
</head>
<body>
    <h1>Saludoss</h1>
    <%-- Obtenemos los valores enviados desde el formulario --%>
    <% 
       
       LocalDate hoy=LocalDate.now();
       String[]fecha=request.getParameter("fechaNacimiento").split("-");
       
       LocalDate nac=LocalDate.of(Integer.parseInt(fecha[0]),Integer.parseInt(fecha[1]),Integer.parseInt(fecha[2]));
       StringBuilder salida=new StringBuilder("Hola").append(request.getParameter("nombre"));
       
       Period edad=Period.between(nac,hoy);
       if(edad.getDays()>0){
       salida.append("s, ");
        }else{
        
        }
       String opcion="";
       opcion="Su fecha de nacimiento es: ";
       
       
       
      
    %>
    <p><%= opcion %> </p>
</body>
</html>