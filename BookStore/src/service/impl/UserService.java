package service.impl;

import dao.IUserDAO;
import model.User;
import service.IUserService;

public class UserService implements IUserService {
    //业务逻辑实例化userDAO
    private IUserDAO userDAO;
    //userDAO的setter方法
    public void setUserDAO(IUserDAO userDAO){
        this.userDAO=userDAO;
    }
    //用户信息存储
    public void saveUser(User user){
        this.userDAO.saveUser(user);
    }
    //验证用户信息
    public User validateUser(String username,String password){
        return userDAO.validateUser(username, password);
    }
    //检查用户是否已经存在
    public boolean exitUser(String username){
        return userDAO.exitUser(username);
    }
}
