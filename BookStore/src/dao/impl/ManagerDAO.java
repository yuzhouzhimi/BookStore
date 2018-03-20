package dao.impl;

import dao.IManagerDAO;
import model.Book;
import model.Manager;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

import java.util.List;

public class ManagerDAO extends HibernateDaoSupport implements IManagerDAO{
    //验证管理员登录
    public Manager validateManager(String managername, String password){
        //hibernate层连接数据库，从manager表中进行匹配
        String str[]={managername,password};
        List list=this.getHibernateTemplate().find("from Manager m where m.managername=? and m.password=?",str);
        if(list.size()>0){
            Manager manager=(Manager) list.get(0);
            return manager;
        }else
            return null;
    }
   //查看所有书籍信息
    public List findAll(int pageNow, int pageSize) {
        try{
            //hibernate层连接book表
            Session session=getHibernateTemplate().getSessionFactory().openSession();
            Transaction ts=session.beginTransaction();
            Query query=session.createQuery("from Book book order by bookid");
            int firstResult=(pageNow-1)*pageSize;
            query.setFirstResult(firstResult);
            query.setMaxResults(pageSize);
            List list=query.list();
            ts.commit();
            session.close();
            session=null;
            return list;
        }catch(Exception e){
            e.printStackTrace();
            return null;
        }
    }
    //查看总共的书的数量
    public int findXsSize() {
        List books=this.getHibernateTemplate().find("from Book book");
        return books.size();
    }

    //查看所有用户信息
    public List findAlluser(int pageNow, int pageSize) {
        try{
            Session session=getHibernateTemplate().getSessionFactory().openSession();
            Transaction ts=session.beginTransaction();
            Query query=session.createQuery("from User user order by userid");
            int firstResult=(pageNow-1)*pageSize;
            query.setFirstResult(firstResult);
            query.setMaxResults(pageSize);
            List list=query.list();
            ts.commit();
            session.close();
            session=null;
            return list;
        }catch(Exception e){
            e.printStackTrace();
            return null;
        }
    }
    //查看总共的用户数量
    public int finduser() {
        //hibernate层连接user表
        List books=this.getHibernateTemplate().find("from User user");
        return books.size();
    }
    //查看所有订单信息
    public List findAllorder(int pageNow, int pageSize) {
        try{
            Session session=getHibernateTemplate().getSessionFactory().openSession();
            Transaction ts=session.beginTransaction();
            Query query=session.createQuery("from Orders orders order by orderid");
            int firstResult=(pageNow-1)*pageSize;
            query.setFirstResult(firstResult);
            query.setMaxResults(pageSize);
            List list=query.list();
            ts.commit();
            session.close();
            session=null;
            return list;
        }catch(Exception e){
            e.printStackTrace();
            return null;
        }
    }
    //查看总共的订单数量
    public int findorder() {
        //hibernate层连接orders表
        List books=this.getHibernateTemplate().find("from Orders orders");
        return books.size();
    }

    //查看所有管理员信息
    public List findAllmanager(int pageNow, int pageSize) {
        try{
            Session session=getHibernateTemplate().getSessionFactory().openSession();
            Transaction ts=session.beginTransaction();
            Query query=session.createQuery("from Manager manager order by managerid");
            int firstResult=(pageNow-1)*pageSize;
            query.setFirstResult(firstResult);
            query.setMaxResults(pageSize);
            List list=query.list();
            ts.commit();
            session.close();
            session=null;
            return list;
        }catch(Exception e){
            e.printStackTrace();
            return null;
        }
    }
    //查看总共的管理员数量
    public int findmanager() {
        //hibernate层连接manager表
        List books=this.getHibernateTemplate().find("from Manager manager");
        return books.size();
    }
    //加书
    public void saveBook(Book book){
        this.getHibernateTemplate().save(book);
    }
}
