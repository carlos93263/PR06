<%-- 
    Document   : index
    Created on : 11-abr-2016, 13:13:32
    Author     : Carlos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tienda</title>
        <link href='https://fonts.googleapis.com/css?family=Ubuntu:400,500,300,700' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="css/reset.css"/>
        <link rel="stylesheet" href="css/style.css"/>
    </head>
    <body>
        <div class="box">
        <a class="redirect" href ='index.jsp' >Client access</a>    
        </div>
        <div id="wrapper_login">
            <div id="form_login">
                <div class="header"><h1>Admin Access</h1></div>
                <form action="ValidacionAdmin" method="post">
                    <h2>User</h2>
                    <input type="text" placeholder="Introduce your username" name="user" id="user"/>
                    <h2>Password</h2>
                    <input type="password" placeholder="*******" name="pass" id="pass"/>
                    <input type="submit" name="Entrar" id="Entrar" value="Login"/>
                </form>
            </div>
        </div>
    </body>
</html>
