<%-- 
    Document   : ConsultaParamLib
    Created on : 3/04/2020, 07:55:46 PM
    Author     : cardu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Visulializar documentos</title>
    <link rel="stylesheet" href="css/AcStyle.css">
</head>
<header>
    <img class="logo" src="./img/Logo.png" alt="">
</header>
<body>
    <section class="login-box">
        <!-- <img class="avatar" src="./img/Conocimiento.png" alt=""> -->
        <form class="tabla" action="EjecutaConsulataParamLib.jsp" method="POST">
            <BR>
            <h1>Ingrese el titulo del documento a buscar:</h1>
            <br>
            <input  type="Text" size="100" name="tit">
            <br>
            <input type="Submit" value="Buscar">
        </form>
    </section>
</body>
</html>