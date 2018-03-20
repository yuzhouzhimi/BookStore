package model;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import java.util.HashSet;
import java.util.Set;

@Entity
public class User {
    private String phone;//用户电话
    private String address;//用户地址
    //获取用户电话
    public String getPhone() {
        return phone;
    }
    //设置用户电话
    public void setPhone(String phone) {
        this.phone = phone;
    }
    //获取地址
    public String getAddress() {
        return address;
    }
    //设置地址
    public void setAddress(String address) {
        this.address = address;
    }
    private Integer userid;//用户ID
    private String username;//用户姓名
    private String password;//用户密码
    private String sex;//性别
    private Integer age;//年龄
    private Set orderses = new HashSet(0);	//该用户的订单
    //上述属性的set和get方法
    public Integer getUserid() {
        return userid;
    }
    public void setUserid(Integer userid) {
        this.userid = userid;
    }
    public String getUsername() {
        return username;
    }
    public void setUsername(String username) {
        this.username = username;
    }
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }
    public String getSex() {
        return sex;
    }
    public void setSex(String sex) {
        this.sex = sex;
    }
    public Integer getAge() {
        return age;
    }
    public void setAge(Integer age) {
        this.age = age;
    }
    //获取订单信息
    public Set getOrderses() {
        return orderses;
    }
    //订单信息设置
    public void setOrderses(Set orderses) {
        this.orderses = orderses;
    }

}
