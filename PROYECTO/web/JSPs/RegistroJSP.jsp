<%-- 
    Document   : Registro
    Created on : 1/10/2018, 07:36:23 AM
    Author     : Alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%--
<%
    
  String IDusuario = request.getParameter("TidUsuario");
  
    
%>    



<%
            if(request.getParameter("BAceptar")!=null){
%>
                 ${usuario.nombre}

<%
    return;}  
%>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro</title>
    </head>
    <body>
        <h1>Regístrate</h1>
        class="aqui va la localizacion del Bean" --%>
        <jsp:useBean id="usuario" scope="page" class="mx.edu.ipn.cecyt9.edusite.Model.Usuario" >
        </jsp:useBean> 
            ${usuario.setNombre(IDusuario)}
           
            <center>
            <form action="RegistroJSP.jsp">
                <h4>INGRESE LOS SIGUIENTES DATOS</h4><br>
            <%--
                El ID se asignara automaticamente
                <input type="text" name="TidUsuario">
            <br>--%>
            Nombre de Usuario: <input type="text" name="TUserName">
            <br><br>
            Contraseña: <input type="password" name="TContraseña1"> 
            
            Confirme Contraseña: <input type="password" name="TContraseña2">
            <br><br>
            Correo Electrónico:<input type="text" name="TMail">
            <br><br>
            Nombres: <input type="text" name="TName">
            <br><br>
            Apellido Paterno: <input type="text" name="TApellidoP">
            <br><br>
            Apellido Materno:<input type="text" name="TApellidoM">
            <br><br>
            Número telefónico: <input type="text" name="TTelefono">
            <br><br>
            
            Tipo de usuario: <input type="text" name="TidRol">
            <br><br>
            
            <input type="submit" value="ACEPTAR" name="BAceptar">
            
        </form>
            </center>
    </body>
</html>
