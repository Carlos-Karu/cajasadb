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
 * @author cardu
 */
public class ConsultaParametrizadaTip {
    
       

public boolean estaControlador()
{
 boolean band=false;
 try
{
Class.forName("com.mysql.jdbc.Driver").newInstance();
band=true;


} catch(ClassNotFoundException | InstantiationException | IllegalAccessException ex) {
    band=false;
 
    System.out.println("Fallo driver: "+ex);
}
 
    
 finally
 {
   return band;      
}
}

public String ejecutaConsulta(String param)
{
 String consulta=""; 
      Connection conn=null;
 
 try
{

conn=DriverManager.getConnection("jdbc:mysql://node53445-arquitectura-equipo1.jl.serv.net.mx:3306/cajasadb","root","jx5jzKVCMi");

} catch (SQLException se)
{
  
consulta+="Mensaje: "+se.getMessage();
consulta+="Estado: "+se.getSQLState();
consulta+="Error: "+se.getErrorCode();
}

try
{
  
Statement stat=conn.createStatement();
ResultSet rs=stat.executeQuery("use cajasadb;");
rs=stat.executeQuery("select * from libreria where tipo LIKE '%"+param+"%'");


consulta+="<table border=1>";
consulta+="<th><h2>Titulo </h2></th>";
consulta+="<th><h2>Precio </h2></th>";
consulta+="<th><h2>Autor </h2></th>";
consulta+="<th><h2>Genero </h2></th>";
consulta+="<th><h2>Formato </h2> </th>";
consulta+="<th><h2>Tiempo de entrega </h2> </th>";
consulta+="<th><h2>Editorial </h2> </th>";
consulta+="<th><h2>Número de páginas </h2> </th>";
consulta+="<th><h2>Tipo </h2> </th>";
consulta+="<th><h2>Imagen </h2> </th>";

while (rs.next())
{
    
consulta+="<tr>";
    
consulta+="<th>" +rs.getString("titulo")+"</th>" ;
consulta+="<th>" +rs.getString("precio")+"</th>";
consulta+="<th>" +rs.getString("autor")+"</th>";
consulta+="<th>" +rs.getString("genero")+"</th>";
consulta+="<th>" +rs.getString("formato")+"</th>";
consulta+="<th>" +rs.getString("tiempoentrega")+"</th>";
consulta+="<th>" +rs.getString("editorial")+"</th>";
consulta+="<th>" +rs.getString("paginas")+"</th>";
consulta+="<th>" +rs.getString("tipo")+"</th>";
consulta+="<th>" +rs.getString("imagen")+"</th>";
consulta+="</tr>";

}
consulta+="</table>";

} catch (SQLException se)
{
    consulta+="LMensaje: "+se.getMessage();
consulta+="LEstado: "+se.getSQLState();
consulta+="LError: "+se.getErrorCode();
}
 
    
    finally
 {
     return consulta;    
         }
}

    
    
}
