<%-- 
    Document   : usuarios_admin
    Created on : 15-abr-2016, 10:41:04
    Author     : Carlos
--%>

<%@page import="model.Cliente"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Administrar Usuarios</title>
        <link href='https://fonts.googleapis.com/css?family=Ubuntu:400,500,300,700' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="css/reset.css"/>
        <link rel="stylesheet" href="css/style.css"/>
    </head>
    <body>
       
        <% ArrayList<Cliente> lista = new ArrayList<Cliente>();
        Cliente cli_mos = new Cliente();
        cli_mos.mostrar(lista);
        %>
        <div class="content">
            <table border="1px">
                <th>User ID</th>
                <th>User Name</th>
                <th>User Surname</th>
                <th>User Mail</th>
                <th>User Password</th>
                <th>Modify User</th>
                <th>Delete User</th>

                <% 
                for(Cliente c1:lista){
                %>

                <tr>
                    <td><% out.println(c1.getUser_id()); %></td>
                    <td><% out.println(c1.getUser_name()); %></td>
                    <td><% out.println(c1.getUser_surname()); %></td>
                    <td><% out.println(c1.getUser_mail()); %></td>
                    <td><% out.println(c1.getUser_pass()); %></td>
                    <td>///</td>
                    <td>XXX</td>
                </tr>

                <% } %>

            </table>
        </div>
    </body>
</html>
