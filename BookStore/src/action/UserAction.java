package action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import model.User;
import org.springframework.transaction.annotation.Transactional;
import service.IUserService;

import java.util.Map;

public class UserAction extends ActionSupport {
    protected User user;//用户model
    protected IUserService userService;

    public User getUser() {
        return this.user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public void setUserService(IUserService userService) {

        this.userService = userService;
    }
    //用户注册
    @Transactional
    public String register() throws Exception {
        System.out.println(user.getUsername());
        User user1 = new User();
        user1.setUsername(user.getUsername());
        user1.setAge(user.getAge());
        user1.setPassword(user.getPassword());
        user1.setSex(user.getSex());
        user1.setPhone(user.getPhone());
        user1.setAddress(user.getAddress());
        userService.saveUser(user1);//将用户信息保存
        return SUCCESS;
    }
    //用户登录信息验证
    public String execute() throws Exception {
        User u = userService.validateUser(user.getUsername(), user.getPassword());
        if (u != null) {
            Map session = (Map) ActionContext.getContext().getSession();
            session.put("user", u);
            return SUCCESS;
        } else {
            return ERROR;
        }
    }
    public String logout() throws Exception{
        //用户注销
        Map session= ActionContext.getContext().getSession();
        session.remove("user");//将用户注销
        session.remove("cart");//将购物车清空
        return SUCCESS;
    }

}