package dao.impl;
import dao.IOrderDAO;
import model.Orders;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;
public class OrderDAO extends HibernateDaoSupport implements IOrderDAO{
	//订单存储
   public Orders saveOrder(Orders order) {
		this.getHibernateTemplate().save(order);
		return order;
	}
}	
