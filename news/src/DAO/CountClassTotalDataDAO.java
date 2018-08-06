package DAO;

import util.DataBaseConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class CountClassTotalDataDAO {
    public int countClassTotalData(int cat_id){
        Connection conn = null;
        PreparedStatement ps = null;
        DataBaseConnection dbconn = null;
        ResultSet rs=null;
        int totalData = 0;
        try{
            dbconn = new DataBaseConnection();
            conn = dbconn.getConnection();
            String sql = "SELECT COUNT(id) FROM news WHERE cat_id =?";
            ps = conn.prepareStatement(sql);
            ps.setInt(1,cat_id);
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
