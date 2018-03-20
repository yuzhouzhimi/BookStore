package dao.impl;
import java.util.List;
import dao.IBookDAO;
import model.Book;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;
public class BookDAO extends HibernateDaoSupport implements IBookDAO{
	//新书展示
	public List getNewBook(){
		//hibernate层从数据库取得数据
		Session session=this.getHibernateTemplate().getSessionFactory().openSession();
		Query query=session.createQuery("from Book b");
		query.setFirstResult(0);
		query.setMaxResults(10);
		List books=query.list();
		session.close();
		return books;
	}
	//根据分类选项分页查询
	public List getBookByCatalogidPaging(Integer catalogid,int currentPage,int pageSize){
		//hibernate层根据符合catalogid条件从数据库取得数据
		Session session=this.getHibernateTemplate().getSessionFactory().openSession();
		Query query=session.createQuery("from Book b where b.catalog.catalogid=?");
		query.setParameter(0, catalogid);
		int startRow=(currentPage-1)*pageSize;
		query.setFirstResult(startRow); 
		query.setMaxResults(pageSize);
		List books=query.list();
		session.close();
		return books;
    }
    //得到该类别的所有数据
	public int getTotalByCatalog(Integer catalogid){
		List books=this.getHibernateTemplate().find("from Book b where b.catalog.catalogid=?",catalogid);
		return books.size();
	}
	//根据书名查找符合条件的数据
	public List getRequiredBookByName(String name){
	try{
		List books=this.getHibernateTemplate().
					find("from Book where bookname like '%"+name+"%'");
		return books;
	}catch(Exception e){
		e.printStackTrace();
		return null;
	}
    }
	//根据bookid获得书籍
    public Book getBookById(Integer bookid){
		//hibernate层从数据库取得
	Book book=(Book) this.getHibernateTemplate().get(Book.class, bookid);
	return book;
    }
	//根据bookid删除数据（同理userid删除用户）
	public void deleteBook(int xh) {
		List<Book> books=(List<Book>)this.getHibernateTemplate().find("from User as user where user.userid = ?",xh);
		getHibernateTemplate().delete(books.get(0));
	}
}

