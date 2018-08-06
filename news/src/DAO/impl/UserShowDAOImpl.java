package DAO.impl;

import entity.news;
import util.DataBaseConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class UserShowDAOImpl extends AdminShowDAOImpl {
    public List<news> show(){
        List<news> newsList = new ArrayList<news>();
        Connection conn = null;
        PreparedStatement ps = null;
        DataBaseConnection dbconn = null;
        ResultSet rs=null;
        try {
            dbconn = new DataBaseConnection();
            conn = dbconn.getConnection();
            String sql = "SELECT title,content,cat_name,id,author,partcontent,add_time,picture FROM news,category WHERE news.cat_id=category.cat_id";
            ps = conn.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                news news = new news();
                news.setTitle(rs.getString("title"));
                news.setCat_name(rs.getString("cat_name"));
                news.setContent(rs.getString("content"));
                news.setAuthor(rs.getString("author"));
                news.setAdd_time(rs.getTimestamp("add_time"));
                news.setPartContent(rs.getString("partcontent"));
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