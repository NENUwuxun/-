package servlet;

import DAO.CountClassTotalDataDAO;
import DAO.impl.ClassShowDAOImpl;
import DAO.impl.UserShowDAOImpl;
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

@WebServlet(urlPatterns = "/ClassServlet")
public class ClassServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("test/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        PageMethod pageMethod = new PageMethod();
        int page;
        if(request.getParameter("page")==null)
            page = 1;
        else page = Integer.parseInt(request.getParameter("page"));
        int pageSize = 10;
        int cat_id = Integer.parseInt(request.getParameter("cat_id"));
        CountClassTotalDataDAO countClassTotalDataDao = new CountClassTotalDataDAO();
        int totalData = countClassTotalDataDao.countClassTotalData(cat_id);
        PageMethod pageMethod1 = new PageMethod();
        int totalPage = pageMethod1.countClassTotalPage(pageSize,totalData);
        if(page<1)
            page = 1;
        if(page>totalPage)
            page = totalPage;
        PageBean paging = new PageBean(page,pageSize,totalData,totalPage);
        ClassShowDAOImpl classShowDAO = new ClassShowDAOImpl();
        List<news> list = classShowDAO.show(cat_id);
        int firstData = new PageMethod().countFirstData(page,pageSize,totalData,totalPage);
        int lastData = new PageMethod().countLastData(page,pageSize,totalData,totalPage,firstData);
        list = list.subList(firstData,lastData+1);
        request.setAttribute("cat_id",cat_id);//再次将cat_id传回去，防止翻页的时候传空值报错
        request.setAttribute("paging",paging);
        request.setAttribute("list",list);
        request.getRequestDispatcher("class.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
