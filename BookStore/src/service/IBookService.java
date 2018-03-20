package service;
import model.Book;

import java.util.List;

public interface IBookService {
	//获取新书展示
	public List getNewBook();
	//分页查询
	public List getBookByCatalogidPaging(Integer catalogid,int currentPage,int pageSize);
	//得到该类别的图书的总数
	public int getTotalByCatalog(Integer catalogid);
	//根据书的名字搜索得到书籍
	public List getRequiredBookByName(String name);
	//根据书的ID获取书籍
	public Book getBookById(Integer bookid);
	//根据书的ID删除书籍
	public void deleteBook(int bookid);
}


