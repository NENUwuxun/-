package DAO;

import util.DataBaseConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;

public class EditorDAO {
    public void editor(int id,String title,String content){
        Connection conn = null;
        PreparedStatement ps = null;
        DataBaseConnection dbconn = null;
        ResultSet rs=null;
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        try {
            dbconn = new DataBaseConnection();
            conn = dbconn.getConnection();
            String sql = "UPDATE news SET title=?,content=?,up_time=? WHERE id=?";
            ps = conn.prepareStatement(sql);
            ps.setString(1,title);
            ps.setString(2,content);
            ps.setTimestamp(3,Timestamp.valueOf(df.format(new Date())));
            ps.setInt(4,id);
            ps.executeUpdate();
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            dbconn.closeConn();
        }
    }
}
