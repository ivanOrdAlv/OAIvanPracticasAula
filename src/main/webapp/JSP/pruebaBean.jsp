
<%@page import="es.albarregas.beans.Persona"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
  Persona persona=new Persona();
  Persona persona1=new Persona("Pedro","Prieto",Byte.parseByte("0"),2000.0);
persona.setNombre("Juan");
persona.setApellidos("Macias");
persona.setNumHijos(Byte.parseByte("2"));
persona.setSalario(1200.35);

request.getSession().setAttribute("personaSesion", persona);

request.setAttribute("personaPeticion", persona1);

response.sendRedirect("pruebaBeanSalir.jsp");


%>