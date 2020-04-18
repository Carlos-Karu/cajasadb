package operaciones;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author cardu
 */
public class Modificacion {

    public boolean estacontrolador() {
        boolean ban = false;
        try {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            ban = true;

        } catch (Exception ex) {
            ban = false;
            System.out.println("Entro a 2");
            System.out.println("Fallo driver: " + ex);
        } finally {
            return ban;
        }
    }

    public String ejecutaConsulta(String param02) throws SQLException {

        String consulta = "";
        Connection conn = null;
        Statement stat = null;
        ResultSet rs = null;
        try {
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/", "root", "");

        } catch (SQLException se) {
            consulta += "Mensaje: " + se.getMessage();
            consulta += "Estado: " + se.getSQLState();
            consulta += "Error: " + se.getErrorCode();
        }

        try {
            stat = conn.createStatement();
            rs = stat.executeQuery("use cajasadb;");
            if (null != param02) {
                    rs = stat.executeQuery("select * from libreria");
                }
            //rs=stat.executeQuery("select * from libreria");
            consulta += "<table border=1";
            consulta += "<th>Titulo</th>";
            consulta += "<th>Precio</th>";
            consulta += "<th>Autor</th>";
            consulta += "<th>Genero</th>";
            consulta += "<th>Formato</th>";
            consulta += "<th>Tiempo</th>";
            consulta += "<th>Editorial</th>";
            consulta += "<th>Numero de Paginas</th>";
            consulta += "<th>Tipo</th>";
            consulta += "<th>Imagen</th>";

            while (rs.next()) {
                consulta += "<tr>";
                consulta += "<td> " + rs.getString("titulo");
                String key2 = rs.getString("titulo");
                consulta += "<td> " + rs.getString("precio");
                String key1 = rs.getString("precio");
                consulta += "<td> " + rs.getString("autor");
                String key3 = rs.getString("autor");
                consulta += "<td> " + rs.getString("genero");
                String key4 = rs.getString("genero");
                consulta += "<td> " + rs.getString("formato");
                String key5 = rs.getString("formato");
                consulta += "<td> " + rs.getString("tiempoentrega");
                String key6 = rs.getString("tiempoentrega");
                consulta += "<td> " + rs.getString("editorial");
                String key7 = rs.getString("editorial");
                consulta += "<td> " + rs.getString("paginas");
                String key8 = rs.getString("paginas");
                consulta += "<td> " + rs.getString("tipo");
                String key9 = rs.getString("tipo");
                consulta += "<td> " + rs.getString("imagen");
                String key10 = rs.getString("imagen");
                String cadena = new String(key1);
                String cadena1 = new String(key2);
                String cadena2 = new String(key3);
                String cadena3 = new String(key4);
                String cadena4 = new String(key5);
                String cadena5 = new String(key6);
                String cadena6 = new String(key7);
                String cadena7 = new String(key8);
                String cadena8 = new String(key9);
                String cadena9 = new String(key10);

                consulta += "<td><form action='modificacion.jsp' method='POST'>"
                        + "<input type='Hidden' value='" + param02 + "' name='base'>"
                        + "<input type='Hidden' value='" + cadena + "' name='llave'>"
                        + "<input type='Hidden' value='" + cadena1 + "' name='llave1'>"
                        + "<input type='Hidden' value='" + cadena2 + "' name='llave2'>"
                        + "<input type='Hidden' value='" + cadena3 + "' name='llave3'>"
                        + "<input type='Hidden' value='" + cadena4 + "' name='llave4'>"
                        + "<input type='Hidden' value='" + cadena5 + "' name='llave5'>"
                        + "<input type='Hidden' value='" + cadena6 + "' name='llave6'>"
                        + "<input type='Hidden' value='" + cadena7 + "' name='llave7'>"
                        + "<input type='Hidden' value='" + cadena8 + "' name='llave8'>"
                        + "<input type='Hidden' value='" + cadena9 + "' name='llave9'>"
                        + "<input type='Submit' value='Modificar'>"
                        + "</form>" + "</td>";
                consulta += "</tr>";
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

    public String ejecutaModificacion(String param02, String key, String titulo, String precio, String autor, String genero, String formato, String tiempo, String editorial, String paginas, String tipo, String imagen) {
        String consulta = "";
        Connection conn = null;
        Statement stat = null;
        ResultSet rs = null;
        try {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
        } catch (Exception ex) {
            System.out.println("Fallo driver: " + ex);
        }

        try {
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/", "root", "");

        } catch (SQLException se) {
            consulta += "Mensaje: " + se.getMessage();
            consulta += "Estado: " + se.getSQLState();
            consulta += "Error: " + se.getErrorCode();
        }
        try {
            stat = conn.createStatement();
            rs = stat.executeQuery("use cajasadb");
            if (null != param02) {
                        //rs = stat.executeQuery("select * from periodicos where Titulo='"+key+"'");
                        stat.executeUpdate("Update libreria set titulo='" + titulo + "', precio='" + precio + "', autor='" + autor + "', genero='" + genero + "', formato='"
                                + formato + "', tiempoentrega='" + tiempo + "', paginas='" + paginas + "', tipo='" + tipo + "', imagen='" + imagen +"' where titulo='" + key + "'");
                }
//rs=stat.executeQuery("select * from equipos where Nombre='"+key+"'");
//stat.executeUpdate("Update equipos set Titulo='"+titulo+"', Precio='"+precio+"', Autor='"+autor+"', Genero='"+genero+"', Formato='"+
            //                  formato+"', Tiempo='"+tiempo+"' where Nombre='"+key+"'");

            consulta += key;
            consulta += "Los datos han sido modificados";
            consulta += "<br>";
            consulta += "<a href=pagAdmin>Regresar al inicio </a>";
        } catch (Exception se) {

        } finally {
            return consulta;
        }

    }

}
