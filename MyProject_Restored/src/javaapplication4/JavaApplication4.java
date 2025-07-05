package javaapplication4;
import java.sql.*;
import java.sql.Connection;
import java.sql.DriverManager;
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
  

/**
 *
 * @author PRATAP KUMAR
 */
public class JavaApplication4 {
    Connection conn=null;
public static Connection ConnecrDb(){
    try{
  Class.forName("com.mysql.cj.jdbc.Driver");

        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/java_dbmovies?authenticationPlugins=com.mysql.cj.protocol.a.authentication.MysqlNativePasswordPlugin", "root", "25082003");
        

//   Connection conn =DriverManager.getConnection("jdbc:mysql://localhost:3306/java_dbmovies","root","25082003");
//Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/java_dbmovies?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC&allowPublicKeyRetrieval=true", "root", "");
//        "jdbc:mysql://localhost:3306/employee","root",""
        return conn;
    }
    catch(Exception e)
    {
        System.out.println(e.getMessage());
    }
    
return null;
}

   
}
