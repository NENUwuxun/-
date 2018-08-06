package DAO.impl;

import entity.news;
import util.DataBaseConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ClassShowDAOImpl extends AdminShowDAOImpl {
    public List<news> show(int cat_id){
        List<news> newsList = new ArrayList<news>();
        Connection conn = null;
        PreparedStatement ps = null;
        DataBaseConnection dbconn = null;
        ResultSet rs=null;
        try {
            dbconn = new DataBaseConnection();
            conn = dbconn.getConnection();
            String sql = "SELECT title,content,cat_name,id,author,picture FROM news,category WHERE news.cat_id=category.cat_id AND news.cat_id=?";
            ps = conn.prepareStatement(sql);
            ps.setInt(1,cat_id);
            rs=ps.executeQuery();
            while(rs.next()){
                news news = new news();
                news.setTitle(rs.getString("title"));
                news.setCat_name(rs.getString("cat_name"));
                news.setContent(rs.getString("content"));
                news.setAuthor(rs.getString("author"));
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
