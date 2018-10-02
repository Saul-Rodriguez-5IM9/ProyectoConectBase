<%-- 
    Document   : IndexJsp
    Created on : 1/10/2018, 08:10:11 AM
    Author     : Alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
            if(request.getParameter("BRegistro")!=null){
%>
                <jsp:forward page="JSPs/RegistroJSP.jsp"/>

<%
    return;}  
%>



<%
            if(request.getParameter("BSesion")!=null){
%>
                <jsp:forward page="JSPs/LoginJSP.jsp"/>

<%
    return;}  
%>

<html>
    <head>
        <meta language="java" http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>Home</title>
    </head>
    <body>
    <center>

        <h1>HOME</h1>
        <form action="Index.jsp">
          
            <input type="submit" name="BRegistro" value="Regístrate">
            <input type="submit" name="BSesion" value="Ingresa">

            
        </form>
    </center>
    </body>
</html>
