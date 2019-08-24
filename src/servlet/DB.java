package servlet;


import java.sql.Connection;
import java.sql.DriverManager;


/**
 * Created by valar on 2018/11/1.
 */
public class DB{
    private static Connection conn = null;
    public static Connection getCon() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            String user = "root";
            String pwd = "root";
            String url = "jdbc:mysql://localhost:3306/test";
            conn = DriverManager.getConnection(url,user,pwd);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return conn;
    }
}
