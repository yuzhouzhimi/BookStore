package service;

import model.User;

public interface IUserService {
    //用户信息的保存
    public void saveUser(User user);
    //验证用户登录
    public User validateUser(String username, String password);
    //根据用户姓名查询该用户是否已经存在
    public boolean exitUser(String username);
}
