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
public class Eliminacion {
 
    
    
    

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

public String ejecutaConsulta()
{
 String consulta=""; 
      Connection conn=null;
 
 try
{

conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/","root","");

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
rs=stat.executeQuery("select * from libreria");


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
consulta+="<th>¿Eliminar?</th>";

while (rs.next())
{
    
consulta+="<tr>";

String k1=rs.getString("titulo");
consulta+="<th>" +k1+"</th>";
String k2=rs.getString("precio");
consulta+="<th>" +k2+"</th>";
consulta+="<th>" +rs.getString("autor")+"</th>";
consulta+="<th>" +rs.getString("genero")+"</th>";
consulta+="<th>" +rs.getString("formato")+"</th>";
consulta+="<th>" +rs.getString("tiempoentrega")+"</th>";
consulta+="<th>" +rs.getString("editorial")+"</th>";
consulta+="<th>" +rs.getString("paginas")+"</th>";
consulta+="<th>" +rs.getString("tipo")+"</th>";
consulta+="<th>" +rs.getString("imagen")+"</th>";
consulta+="<th><a href=Eliminacion.jsp?k1="+k1+"&k2="+ k2+">Eliminar</a> "+"</th>";
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

  public String ejecutaEliminacion(String k1,String k2)
  {
   String res=""; 
    try
    {
      // create the mysql database connection
      String myDriver = "com.mysql.jdbc.Driver";
      String myUrl = "jdbc:mysql://localhost:3306/cajasadb";
      Class.forName(myDriver);
      Connection conn = DriverManager.getConnection(myUrl, "root", "");
      
      
      String query = "delete from libreria where titulo='"+k1+"' AND precio='"+k2+"'";
      Statement preparedStmt = conn.prepareStatement(query);
      //preparedStmt.setInt(1, 3);

      // execute the preparedstatement
      boolean band= preparedStmt.execute(query);
      
      conn.close();
       if(band==false)
       {
         res+="Se elimino el registro";  
       }else
       {
        res+="No se pudo eliminar";   
       }
    
    
    }
    catch (ClassNotFoundException | SQLException e)
    {
      System.err.println("Got an exception! ");
      System.err.println(e.getMessage());
    }
 
   
   
    finally
   {
        return res;   
           }
  }
    
}
