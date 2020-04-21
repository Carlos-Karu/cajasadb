
package clases;
import java.sql.*;
/**
 *
 * @author cardu
 */
public class acceso {
    database db = new database();
    String sql="";
    Connection con;
    PreparedStatement pst;
    ResultSet rs;
    
    public acceso(){
        
    }
    public int validar(String usuario, String contraseña){
        int nivel=0;
        try{
            Class.forName(db.getDriver());
            con=DriverManager.getConnection(db.getUrl(), db.getUser(), db.getPass());
            sql="SELECT nivel FROM usuarios WHERE correo='"+usuario+"' and contraseña='"+contraseña+"'";
            pst = con.prepareStatement(sql);
            rs= pst.executeQuery();
            while(rs.next()){
                nivel = rs.getInt(1);
            }
            con.close();
            rs.close();
            return nivel;
        } catch(SQLException | ClassNotFoundException e){
            return nivel;
        }
    }
}
