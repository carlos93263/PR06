<%-- 
    Document   : registro
    Created on : 12-abr-2016, 11:49:43
    Author     : Carlos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="js/validaFormulario.js" type="text/javascript"></script>
        <link rel="stylesheet" href="css/style.css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <div id="wrapper_register">
            <form id="form_register" method="POST" action="InsertRegistro" onsubmit="return validaFormulario();">
                <div class="header_register"><h1>Register</h1></div>
                <!-- CORREO ELECTRONICO DEL USUARIO -->
                <h2>e-Mail</h2>
                <div>
                    <input id="correo" placeholder="example@email.com" name="correo" class="element text medium" type="text" maxlength="50" size="30" value=""/>
                    <span id="error_correo_vacio" class="error"></span>
                    <span id="error_correo_formato" class="error"></span>
                </div>
                <!-- CONTRASEÑA DEL USUARIO -->
                <h2>Password</h2>
                <div>
                    <input id="contrasena" placeholder="*******" name="contrasena" type="password" value=""/>
                    <span id="error_contrasena_vacio" class="error"></span>
                </div>
                <!-- CONFIRMACIÓN DEL USUARIO -->
                <h2>Confirm Password</h2>
                <div>
                <input id="confirmar_contrasena" placeholder="*******" type="password" />
                <span id="error_confirmar_contrasena_vacio" class="error"></span>
                <span id="error_confirmar_contrasena_incorrecto" class="error"></span>
                </div>
                <!-- APODO O NICKNAME DEL USUARIO -->
                <h2>Name</h2>
                <div>
                        <input id="nombre" placeholder="Your name" name="nombre"  maxlength="30" size="30" value=""/>
                        <span id="error_nombre" class="error"></span>
                </div>
                <!-- APODO O NICKNAME DEL USUARIO -->
                <h2>Apellidos: </h2>
                <div>
                    <input id="apellidos" placeholder="Your surnames" name="apellidos"  maxlength="50" size="30" value=""/>
                    <span id="error_apellidos" class="error"></span>
                </div>
                <!-- BOTON DE ENVIAR -->
                <input type="submit" name="submit" value="Register" />
                <input type="button" onclick="location='index.jsp'" value="Go back"/>
            </form>
        </div>
    </body>
</html>
