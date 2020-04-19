<%-- 
    Document   : Eliminacion
    Created on : 3/04/2020, 06:05:59 PM
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
        <form class="tabla" action="Elimina.jsp" method="POST">
            <h1>Resultado de la eliminacion con MVC</h1>
            <%
            String k1= request.getParameter("k1");
            String k2= request.getParameter("k2");
         
            operaciones.Eliminacion el= new operaciones.Eliminacion();
         
            out.println(el.ejecutaEliminacion(k1, k2));
            
            %>
        
        <a href="pagAdmin.jsp"><h2>Volver a la página de inicio</h2></a>
        </form>
    </section>
</body>
</html>