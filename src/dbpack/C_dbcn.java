package dbpack;

import java.sql.*;
/**
 * Created by asank on 5/1/2016.
 */
public class C_dbcn {
    public static Connection dbcn(){
        String URL = "jdbc:mysql://localhost:3306/fandom";
        String DRIVER = "com.mysql.jdbc.Driver";
        String UN = "root";
        String PW = "root";
        //language=MySQL
        //String qry = "SELECT * FROM logindetails";
        try {
            Class.forName(DRIVER);
            Connection con = DriverManager.getConnection(URL,UN,PW);
            return con;
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            return null;
        }
    }
}
