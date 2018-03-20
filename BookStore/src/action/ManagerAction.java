package action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import model.Book;
import model.Manager;
import org.springframework.transaction.annotation.Transactional;
import service.IBookService;
import service.ImanagerService;
import service.impl.ManagerService;
import util.Pager;


import java.util.List;
import java.util.Map;

public class ManagerAction extends ActionSupport {
    protected Manager manager;//管理员model
    private ImanagerService managerService;//managerservice接口
    public Manager getManager() {
        return this.manager;
    }
    public void setManager(Manager manager) {
        this.manager = manager;
    }
    public void setManagerService(ImanagerService managerService) {
        this.managerService = managerService;
    }

    //验证管理员登录
    @Transactional
    public String execute() throws Exception {
        Manager m = managerService.validateManager(manager.getManagername(), manager.getPassword());
        if (m != null) {
            Map session = (Map) ActionContext.getContext().getSession();
            session.put("manager", m);
            return SUCCESS;
        } else {
            return ERROR;
        }
    }
    public String logout() throws Exception{
        //用户注销
        Map session= ActionContext.getContext().getSession();
        session.remove("manager");
        return SUCCESS;
    }

    //管理员查看书并可操作
    protected IBookService bookService;
    public void setBookService(IBookService bookService) {
        this.bookService = bookService;
    }
    public IBookService getBookService(){
        return this.bookService;
    }

    private int pageNow=1;//定义当前页
    private int pageSize=8;//每一页显示书籍数量
    public int getPageNow(){
        return pageNow;
    }
    public void setPageNow(int pageNow) {
        this.pageNow = pageNow;
    }
    public int getPageSize() {
        return pageSize;
    }
    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }
    //书籍信息展示
    public String showBook() throws Exception {
        System.out.println(this.getPageNow());
        List list=managerService.findAll(pageNow,pageSize);//查询所有书籍
        Map request=(Map)ActionContext.getContext().get("request");
        Pager page=new Pager(getPageNow(),managerService.findXsSize());
        request.put("list", list);
        request.put("page", page);
        return SUCCESS;
    }
    //显示用户信息并可操作
    public String showUser() throws Exception {
        System.out.println(this.getPageNow());
        List list=managerService.findAlluser(pageNow,pageSize);//查询所有用户
        Map request=(Map)ActionContext.getContext().get("request");
        Pager page=new Pager(getPageNow(),managerService.finduser());
        request.put("user", list);
        request.put("page", page);
        return SUCCESS;
    }
    //显示订单信息并可操作
    public String showOrder() throws Exception {
        System.out.println(this.getPageNow());
        List list=managerService.findAllorder(pageNow,pageSize);//查询所有订单
        Map request=(Map)ActionContext.getContext().get("request");
        Pager page=new Pager(getPageNow(),managerService.findorder());
        request.put("orders", list);
        request.put("page", page);
        System.out.println(list);
        return SUCCESS;
    }

    //显示管理员信息并可操作
    public String showManager() throws Exception {
        System.out.println(this.getPageNow());
        List list=managerService.findAllmanager(pageNow,pageSize);//查询所有管理员
        Map request=(Map)ActionContext.getContext().get("request");
        Pager page=new Pager(getPageNow(),managerService.findmanager());
        request.put("manager", list);
        request.put("page", page);
        return SUCCESS;
    }
    //管理员加书
    protected Book book;
    public Book getBook() {
        return this.book;
    }
    public void setBook(Book book) {
        this.book = book;
    }
    @Transactional
    public String addBook() throws Exception {
        System.out.println(book.getBookname());
        Book book1=new Book();
//        book1.setBookid(book.getBookid());
        book1.setBookname(book.getBookname());
        book1.setPrice(book.getPrice());
        book1.setPicture(book.getPicture());
        book1.setCatalog(book.getCatalog());
        book1.setQuantity(book.getQuantity());
        managerService.saveBook(book1);//管理员将书存入数据库
        return SUCCESS;
    }
}
