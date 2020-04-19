<%-- 
    Document   : modificafinal
    Created on : 17/04/2020, 07:26:37 PM
    Author     : cardu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="css/AcStyle.css"> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Resultado final</h1>
        <%
            String base =request.getParameter("base");
            String key= request.getParameter("guarda");
            String id= request.getParameter("tit");
            String id1= request.getParameter("pre");
            String id2= request.getParameter("aut");
            String id3= request.getParameter("gen");
            String id4= request.getParameter("for");
            String id5= request.getParameter("tie");
            String id6= request.getParameter("edi");
            String id7= request.getParameter("pag");
            String id8= request.getParameter("tip");
            String id9= request.getParameter("ima");            
            
            //out.println(base);
            //out.println(key);
            //out.println(id);
            //out.println(id1);
            //out.println(id2);
            //out.println(id3);
            //out.println(id4);
            //out.println(id5);
            //out.println(id6);
            //out.println(id7);                 
        %>
        <%
        operaciones.Modificacion mo = new operaciones.Modificacion();
        out.println(mo.ejecutaModificacion(base,key,id,id1,id2,id3,id4,id5,id6,id7, id8, id9));
        %>
    </body>
</html>
