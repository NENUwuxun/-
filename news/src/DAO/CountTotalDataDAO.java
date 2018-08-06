package DAO;

import util.DataBaseConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class CountTotalDataDAO {
    public int countTotalData(){
        Connection conn = null;
        PreparedStatement ps = null;
        DataBaseConnection dbconn = null;
        ResultSet rs=null;
        int totalData = 0;
        try{
            dbconn = new DataBaseConnection();
            conn = dbconn.getConnection();
            String sql = "SELECT COUNT(id) FROM news";
            ps = conn.prepareStatement(sql);
            rs=ps.executeQuery();
            while (rs.next()){
                totalData = rs.getInt(1);
            }
    }catch (Exception e){
            e.printStackTrace();
        }finally {
            dbconn.closeConn();
        }
        return totalData;
        }
}
