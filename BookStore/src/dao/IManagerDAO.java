package dao;

import model.Book;
import model.Manager;

import java.util.List;

public interface IManagerDAO {
    //验证管理员登录
    public Manager validateManager(String username, String password);
    //分页显示书籍信息
    public List findAll(int pageNow, int pageSize);
    //查询一共多少条书籍记录
    public int findXsSize();
    //查看所有用户信息
    public List findAlluser(int pageNow, int pageSize);
    public int finduser();
    //查看所有订单信息
    public List findAllorder(int pageNow, int pageSize);
    public int findorder();
    //查看管理员信息
    public List findAllmanager(int pmanagerageNow, int pageSize);
    public int findmanager();
    //加书
    public void saveBook(Book book);

}
