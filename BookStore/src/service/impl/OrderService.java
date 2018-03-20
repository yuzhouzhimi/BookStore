package service.impl;
import dao.IOrderDAO;
import model.Orders;
import service.IOrderService;
public class OrderService implements IOrderService {
	    //业务逻辑实例化orderDAO
		private IOrderDAO orderDAO;
		//orderDAO的setter方法
		public void setOrderDAO(IOrderDAO orderDAO) {
			this.orderDAO = orderDAO;
		}
		//订单存储
		public Orders saveOrder(Orders order) {
			return orderDAO.saveOrder(order);
		}
}

