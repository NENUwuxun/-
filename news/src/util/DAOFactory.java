package util;

import DAO.RegisterDAO;
import DAO.impl.RegisterDAOImpl;

public class DAOFactory{
    public static RegisterDAO getDAOInstance(){
        return new RegisterDAOImpl() {
        };
    }
}