<%-- 
    Document   : newjsp
    Created on : 9 oct. 2023, 20:18:08
    Author     : Iván
--%>

<%@page language="java"contentType="text/html" pageEncoding="UTF-8"%>
<%
    Cookie[] cookies=request.getCookies();
    if(cookies!=null)
    %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
