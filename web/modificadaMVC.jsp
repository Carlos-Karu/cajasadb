<%-- 
    Document   : modificadaMVC
    Created on : 20/04/2020, 11:07:51 PM
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
        <section class="login-box" style="text-align: center;">
            <h1>MODIFICAR CONTENIDO</h1>
        <%
            operaciones.Modificacion el= new operaciones.Modificacion();
            if(el.estaControlador())
            {
              
            String k1= request.getParameter("k1");
            
         
            out.println(el.JalaDatos(k1));
            
            }else
            {
                out.println("No se puede eliminar");
            }
            
            
            %>
            <br><br><a href="pagAdmin.jsp" target="_SELF"> Salir al menu</a>
        </section>
    </body>
</html>
