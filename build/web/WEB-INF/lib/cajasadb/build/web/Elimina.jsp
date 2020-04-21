<%-- 
    Document   : Elimina
    Created on : 3/04/2020, 06:05:47 PM
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

<body>
    <header style="display: inline-flex">
        <img class="logo" src="./img/Logo.png" alt="">
    </header>
    <section class="login-box">
        <h1>Eliminación de un documento</h1>
        <!-- <img class="avatar" src="./img/Conocimiento.png" alt=""> -->
        <form class="tabla" action="Elimina.jsp" method="POST">
                <%
               operaciones.Eliminacion el= new operaciones.Eliminacion();
               if(el.estaControlador())
               {
                out.println(el.ejecutaConsulta());
               }else
               {
                out.println("No se puede eliminar");
               }
            
            
                %>
        
        <a href="pagAdmin.jsp"><h2>Volver a la página de inicio</h2></a>
        </form>
    </section>
</body>
</html>