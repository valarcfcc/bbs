package servlet;

/**
 * Created by valar on 2018/11/2.
 */

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public  class revertDao {
    private  static revertDao instance =  null;
    public  static revertDao getInstance() {
        if (instance ==  null) {
            instance =  new  revertDao();
        }
        return  instance;
    }
    //
    public  boolean saveRevert(revert revert ) {
        Connection conn =  null;
        try  {
            conn =DB.getCon();  //
            String sql = "insert into reply(name,content,time,reply) values( ?,?,?,?)"; // insert

            PreparedStatement pstmt = conn.prepareStatement(sql);  //
            pstmt.setString(1, revert.getName());
            pstmt.setString(2, revert.getContent());
            pstmt.setString(3, revert.getTime());
            pstmt.setString(4, revert.getReply());
            pstmt.executeUpdate();  //
            pstmt.close();
            conn.close();
            return  true;
        }  catch (Exception e) {
            e.printStackTrace();
        }  finally  {
            try  {
                conn.close();
            }  catch (SQLException e) {
                e.printStackTrace();
            }

        }

        return  false;

    }
}

