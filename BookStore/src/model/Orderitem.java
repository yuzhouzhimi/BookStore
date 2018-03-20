package model;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Orderitem implements java.io.Serializable {
    private Integer orderitemid;
    private Book book;//该订单项书籍
    private Orders orders;//该订单项属于哪个订单
    private Integer quantity;
    //上述属性的get和set方法
    public Integer getOrderitemid() {
        return orderitemid;
    }
    public void setOrderitemid(Integer orderitemid) {
        this.orderitemid = orderitemid;
    }
    public Book getBook() {
        return book;
    }
    public void setBook(Book book) {
        this.book = book;
    }
    public Orders getOrders() {
        return orders;
    }
    public void setOrders(Orders orders) {
        this.orders = orders;
    }
    public Integer getQuantity() {
        return quantity;
    }
    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }
}
