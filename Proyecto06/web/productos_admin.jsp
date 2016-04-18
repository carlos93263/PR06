<%-- 
    Document   : productos_admin
    Created on : 15-abr-2016, 10:40:54
    Author     : Carlos
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="model.Producto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Administrar Productos</title>
        <link href='https://fonts.googleapis.com/css?family=Ubuntu:400,500,300,700' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="css/reset.css"/>
        <link rel="stylesheet" href="css/style.css"/>
    </head>
    <body>
        <% ArrayList<Producto> lista = new ArrayList<Producto>();
        Producto pro_mos = new Producto();
        pro_mos.mostrar(lista);
        %>
        <div class="content">
            <table border="1px">
                <th>Product ID</th>
                <th>Product Name</th>
                <th>Product Price</th>
                <th>Product Description</th>
                <th>Modify Product</th>
                <th>Delete Product</th>

                <% 
                for(Producto c1:lista){
                %>

                <tr>
                    <td><% out.println(c1.getProd_id()); %></td>
                    <td><% out.println(c1.getProd_name()); %></td>
                    <td><% out.println(c1.getProd_price()); %></td>
                    <td><% out.println(c1.getProd_desc()); %></td>
                    <td>///</td>
                    <td>XXX</td>
                </tr>

                <% } %>

            </table>
        </div>
    </body>
</html>
