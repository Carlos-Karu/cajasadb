<%-- 
    Document   : ConsultaParamTip
    Created on : 3/04/2020, 09:33:38 PM
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
    <img class="logo" src="../cajasa/img/Logo.png" alt="">
</header>
<body>
    <section class="login-box">
        <img class="avatar" src="../cajasa/img/Conocimiento.png" alt="">
        <form class="tabla" action="EjecutaConsultaParamTip.jsp" method="POST">
            <BR>
            <h1>Ingrese el tipo del documento a buscar:</h1>
            <h4>NOTA: recuerda que los tipos son libro, revista y periodico</h4>
            <br>
            <input  type="Text" size="20" name="tip">
            <br>
            <input type="Submit" value="Buscar">
        </form>
    </section>
</body>
</html>