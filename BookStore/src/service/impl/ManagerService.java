package service.impl;

import dao.IManagerDAO;
import dao.impl.BookDAO;
import model.Book;
import model.Manager;
import service.ImanagerService;

import java.util.List;

public class ManagerService implements ImanagerService{
    //业务逻辑实例化managerDAO
    private IManagerDAO managerDAO;
    //managerDAO的setter方法
    public void setManagerDAO(IManagerDAO managerDAO){this.managerDAO=managerDAO;}
    //验证管理员登录
    public Manager validateManager(String managername, String password){
        return managerDAO.validateManager(managername, password);
    }
    //查看书籍信息
    public List findAll(int pageNow, int pageSize) {
        return managerDAO.findAll(pageNow, pageSize);
    }
    //查看总共有多少书籍
    public int findXsSize() {
        return managerDAO.findXsSize();
    }
    //查看用户信息
    public List findAlluser(int pageNow, int pageSize) {
        return managerDAO.findAlluser(pageNow, pageSize);
    }
    //查看总共有多少用户
    public int finduser() {
        return managerDAO.finduser();
    }
    //查看订单信息
    public List findAllorder(int pageNow, int pageSize) {
        return managerDAO.findAllorder(pageNow, pageSize);
    }
    //查看总共有多少订单
    public int findorder() {
        return managerDAO.findorder();
    }
    //查看管理员信息
    public List findAllmanager(int pageNow, int pageSize) {
        return managerDAO.findAllmanager(pageNow, pageSize);
    }
    //查看管理员人数
    public int findmanager() {
        return managerDAO.findmanager();
    }
    //加书
    //用户信息存储
    public void saveBook(Book book){
        this.managerDAO.saveBook(book);
    }

}
