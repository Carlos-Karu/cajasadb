<%-- 
    Document   : userMenu
    Created on : 3/04/2020, 04:48:22 PM
    Author     : cardu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Librería Cajasa</title>
    <link rel="stylesheet" href="css/PuStyle.css">
</head>
<header>
    <img class="logo" src="../cajasa/img/Logo.png" alt="">
</header>
<body>
    <section class="login-box">
        <img class="avatar" src="../cajasa/img/Usuario.png" alt="">
        <form action="pagUSer.jsp" method="POST">
            <h1>¿Qué desea hacer?</h1><br>
            <a href="Visualizar.jsp"><h2>Visualizar documentos</h2></a>
            <a href="ConsultaParamTip.jsp"><h2>Buscar un documento por su tipo</h2></a>
            <a href="ConsultaParamLib.jsp"><h2>Buscar un documento por su titulo</h2></a>

        </form>
    </section>
</body>
</html>