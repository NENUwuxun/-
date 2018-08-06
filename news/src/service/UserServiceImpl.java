package service;

import DAO.impl.LoginDAOImpl;
import DAO.UserDAO;
import entity.user;

public class UserServiceImpl implements UserService {
    UserDAO uDao=new LoginDAOImpl();
    @Override
    public boolean isLogin(String username, String password) {
        user u =uDao.getUserName(username);
        if(u!=null&&password.equals(u.getPassword())){
            return true;
        }
        return false;
    }
    public boolean isRegister(String username){
        user u = uDao.getUserName(username);
        if(u==null)
            return true;
        else return false;
    }
}
