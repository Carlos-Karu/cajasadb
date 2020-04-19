<%-- 
    Document   : index
    Created on : 2/04/2020, 07:43:42 PM
    Author     : cardu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Biblioteca virtual Cajasa</title>
    <link rel="stylesheet" href="css/Style.css">
</head>
<header>
    <img class="logo" src="./img/Logo.png" alt="">
</header>

<body>
    <section class="login-box">
        <img class="avatar" src="./img/Conocimiento.png" alt="">
        <h1>¿Administrador? No olvides iniciar sesión</h1>

        <form action="SERVLOGIN" method="POST">
            <label for="username">Username</label>
            <input name="email" type="text" placeholder="Enter Username">


            <label for="password">Password</label>
            <input name="pass" type="text" placeholder="Enter Password">

            <input type="submit" name="btniniciar" value="Log-In" style="cursor: pointer;">

            <a href="pagUser.jsp">
                <h2>¿Visitante? Accede y disfruta tu estancia</h2>
            </a>
        </form>
    </section>
    <%
        HttpSession sesion = request.getSession();
        int nivel=0;
        if(request.getAttribute("nivel")!= null){
            nivel = (Integer)request.getAttribute("nivel");
            if(nivel==1){
                sesion.setAttribute("nombre", request.getAttribute("nombre"));
                sesion.setAttribute("nivel", nivel);
                response.sendRedirect("pagAdmin.jsp");
            }
        }
    %>
</body>

</html>