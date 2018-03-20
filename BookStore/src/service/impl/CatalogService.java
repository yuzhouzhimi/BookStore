package service.impl;
import java.util.List;
import dao.ICatalogDAO;
import service.ICatalogService;
public class CatalogService implements ICatalogService {
	    //业务逻辑实现catalogDAO的实例
		private ICatalogDAO catalogDAO;
		//获取所有分类选项
		public List getAllCatalogs(){
			return catalogDAO.getAllCatalogs();
		}
		//catalogDAO的setter方法
		public void setCatalogDAO(ICatalogDAO catalogDAO) {
			this.catalogDAO = catalogDAO;
		}
}
