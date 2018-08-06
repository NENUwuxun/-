package DAO;

import com.mysql.jdbc.Blob;
import entity.news;
import util.DataBaseConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class ShowDAO {
    public news show(int id){
        news news = new news();
        Connection conn = null;
        PreparedStatement ps = null;
        DataBaseConnection dbconn = null;
        ResultSet rs=null;
        try{
            dbconn = new DataBaseConnection();
            conn = dbconn.getConnection();
            String sql = "SELECT title,content,picture,id FROM news WHERE id=?";
            ps = conn.prepareStatement(sql);
            ps.setInt(1,id);
            rs=ps.executeQuery();
            while(rs.next()) {
                news.setId(rs.getInt("id"));
                news.setTitle(rs.getString("title"));
                news.setContent(rs.getString("content"));
                news.setPicture(rs.getString("picture"));
            }
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            dbconn.closeConn();
        }
        return news;
    }
}
