
package service.impl;
import java.util.List;
import dao.IBookDAO;
import model.Book;
import service.IBookService;
public class BookService implements IBookService {
	//业务逻辑创建bookDAO实例
	protected IBookDAO bookDAO;
	//bookDAO实例的setter和getter方法
	public void setBookDAO(IBookDAO bookDAO) {
		this.bookDAO = bookDAO;
	}
	//新书展示获取新加入的书
     public List getNewBook(){
    		return bookDAO.getNewBook();
     }
     //分页查询
     public List getBookByCatalogidPaging(Integer catalogid,int currentPage,int pageSize){
 		return bookDAO.getBookByCatalogidPaging(catalogid, currentPage, pageSize);
 	}
 	//根据分类选项选择该类的所有书籍
 	public int getTotalByCatalog(Integer catalogid){
 		return bookDAO.getTotalByCatalog(catalogid);
 	}
 	//根据bookname获取bookDAO
 	public List getRequiredBookByName(String name) {
		return bookDAO.getRequiredBookByName(name);
	}
	//根据bookid获取bookDAO
 	public Book getBookById(Integer bookid){
		return bookDAO.getBookById(bookid);
	}
    //删除书籍
	public void deleteBook(int xh) {
		bookDAO.deleteBook(xh);
	}
}
