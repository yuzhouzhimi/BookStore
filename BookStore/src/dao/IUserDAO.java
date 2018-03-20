package dao;


import model.User;

public interface IUserDAO {
    //用户信息存储
    public void saveUser(User user);
    //用户信息验证
    public User validateUser(String username, String password);
    //检查用户是否存在
    public boolean exitUser(String username);
}