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
    <img class="logo" src="./img/Logo.png" alt="">
</header>

<body>
    <section class="login-box">
        <!-- <img class="avatar" src="./img/Conocimiento.png" alt=""> -->
        <form class="tabla" action="EjecutaConsultaParamTip.jsp" method="POST"
        style="
            width: 90%;
            margin: auto;
            text-align: center;
        ">
            <BR>
            <h1 style="color: white;">Ingrese el tipo del documento a buscar:</h1>
            <br>
            <select id="idOptionTypes" name="tip" style="font-weight: bold; width: 50%; font-size: 3vw;">
                <option value="libro">Libro</option>
                <option value="revista">Revista</option>
                <option value="periodico">Periódico</option>
            </select>
            <br>
            <br>
            <input type="Submit" value="Buscar"
            style="
                border: none;
                background-color: aquamarine;
                color: #424242;
                width: 10%;
                font-weight: bold;
                font-size: 1vw;
            ">
        </form>
    </section>
</body>

</html>