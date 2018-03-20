package model;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import java.util.HashSet;
import java.util.Set;

@Entity
public class Catalog implements java.io.Serializable {
    private Integer catalogid;//分类ID
    private String catalogname;//分类的名字
    private Set books = new HashSet();//书的集合
    //上述属性的get和set方法
    public Integer getCatalogid() {
        return catalogid;
    }
    public void setCatalogid(Integer catalogid) {
        this.catalogid = catalogid;
    }
    public String getCatalogname() {
        return catalogname;
    }
    public void setCatalogname(String catalogname) {
        this.catalogname = catalogname;
    }
    public Set getBooks() {
        return books;
    }
    public void setBooks(Set books) {
        this.books = books;
    }
}