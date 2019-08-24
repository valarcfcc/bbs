package servlet;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
/**
 * Created by valar on 2018/11/1.
 */
public class personDao { private static personDao instance = null;
    public static personDao getInstance() {
        if (instance == null) {
            instance = new personDao();
        }
        return instance;
    }
    public boolean change(user UseInfo ) {
        Connection conn = null;
        try {
            conn = DB.getCon();
            String sql = "update userinfo set sex=? ,age=? ,telephone=?,email=? where id=?"; // insert
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setString(5, UseInfo.getUsername());
            pstmt.setString(1, UseInfo.getSex());
            pstmt.setString(2, UseInfo.getAge());
            pstmt.setString(4, UseInfo.getEmail());
            pstmt.setString(3, UseInfo.getTelephone());
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