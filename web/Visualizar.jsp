<%-- 
    Document   : Visualizar
    Created on : 3/04/2020, 05:20:52 PM
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
        <form class="tabla" action="Visualizar.jsp" method="POST">
            <%
           operaciones.Visualizar  c= new operaciones.Visualizar();
            if(c.estaControlador())
            {
                String res=  c.ejecutaConsulta();
                out.println(res);
            }
            else{
                out.println("No se encontro el controlador");
            }
            
            %>
        </form>
    </section>
</body>
</html>
        