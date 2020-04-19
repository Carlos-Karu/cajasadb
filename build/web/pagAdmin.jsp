<%-- 
    Document   : pagAdmin
    Created on : 2/04/2020, 09:38:52 PM
    Author     : cardu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>

<%
    HttpSession sesion = request.getSession();
    if(sesion.getAttribute("nivel")==null){
        response.sendRedirect("index.jsp");
    } else {
        String nivel = sesion.getAttribute("nivel").toString();
        if(!nivel.equals("1")){
            response.sendRedirect("index.jsp");
        }
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Librería Cajasa</title>
    <link rel="stylesheet" href="css/PrStyle.css">
</head>
<header>
    <img class="logo" src="./img/Logo.png" alt="">
</header>
<body>
    <section class="login-box">
        <img class="avatar" src="./img/Admin.png" alt="">
        <form action="pagAdmin.html" method="POST">
            <h1>¿Qué desea hacer?</h1><br>
            <a href="Visualizar.jsp"><h2>Visualizar documentos</h2></a>
            <a href="ConsultaParamTip.jsp"><h2>Buscar un documento por su tipo</h2></a>
            <a href="ConsultaParamLib.jsp"><h2>Buscar un documento por su titulo</h2></a>
            <a href="Inserta.jsp"><h2>Agregar un nuevo documento</h2></a>
            <a href="Elimina.jsp"><h2>Eliminar un documento</h2></a>
            <a href="modificacion.jsp"><h2>Actualizar un documento</h2></a>

        </form>
    </section>
</body>
</html>
