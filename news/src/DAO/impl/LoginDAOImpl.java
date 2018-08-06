package DAO.impl;

import DAO.UserDAO;
import entity.user;
import util.DataBaseConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LoginDAOImpl implements UserDAO {
    @Override
    public user getUserName(String username) {
        user user = null;
        Connection conn = null;
        PreparedStatement ps = null;
        DataBaseConnection dbconn = null;
        ResultSet rs=null;
        try{
            dbconn = new DataBaseConnection();
            conn = dbconn.getConnection();
            String sql = "SELECT username,password FROM user WHERE username=?";
            ps = conn.prepareStatement(sql);
            ps.setString(1,username);
            rs=ps.executeQuery();
            while(rs.next()){
                user=new user();
                user.setUsername(rs.getString("username"));
                user.setPassword(rs.getString("password"));
            }
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            dbconn.closeConn();
        }
        return user;
    }
}
