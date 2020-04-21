<%-- 
    Document   : modificacionMVC
    Created on : 20/04/2020, 11:07:32 PM
    Author     : cardu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>LISTO</h1>
        <%
         
         String id=request.getParameter("id");
         String titu=request.getParameter("tit");
         String prec=request.getParameter("pre");
         String auto=request.getParameter("aut");
         String gene=request.getParameter("gen");
         String form=request.getParameter("for");
         String tae=request.getParameter("tae");
         String edit=request.getParameter("edi");
         String pags=request.getParameter("pag");
         String tipo=request.getParameter("tip");
         String imag=request.getParameter("ima");
            
         operaciones.Modificacion el= new operaciones.Modificacion();
         
           out.println(el.ejecutaEliminacion(id,titu,prec,auto,gene,form,tae,edit,pags,tipo, imag));
            
            %>
                    <br><br><a href="pagAdmin.jsp" target="_SELF"> Salir al menu</a>
    </body>
</html>
