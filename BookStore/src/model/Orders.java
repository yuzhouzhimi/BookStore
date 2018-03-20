package model;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import java.sql.Timestamp;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

@Entity
public class Orders implements java.io.Serializable {
    private Integer orderid;
    private User user;//订单输入用户
    private Date orderdate;//订单日期
    private int userid;
    private Set orderitems = new HashSet();//包含的订单项
    //上述属性的get和set方法
    public Integer getOrderid() {
        return orderid;
    }
    public void setOrderid(Integer orderid) {
        this.orderid = orderid;
    }
    public User getUser() {
        return user;
    }
    public void setUser(User user) {
        this.user = user;
    }
    public Date getOrderdate() {
        return orderdate;
    }
    public void setOrderdate(Date orderdate) {
        this.orderdate = orderdate;
    }
    public Set getOrderitems() {
        return orderitems;
    }
    public void setOrderitems(Set orderitems) {
        this.orderitems = orderitems;
    }
    public int getUserid() {
        return userid;
    }
    public void setUserid(int userid) {
        this.userid = userid;
    }
}