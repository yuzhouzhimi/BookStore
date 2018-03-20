package model;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Manager {
    private int managerid;//管理员的ID
    private String managername;//管理员的姓名
    private String password;//管理员的密码
    private String sex;//管理员的性别
    //上述属性的getter和setter方法
    public int getManagerid() {
        return managerid;
    }
    public void setManagerid(int managerid) {
        this.managerid = managerid;
    }
    public String getManagername() {
        return managername;
    }
    public void setManagername(String managername) {
        this.managername = managername;
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
}

