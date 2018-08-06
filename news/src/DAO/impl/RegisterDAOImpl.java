package DAO.impl;

import DAO.RegisterDAO;
import entity.user;
import util.DataBaseConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class RegisterDAOImpl implements RegisterDAO {
    @Override
    public void insert(user user) throws Exception {
        String sql = "insert into user (username,password,tele) values (?,?,?)";
        PreparedStatement ps = null;
        Connection conn = null;
        DataBaseConnection dbconn = null;
        try{
            dbconn = new DataBaseConnection();
            conn = dbconn.getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1,user.getUsername());
            ps.setString(2,user.getPassword());
            ps.setString(3,user.getTele());
            ps.executeUpdate();
            ps.close();
            conn.close();
        }catch(Exception e){
            System.out.println("数据插入失败！");
            e.printStackTrace();
        }finally{
            dbconn.closeConn();
        }
    }

}

