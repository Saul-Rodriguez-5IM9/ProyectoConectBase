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
            if(request.getParameter("BAdmin")!=null){
%>
                <jsp:forward page="JSPs/AdminJSP.jsp"/>

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
        <meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
        
        
        <meta language="java" http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>Home</title>
    </head>
    <body>
    <center>
        <div class="container-contact100">
		<div class="wrap-contact100">
			<form class="contact100-form validate-form">
				<span class="contact100-form-title">
					HOME
				</span>
                            <form action="Index.jsp" >
          
            
            <div class="container-contact100-form-btn">
					<div class="wrap-contact100-form-btn">
						<div class="contact100-form-bgbtn"></div>
                                                <button class="contact100-form-btn" name="BRegistro">
							<span>
								Registrate
								
							</span>
						</button>
					</div>
				</div>
            
            <div class="container-contact100-form-btn">
					<div class="wrap-contact100-form-btn">
						<div class="contact100-form-bgbtn"></div>
                                                <button class="contact100-form-btn" name="BSesion">
							<span>
								INGRESA
							</span>
						</button>
					</div>
				</div>
            
            <div class="container-contact100-form-btn">
					<div class="wrap-contact100-form-btn">
						<div class="contact100-form-bgbtn"></div>
                                                <button class="contact100-form-btn" name="BAdmin">
							<span>
								ADMINISTRAR
							</span>
						</button>
					</div>
				</div>

            
        </form>
        
                </DIV>
        </DIV>
    </center>
    </body>
</html>
