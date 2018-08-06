package DAO.impl;

import DAO.AdminShowDAO;
import com.mysql.jdbc.Blob;
import entity.news;
import util.DataBaseConnection;

import javax.xml.crypto.Data;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

public class AdminShowDAOImpl implements AdminShowDAO {
    @Override
    public List<news> show() {
        List<news> newsList = new ArrayList<news>();
        Connection conn = null;
        PreparedStatement ps = null;
        DataBaseConnection dbconn = null;
        ResultSet rs=null;
        try {
            dbconn = new DataBaseConnection();
            conn = dbconn.getConnection();
            String sql = "SELECT title,content,add_time,up_time,cat_name,id,picture FROM news,category WHERE news.cat_id=category.cat_id";
            ps = conn.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                news news = new news();
                news.setTitle(rs.getString("title"));
                news.setContent(rs.getString("content"));
                news.setCat_name(rs.getString("cat_name"));
                news.setAdd_time(rs.getTimestamp("add_time"));
                news.setUp_time(rs.getTimestamp("up_time"));
                news.setPicture(rs.getString("picture"));
                news.setId(rs.getInt("id"));
                newsList.add(news);
            }
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            dbconn.closeConn();
        }
        return newsList;

    }
}
