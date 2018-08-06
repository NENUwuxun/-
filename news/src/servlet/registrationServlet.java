package servlet;

import entity.user;
import service.UserService;
import service.UserServiceImpl;
import util.DAOFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/RegisterServlet")
public class registrationServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("test/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        try {
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            String tele = request.getParameter("tele");
            UserService us = new UserServiceImpl();
            boolean register = ((UserServiceImpl) us).isRegister(username);
            if(!register)
                throw new Exception();
            user user = new user();
            user.setUsername(username);
            user.setPassword(password);
            user.setTele(tele);
            DAOFactory.getDAOInstance().insert(user);
        }catch (Exception e){
            //注册失败
            e.printStackTrace();
        }
        request.getRequestDispatcher("index.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
