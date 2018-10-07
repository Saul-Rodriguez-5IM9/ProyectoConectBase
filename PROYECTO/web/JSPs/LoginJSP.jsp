<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>

	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">

	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">

	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">

	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">

	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">

	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">

	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">

	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
        
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        
        <div class="container-contact100">
		<div class="wrap-contact100">
                    <form id="Formu2" class="contact100-form validate-form" action="./LOGIN" method="POST">
				<span class="contact100-form-title">
					LOGIN
				</span>
                <h4>INGRESE SUS DATOS</h4><br>
            <div class="wrap-input100 validate-input" data-validate="Campo Obligatorio">
					<span class="label-input100">Nombre de usuario</span>
					<input class="input100" type="text" name="TUserName" placeholder="Ingresa Nombre de usuario">
					<span class="focus-input100"></span>
				</div>
            
            <div class="wrap-input100 validate-input" data-validate="Campo Obligatorio">
					<span class="label-input100">Contraseña</span>
					<input class="input100" type="password" name="TContra" placeholder="Ingresa Contraseña">
					<span class="focus-input100"></span>
				</div>
            <div class="container-contact100-form-btn">
					<div class="wrap-contact100-form-btn">
						<div class="contact100-form-bgbtn"></div>
            <button class="contact100-form-btn" form="Formu2">
							<span>
								ENVIAR
								<i class="fa fa-long-arrow-right m-l-7" aria-hidden="true"></i>
							</span>
						</button>
					</div>
				</div>

    </body>
</html>
