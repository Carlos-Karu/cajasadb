<%-- 
    Document   : Insercion
    Created on : 3/04/2020, 06:28:25 PM
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
        <form class="tabla" method="POST">
            <h1>Resultado de la insercion</h1>
        
                <%
                String titu=request.getParameter("tit");
                String prec=request.getParameter("pre");
                String auto=request.getParameter("aut");
                String gene=request.getParameter("gen");
                String form=request.getParameter("for");
                String tae=request.getParameter("tie");
                String edit=request.getParameter("edi");
                String pags=request.getParameter("pag");
                String tipo=request.getParameter("tip");
                String imag=request.getParameter("ima");
            
                %>
        
                <%
                operaciones.Insercion i= new operaciones.Insercion();
         
                String res=  i.ejecutarInsercion(titu,prec,auto,gene,form,tae,edit,pags,tipo,imag);
                out.println(res);
         
         
                %>
            <a href="pagAdmin.jsp"><h2>Volver a la página de inicio</h2></a>
         
        </form>
    </section>
</body>
</html>