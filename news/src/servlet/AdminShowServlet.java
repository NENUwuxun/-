package servlet;

import DAO.CountTotalDataDAO;
import DAO.impl.AdminShowDAOImpl;
import entity.PageBean;
import entity.news;
import util.PageMethod;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = "/AdminShowServlet")
public class AdminShowServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("test/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        PageMethod pageMethod = new PageMethod();
        int page;
        if(request.getParameter("page")==null)
            page = 1;
        else page = Integer.parseInt(request.getParameter("page"));
        int pageSize = 10;
        int totalPage = pageMethod.countTotalPage(pageSize);
        CountTotalDataDAO countTotalDataDao = new CountTotalDataDAO();
        int totalData = countTotalDataDao.countTotalData();
        if(page<1)
            page = 1;
        if(page>totalPage)
            page = totalPage;
        PageBean paging = new PageBean(page,pageSize,totalData,totalPage);
        AdminShowDAOImpl adminshowDAOImpl = new AdminShowDAOImpl();
        List<news>  list =adminshowDAOImpl.show();
        int firstData = new PageMethod().countFirstData(page,pageSize,totalData,totalPage);
        int lastData = new PageMethod().countLastData(page,pageSize,totalData,totalPage,firstData);
        list = list.subList(firstData,lastData+1);
        request.setAttribute("paging",paging);
        request.setAttribute("list",list);
        request.getRequestDispatcher("news.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
