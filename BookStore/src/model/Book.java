package model;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Book {
    private int bookid;//书的ID
    private String bookname;//书的名字
    private double price;//书的价格
    private String picture;//书的照片
    private Integer quantity;//书的数量
    private Catalog catalog;//图书所属分类
    //book的构造函数
    public Book() {
    }
    public Book(String bookname, Integer price, String picture, int quantity,
                Catalog catalogid) {
        this.bookname = bookname;
        this.price = price;
        this.picture = picture;
        this.catalog = catalog;
        this.quantity=quantity;
    }
    //书的属性的getter和setter方法
    @Id
    @Column(name = "bookid", nullable = false)
    public int getBookid() {
        return bookid;
    }

    public void setBookid(int bookid) {
        this.bookid = bookid;
    }

    @Basic
    @Column(name = "bookname", nullable = false, length = 50)
    public String getBookname() {
        return bookname;
    }

    public void setBookname(String bookname) {
        this.bookname = bookname;
    }

    @Basic
    @Column(name = "price", nullable = false, precision = 0)
    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    @Basic
    @Column(name = "picture", nullable = false, length = 50)
    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }

    @Basic
    @Column(name = "quantity", nullable = true)
    public Integer getQuantity() {
        return quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }
    //图书所属分类catalog的setter和getter方法
    public Catalog getCatalog() {
        return catalog;
    }
    public void setCatalog(Catalog catalog) {
        this.catalog = catalog;
    }
}
