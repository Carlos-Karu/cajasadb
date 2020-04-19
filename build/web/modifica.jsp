<%-- 
    Document   : modifica
    Created on : 17/04/2020, 07:28:09 PM
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
        <form class="tabla" target="_SELF" method="POST">
            <h1>Operacion modificacion</h1>
            <hr>
            <%
            String param01 = request.getParameter("mat");
            %>
            <% 
            operaciones.Modificacion m=new operaciones.Modificacion();
               
            if(m.estacontrolador()){
                out.println(m.ejecutaConsulta(param01));
                        
            }else 
            {
            out.println("No se puede modificar");
                    }
            %>
        </form>
        <a href='pagAdmin.jsp'><h2>Regresar al inicio</h2></a>
    </section>
</body>
</html>
