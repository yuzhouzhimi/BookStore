package dao.impl;
import java.util.List;
import dao.ICatalogDAO;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;
public class CatalogDAO extends HibernateDaoSupport implements ICatalogDAO{
	    //hibernate层从数据库取得所有分类选项
		public List getAllCatalogs(){
		 	List catalogs=this.getHibernateTemplate().find("from Catalog");
			return catalogs;
		}
}

