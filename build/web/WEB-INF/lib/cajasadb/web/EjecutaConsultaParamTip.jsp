<%-- 
    Document   : EjecutaConsultaParamTip
    Created on : 3/04/2020, 09:33:56 PM
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
        <form class="tabla" action="EjecutaConsulataParamTip.jsp" method="POST">
            <h1>Resultado de la consulta por tipo de documento</h1>
        
            <%
             String param= request.getParameter("tip");
            
            %>
            
            <%
          
            operaciones.ConsultaParametrizadaTip c= new operaciones.ConsultaParametrizadaTip();
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