package servlet;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 * Created by valar on 2018/11/1.
 */
public class registDao { private static registDao instance = null;
public static registDao getInstance() {
    if (instance == null) {
        instance = new registDao();
    }
    return instance;
}
     public boolean saveUser(user UseInfo ) {
    Connection conn = null;
    try {
        conn =DB.getCon();
        String sql = "insert into UserInfo(username,password,sex,age,email,telephone) values(?,?,?,?,?,?)"; // insert
        PreparedStatement pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, UseInfo.getUsername());
        pstmt.setString(2, UseInfo.getPassword());
        pstmt.setString(3, UseInfo.getSex());
        pstmt.setString(4, UseInfo.getAge());
        pstmt.setString(5, UseInfo.getEmail());
        pstmt.setString(6, UseInfo.getTelephone());
        pstmt.executeUpdate();
        pstmt.close();
        conn.close();
        return true;
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        try {
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    return false;
}
}