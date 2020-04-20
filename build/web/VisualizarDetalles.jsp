<%-- 
    Document   : VisualizarDetalles
    Created on : 19/04/2020, 11:48:07 AM
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
        <form class="tabla" action="Visualizar.jsp" method="POST">
            <h1>Detalles del documento seleccionado</h1>
            <%
            String k1= request.getParameter("k1");
            String k2= request.getParameter("k2");
         
            operaciones.VerDetalles el= new operaciones.VerDetalles();
         
            out.println(el.ejecutaEliminacion(k1, k2));
            
            %>
        
        <a href="pagAdmin.jsp"><h2>Volver a la página de inicio</h2></a>
        </form>
    </section>
</body>
</html>