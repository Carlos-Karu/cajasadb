<%-- 
    Document   : modificacion
    Created on : 17/04/2020, 07:30:07 PM
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
        <h1>Resultado de la Modificacion</h1>
        <hr>
        <%
            String id= request.getParameter("llave");
            String id1= request.getParameter("llave1");
            String id2= request.getParameter("llave2");
            String id3= request.getParameter("llave3");
            String id4= request.getParameter("llave4");
            String id5= request.getParameter("llave5");
            String id6= request.getParameter("llave6");
            String id7= request.getParameter("llave7");
            String id8= request.getParameter("llave8");
            String id9= request.getParameter("llave9");
                      
        %>
        <div align="center">
        <form action="modificafinal.jsp">
            <input type="hidden" name="guarda" value="<%=id1= request.getParameter("llave1")%>">
            <input type="hidden" name="base" value="<%=id1= request.getParameter("base")%>">
            
            <br>Titulo:
            <input type="text" name="tit" value="<%=id1= request.getParameter("llave1")%>">
            <br>Precio:  
            <input type="text" name="pre" value="<%=id= request.getParameter("llave")%>">
            <br>Autor: 
            <input type="text" name="aut" value="<%=id2= request.getParameter("llave2")%>">
            <br>Genero: 
            <input type="text" name="gen" value="<%=id3= request.getParameter("llave3")%>">
            <br>Formato: 
            <input type="text" name="for" value="<%=id4= request.getParameter("llave4")%>">
            <br>Tiempo: 
            <input type="text" name="tie" value="<%=id5= request.getParameter("llave5")%>">
            <br>Editorial: 
            <input type="text" name="edi" value="<%=id6= request.getParameter("llave6")%>">
            <br>Numero de paginas: 
            <input type="text" name="pag" value="<%=id7= request.getParameter("llave7")%>"> 
            <br>Tipo:
            <input type="text" name="tip" value="<%=id8= request.getParameter("llave8")%>"> 
            <br>Imagen:
            <input type="text" name="ima" value="<%=id9= request.getParameter("llave9")%>"> 
            <br>
            <br>
            <input type="submit"  name="actualiza" value="Actualiza datos">

        </form>
            </div>

    </body>
</html>
