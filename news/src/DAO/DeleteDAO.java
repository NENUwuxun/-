package DAO;

import util.DataBaseConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DeleteDAO {
    public void delete(int id){
        Connection conn = null;
        PreparedStatement ps = null;
        DataBaseConnection dbconn = null;
        ResultSet rs=null;
        try {
            dbconn = new DataBaseConnection();
            conn = dbconn.getConnection();
            String sql = "DELETE FROM news WHERE id=?";
            ps= conn.prepareStatement(sql);
            ps.setInt(1,id);
            int a=ps.executeUpdate();
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            dbconn.closeConn();
        }
    }
}
