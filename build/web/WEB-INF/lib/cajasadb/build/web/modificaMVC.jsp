<%-- 
    Document   : modificaMVC
    Created on : 20/04/2020, 11:08:09 PM
    Author     : cardu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/AcStyle.css">
    </head>
    <body>
        <section class="login-box">
            <h1>MODIFICAR DATOS DEL CONTENIDO</h1>
        <%
            operaciones.Modificacion el= new operaciones.Modificacion();
            if(el.estaControlador())
            {
                out.println(el.ejecutaConsulta());
            }else
            {
                out.println("No se puede eliminar");
            }
            
            
            %>
        <br><a href="pagAdmin.jsp" target="_SELF"> Salir al menu</a>
        </section>
    </body>
</html>
