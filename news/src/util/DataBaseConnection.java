package util;

import java.io.InputStream;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class DataBaseConnection {
    private static final String DRIVER = "com.mysql.jdbc.Driver";
    private static final String URL="jdbc:mysql://localhost:3306/newssql?"+ "useUnicode=true&characterEncoding=UTF8";
    private static final String USER="root";
    private static final String PASSWORD="123456";

     private static  Connection conn=null;


    //链接数据库
    public Connection getConnection(){

        try {
            Class.forName(DRIVER);//加载驱动
            conn=DriverManager.getConnection(URL, USER, PASSWORD);//创建数据库的连接
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            System.out.println("数据库连接失败");
        }
        return conn;
    }
    //关闭数据库
    public void closeConn(){
        Connection con = getConnection();
        try {
            if(!con.isClosed()){
                con.close();
            }
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }

}
