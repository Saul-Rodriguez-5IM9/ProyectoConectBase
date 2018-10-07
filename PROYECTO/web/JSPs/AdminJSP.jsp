<%-- 
    Document   : AdminJSP
    Created on : 6/10/2018, 07:21:30 PM
    Author     : HP-PC
--%>
<%@page import="java.sql.*,java.io.*" %>
<%@page import="mx.edu.ipn.cecyt9.edusite.Utilerias.Conexion" %>
        
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ADMINISTRADOR</title>
    </head>
    <body>
        <h1>PÁGINA DE ADMINISTRADOR</h1>
        <h2>REGISTROS</h2>
        <%
            try{
         Conexion Conexion= new Conexion("localhost","lab3","root", "n0m3l0");
         Connection Conex= Conexion.getConexion();
         Statement st=Conex.createStatement();
         ResultSet rs=st.executeQuery("select * from usuario");
         while(rs.next()){
             String UserName=rs.getString("usuario");
             String Contraseña=rs.getString("contraseña");
            String Name=rs.getString("nombre");
            String ApPat=rs.getString("apellido_paterno");
            String ApMat=rs.getString("apellido_materno");
            String Tel=rs.getString("telefono");
            String Mail=rs.getString("correo");
            out.println(UserName+"   "+Contraseña+"   "+Name+"   "+ApPat+"   "+ApMat+"   "+Tel+"    "+Mail);
            out.println("<br><br>");
            
         }
            }
            catch(SQLException e){
                System.out.println(e.toString());
            }
        %>
    <buton><a href="Index.jsp">REGRESAR</a></buton>
    </body>
</html>
