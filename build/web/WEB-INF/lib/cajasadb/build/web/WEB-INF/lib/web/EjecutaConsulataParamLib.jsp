<%-- 
    Document   : EjecutaConsulataParamLib
    Created on : 3/04/2020, 07:56:05 PM
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
        <form class="tabla" action="EjecutaConsulataParamLib.jsp" method="POST"
        style="
            width: 90%;
            margin: auto;
            text-align: center;
        ">
            <h1>Resultado de la consulta por titulo del documento</h1>
        
            <%
             String param= request.getParameter("tit");
            
            %>
            
            <%
          
            operaciones.ConsultaParametrizadaLib c= new operaciones.ConsultaParametrizadaLib();
            if(c.estaControlador())
            {
            String res=  c.ejecutaConsulta(param);
            out.println(res);
            } 
            else
            {
              out.println("No se pudo realizar la consulta");
            }
            %> 
          
          <a href="pagAdmin.jsp"><h2>Volver a la página de inicio</h2></a>
        </form>
    </section>
</body>
</html>