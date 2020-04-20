package operaciones;

import java.sql.Connection;
import java.sql.DriverManager;
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
public class Insercion {
    
    
 public String ejecutarInsercion(String titu,String prec,String auto,String gene,String form,String tae,String edit,String pags,String tipo,String imag)
 {
     String res="";
      try
    {
      // create a mysql database connection
      String myDriver = "com.mysql.jdbc.Driver";
      String myUrl = "jdbc:mysql://localhost:3306/cajasadb";
      Class.forName(myDriver);
      System.out.println("num1");
      Connection conn = DriverManager.getConnection(myUrl, "root", "");
      System.out.println("num2");
      Statement st = conn.createStatement();
      System.out.println("num3");
      // note that i'm leaving "date_created" out of this insert statement
      int valor= st.executeUpdate("INSERT INTO libreria (titulo,precio,autor,genero,formato,tiempoentrega,editorial,paginas,tipo,imagen) "
          +"VALUES ('"+titu+"','"+prec+"','"+auto+"','"+gene+"','"+form+"','"+tae+"','"+edit+"','"+pags+"','"+tipo+"','"+imag+"')");

       System.out.println("num4");    
      conn.close();
      System.out.println("num5");
    if(valor>0 )
    {
        System.out.println("num6");
    res+="Se inserto existosamente el registro";
    }else
    {System.out.println("num7");
      res+="No se inserto el registro";   
    }
    
    
    }
    catch (ClassNotFoundException | SQLException e)
    {System.out.println("num8");
      res+= "Entro una excepción";
      res += e.getMessage();
    }
     
     finally
     {
        return res;     
             }
     
 }
    
    
    
}
