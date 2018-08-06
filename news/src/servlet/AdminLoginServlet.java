package servlet;

import entity.user;
import service.UserService;
import service.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/AdminLoginServlet")
public class AdminLoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("test/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        int page = 1;
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        request.setAttribute("page",page);
        UserService us = new UserServiceImpl();
        boolean login = us.isLogin(username,password);
        if(login)
            request.getRequestDispatcher("AdminShowServlet").forward(request,response);
        else request.getRequestDispatcher("lose.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}