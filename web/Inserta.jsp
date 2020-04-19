<%-- 
    Document   : Inserta
    Created on : 3/04/2020, 06:28:37 PM
    Author     : cardu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Insertar nuevo documento</title>
    <link rel="stylesheet" href="css/AcStyle.css">
</head>
<header>
    <img class="logo" src="./img/Logo.png" alt="">
</header>
<body>
    <section class="login-box">
        <!-- <img class="avatar" src="./img/Conocimiento.png" alt=""> -->
        <form class="tabla" action="Insercion.jsp" target="_SELF" method="POST">
            <h1>Insertar un nuevo documento</h1>
                <BR>
                <B> Titulo: 
                <input type="Text" name="tit" size="25">
                <BR>
                <B> Precio: 
                <input type="Text" name="pre" size="6">
                <BR>
                <B> Autor: 
                <input type="Text" name="aut" size="25">
                <BR>
                <B> Genero: 
                <input type="Text" name="gen" size="20">
                <BR>
		<B> Formato: 
                <input type="Text" name="for" size="20">
                <BR>
                <B> Tiempo de entrega: 
                <input type="Text" name="tie" size="20">
                <BR>
                <B> Editorial: 
                <input type="Text" name="edi" size="30">
                <br>  
		<B> Paginas: 
                <input type="Text" name="pag" size="5">
                <br> 
		<B> Tipo: 
                <input type="Text" name="gen" size="20">
                <BR>
		<B> Imagen: 
                <input type="text" name="ima" size="25">
                <br> 
                <input type="Submit" value="Insertar Datos">
        </form>
    </section>
</body>
</html>