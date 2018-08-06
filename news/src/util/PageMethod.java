package util;

import DAO.CountClassTotalDataDAO;
import DAO.CountTotalDataDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class PageMethod {
    public  int countTotalPage(int pageSize){
        int totalPage = 0;
        CountTotalDataDAO countTotalDataDao = new CountTotalDataDAO();
        int totalData = countTotalDataDao.countTotalData();
        if (totalData%pageSize==0)
                totalPage = totalData/pageSize;
            else
                totalPage = totalData/pageSize+1;
        return totalPage;
    }
    public int countClassTotalPage(int pageSize,int totalData){
        int totalPage = 0;
        if (totalData%pageSize==0)
            totalPage = totalData/pageSize;
        else
            totalPage = totalData/pageSize+1;
        return totalPage;
    }
    //计算每一页的第一条数据序号
    public int countFirstData(int page,int pageSize,int totalData,int totalPage){
        int firstData;
        if(page==1)
            firstData = page-1;
        else firstData = (page-1)*pageSize;
        return firstData;
    }
    //计算每一页的最后一条数据序号
    public int countLastData(int page,int pageSize,int totalData,int totalPage,int firstData){
        int lastData;
        if(totalPage-page==0)
            lastData = firstData + (totalData%pageSize-1);
        else lastData = firstData + pageSize-1;
        if(totalData%pageSize==0&&(totalPage-page==0))
            lastData=lastData+pageSize;
        return lastData;
    }
}
