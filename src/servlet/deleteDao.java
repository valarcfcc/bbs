package servlet;

import java.sql.Connection;
import java.sql.SQLException;

public  class deleteDao {
    private  static deleteDao instance =  null;
    public  static deleteDao getInstance() {
        if (instance ==  null) {
            instance =  new deleteDao();
        }
        return  instance;
    }
    //
    public  boolean Delete(int id ) {
        Connection conn =  null;
        try  {
            conn =DB.getCon();  //
            java.sql.Statement stmt = conn.createStatement();
            String sql = "DELETE FROM discuss " +
                    "WHERE id = " + id;
            stmt.executeUpdate(sql);
            sql = "DELETE FROM reply " +
                    "WHERE reply = " + id;
            stmt.executeUpdate(sql);
            stmt.close();
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

