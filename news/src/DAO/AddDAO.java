package DAO;

import util.DataBaseConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;

public class AddDAO {
    public void add(String title,String content,String author,String picture,int cat_id){
        Connection conn = null;
        PreparedStatement ps = null;
        DataBaseConnection dbconn = null;
        ResultSet rs=null;
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        try {
            dbconn = new DataBaseConnection();
            conn = dbconn.getConnection();
            String sql = "INSERT INTO news (title,content,author,add_time,up_time,picture,cat_id) VALUES(?,?,?,?,?,?,?)";
            ps = conn.prepareStatement(sql);
            ps.setString(1,title);
            ps.setString(2,content);
            ps.setString(3,author);
            ps.setTimestamp(4,Timestamp.valueOf(df.format(new Date())));
            ps.setTimestamp(5,Timestamp.valueOf(df.format(new Date())));
            ps.setString(6,picture);
            ps.setInt(7,cat_id);
            ps.executeUpdate();
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            dbconn.closeConn();
        }

    }
}
