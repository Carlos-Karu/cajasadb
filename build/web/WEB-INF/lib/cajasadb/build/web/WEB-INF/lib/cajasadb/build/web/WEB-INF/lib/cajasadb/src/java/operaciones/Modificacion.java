package operaciones;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author giner
 */
public class Modificacion {

    public boolean estaControlador() {
        boolean band = false;
        try {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            band = true;

        } catch (ClassNotFoundException | InstantiationException | IllegalAccessException ex) {
            band = false;

            System.out.println("Fallo driver: " + ex);
        } finally {
            return band;
        }
    }

    public String ejecutaConsulta() {
        String consulta = "";
        Connection conn = null;

        try {

            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/", "root", "");

        } catch (SQLException se) {

            consulta += "Mensaje: " + se.getMessage();
            consulta += "Estado: " + se.getSQLState();
            consulta += "Error: " + se.getErrorCode();
        }

        try {

            Statement stat = conn.createStatement();
            ResultSet rs = stat.executeQuery("use cajasadb;");
            rs = stat.executeQuery("select * from libreria");

            consulta += "<table border=1>";
            consulta += "<th>Titulo </th>";
            consulta += "<th>Precio </th>";
            consulta += "<th>Autor </th>";
            consulta += "<th>Genero </th>";
            consulta += "<th>Formato </th>";
            consulta += "<th>Tiempo de entrega </th>";
            consulta += "<th>Editorial </th>";
            consulta += "<th>Paginas </th>";
            consulta += "<th>Tipo </th>";
            consulta += "<th>Imagen </th>";

            while (rs.next()) {

                consulta += "<tr>";

                String k1 = rs.getString("id");

                String k2 = rs.getString("id");
                consulta += "<th>" + rs.getString("titulo") + "</th>";
                consulta += "<th>" + rs.getString("precio") + "</th>";
                consulta += "<th>" + rs.getString("autor") + "</th>";
                consulta += "<th>" + rs.getString("genero") + "</th>";
                consulta += "<th>" + rs.getString("formato") + "</th>";
                consulta += "<th>" + rs.getString("tiempoentrega") + "</th>";
                consulta += "<th>" + rs.getString("editorial") + "</th>";
                consulta += "<th>" + rs.getString("paginas") + "</th>";
                consulta += "<th>" + rs.getString("tipo") + "</th>";
                consulta += "<th> <img src= './img/" + rs.getString("imagen") + "'> </th>";
                consulta += "<th><a href=modificadaMVC.jsp?k1=" + k1 + "&k2=" + k2 + ">Modificar</a> " + "</th>";

            }
            consulta += "</table>";

        } catch (SQLException se) {
            consulta += "LMensaje: " + se.getMessage();
            consulta += "LEstado: " + se.getSQLState();
            consulta += "LError: " + se.getErrorCode();
        } finally {
            return consulta;
        }
    }

    public String JalaDatos(String id) {
        String consulta = "";
        Connection conn = null;

        try {

            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/", "root", "");

        } catch (SQLException se) {

            consulta += "Mensaje: " + se.getMessage();
            consulta += "Estado: " + se.getSQLState();
            consulta += "Error: " + se.getErrorCode();
        }

        try {

            Statement stat = conn.createStatement();
            ResultSet rs = stat.executeQuery("use cajasadb;");
            rs = stat.executeQuery("select * from libreria where id='" + id + "'");

            while (rs.next()) {

                consulta = "<form action=\"modificacionMVC.jsp\" target=\"_SELF\" method=\"POST\">\n"
                        + "            <BR>\n"
                        + "            <B> Titulo:<input type=\"hidden\" name=\"id\" size=\"25\" value=\"" + rs.getString("id") + "\"> \n"
                        + "                <BR><input type=\"Text\" name=\"tit\" size=\"25\" value=\"" + rs.getString("titulo") + "\" >\n"
                        + "            <BR>\n"
                        + "            <B> Precio: \n"
                        + "                <BR><input type=\"text\" name=\"pre\" size=\"6\" value=\"" + rs.getString("precio") + "\">\n"
                        + "            <BR>\n"
                        + "            <B> Autor: \n"
                        + "                <BR><input type=\"Text\" name=\"aut\" size=\"25\" value=\"" + rs.getString("autor") + "\">\n"
                        + "            <BR>\n"
                        + "            <B> Genero: \n"
                        + "                <BR><input type=\"Text\" name=\"gen\" size=\"20\" value=\"" + rs.getString("genero") + "\">\n"
                        + "            <BR>\n"
                        + "            <B> Formato: \n"
                        + "                <BR><input type=\"Text\" name=\"for\" size=\"25\" value=\"" + rs.getString("formato") + "\">\n"
                        + "            <BR>\n"
                        + "            <B> Tiempo de entrega: \n"
                        + "                <BR><input type=\"Text\" name=\"tae\" size=\"25\" value=\"" + rs.getString("tiempoentrega") + "\">\n"
                        + "            <BR>\n"
                        + "            <B> Editorial: \n"
                        + "                <BR><input type=\"Text\" name=\"edi\" size=\"30\" value=\"" + rs.getString("editorial") + "\">\n"
                        + "             <br>  \n"
                        + "				     <B> Paginas: \n"
                        + "                <BR><input type=\"text\" name=\"pag\" size=\"5\" value=\"" + rs.getString("paginas") + "\">\n"
                        + "             <br> \n"
                        + "					   <B> Tipo: \n"
                        + "                <BR><input type=\"Text\" name=\"tip\" size=\"25\" value=\"" + rs.getString("tipo") + "\">\n"
                        + "            <BR>\n"
                        + "				     <B> Imagen: \n"
                        + "                <BR><input type=\"text\" name=\"ima\" size=\"25\" value=\"" + rs.getString("imagen") + "\">\n"
                        + "             <br> \n"
                        + "             <BR><input type=\"Submit\" value=\"Actualizar\">\n"
                        + "            \n"
                        + "        </form>";

            }
            consulta += "</table>";

        } catch (SQLException se) {
            consulta += "LMensaje: " + se.getMessage();
            consulta += "LEstado: " + se.getSQLState();
            consulta += "LError: " + se.getErrorCode();
        } finally {
            return consulta;
        }
    }

    public String ejecutaEliminacion(String id, String titu, String prec, String auto, String gene, String form, String tae, String edit, String pags, String tipo, String imag) {
        String res = "";
        try {
            // create the mysql database connection
            String myDriver = "com.mysql.jdbc.Driver";
            String myUrl = "jdbc:mysql://localhost:3306/cajasadb";
            Class.forName(myDriver);
            Connection conn = DriverManager.getConnection(myUrl, "root", "");

            String query = "UPDATE libreria SET titulo = '" + titu + "', precio = '" + prec + "', autor = '" + auto + "', genero = '" + gene + "', formato = '" + form + "', tiempoentrega = '" + tae + "', editorial = '" + edit + "', paginas = '" + pags + "', tipo='" + tipo + "', imagen='" + imag + "' WHERE libreria.id = " + id + ";";
            Statement preparedStmt = conn.prepareStatement(query);
            //preparedStmt.setInt(1, 3);

            // execute the preparedstatement
            boolean band = preparedStmt.execute(query);

            conn.close();
            if (band == false) {
                res += "Se actualizo con exito el contenido";
            } else {
                res += "No se pudo eliminar";
            }

        } catch (ClassNotFoundException | SQLException e) {
            System.err.println("Got an exception! ");
            System.err.println(e.getMessage());
        } finally {
            return res;
        }
    }

}
