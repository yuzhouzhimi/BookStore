package dao.impl;

import dao.IUserDAO;

import model.User;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

import java.util.List;

public class UserDAO extends HibernateDaoSupport implements IUserDAO {
    //用户信息存储
    public void saveUser(User user){
        this.getHibernateTemplate().save(user);
    }
    //验证用户登录
    public User validateUser(String username, String password){
        String str[]={username,password};
        List list=this.getHibernateTemplate().find("from User u where u.username=? and u.password=?",str);
        if(list.size()>0){
            User user=(User) list.get(0);
            return user;
        }else
            return null;
    }
    //检查用户是否已经存在
    public boolean exitUser(String username){
        List list=this.getHibernateTemplate().find("from User where username=?",username);
        if(list.size()>0)
            return true;
        else
            return false;
    }

}
