package dao;
import model.Book;

import java.util.List;

public interface IBookDAO {
	//新书展示
	public List getNewBook();
	//分页查询
	public List getBookByCatalogidPaging(Integer catalogid,int currentPage,int pageSize);
	//得到该类别的图书的总数
	public int getTotalByCatalog(Integer catalogid);
	//根据书籍名字获取符合书籍
	public List getRequiredBookByName(String name);
	//根据bookid查询书籍
	public Book getBookById(Integer bookid);
	//根据bookid删除
	public void deleteBook(int xh);
}


