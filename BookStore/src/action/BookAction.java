package action;
import java.util.List;
import java.util.Map;

import model.Book;
import service.IBookService;
import service.ICatalogService;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import util.Pager;

public class BookAction extends ActionSupport{
	protected ICatalogService catalogService;//Icatalogservice接口
	public void setCatalogService(ICatalogService catalogService) {
		this.catalogService = catalogService;
	}
    //浏览分类书籍
	public String browseCatalog() throws Exception{
		List catalogs=catalogService.getAllCatalogs();//获取所有分类选项
		Map request=(Map)ActionContext.getContext().get("request");
		request.put("catalogs",catalogs);
		return SUCCESS;
	}

	protected IBookService bookService;//Ibookservice接口
	public void setBookService(IBookService bookService) {
		this.bookService = bookService;
	}
    //新书展示
	public String newBook() throws Exception{
		List books=bookService.getNewBook();//获取所有新书
		Map request=(Map)ActionContext.getContext().get("request");
		request.put("books", books);
		return SUCCESS;
	}
	protected Integer catalogid;//获得图书类别的ID
	private Integer currentPage=1;//当前页
	//生成当前页的get和set方法
	public Integer getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}
	//生成图书ID的get和set方法
	public Integer getCatalogid() {
		return catalogid;
	}
	public void setCatalogid(Integer catalogid) {
		this.catalogid = catalogid;
	}
	//方法实现
	public String browseBookPaging() throws Exception{
		int totalSize=bookService.getTotalByCatalog(catalogid);
		System.out.println(catalogid);
		Pager pager=new Pager(currentPage,totalSize);
		List books=bookService.getBookByCatalogidPaging(catalogid, currentPage, pager.getPageSize());
		Map request=(Map)ActionContext.getContext().get("request");
		request.put("books", books);
		request.put("pager",pager);
		//购物车要返回继续购买时,需要记住返回的地址
		Map session=ActionContext.getContext().getSession();
		request.put("catalogid",catalogid);
		return SUCCESS;
	}


	private String bookname;//根据输入的书名或部分书名查询
	public String getBookname() {
		return bookname;
	}
	public void setBookname(String bookname) {
		this.bookname = bookname;
	}

    //搜索书籍
	public String searchBook() throws Exception {
		//根据书名进行匹配
		List books = bookService.getRequiredBookByName(this.getBookname());
		Map request = (Map)ActionContext.getContext().get("request");
		System.out.println(bookname);
		request.put("books",books);
		return SUCCESS;
	}

	//删除书籍
	private int bookId;//根据输入的书名或部分书名查询
	public int getBookId() {
		return bookId;
	}
	public void setBookId(int bookId) {
		this.bookId = bookId;
	}
	public String deleteBook() throws Exception{
		int bookid=this.getBookId();
		System.out.println("uiui" + bookid);
		bookService.deleteBook(bookid);
		return SUCCESS;
	}

}

