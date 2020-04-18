/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clases;

/**
 *
 * @author cardu
 */
public class database {
    
    String url;
    String user;
    String pass;
    String driver;
    
    public database(){
        this.url = "jdbc:mysql://localhost:3306/cajasadb";
        this.user = "root";
        this.pass = "";
        this.driver = "com.mysql.jdbc.Driver";
}

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getDriver() {
        return driver;
    }

    public void setDriver(String driver) {
        this.driver = driver;
    }
    
}
