package util;
//定义一个当前页面信息的pager类
public class Pager {
	private int currentPage;//当前页
	private int pageSize=3;//一页上面书籍数量
	private int totalSize;//总的书籍数量
	private int totalPage;//总的页数
	private boolean hasFirst;//定义首页
	private boolean hasPrevious;//定义前一页
	private boolean hasNext;//定义下一页
	private boolean hasLast;//定义尾页
	//以currentPage和totalSize进行pager的构造方法
	public Pager(int currentPage,int totalSize){
		this.currentPage=currentPage;
		this.totalSize=totalSize;
	}
	//currentPage的getter和setter方法
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	//pageSize的getter和setter方法
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	//totalSize的getter和setter方法
	public int getTotalSize() {
		return totalSize;
	}
	public void setTotalSize(int totalSize) {
		this.totalSize = totalSize;
	}

	//totalPager的getter和setter方法
	public int getTotalPage() {
		totalPage=totalSize/pageSize;//总的页数等于总的书籍数量除以每一页书的数量
		if(totalSize%pageSize!=0)
			totalPage++;
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	public boolean isHasFirst() {
		if(currentPage==1){
			return false;
		}
		return true;
	}

	//hasFirst的getter和setter方法
	public void setHasFirst(boolean hasFirst) {
		this.hasFirst = hasFirst;
	}
	public boolean isHasPrevious() {
		if(isHasFirst())
			return true;
		else
			return false;
	}
	public void setHasPrevious(boolean hasPrevious) {
		this.hasPrevious = hasPrevious;
	}
	public boolean isHasNext() {
		if(isHasLast())
			return true;
		else
			return false;
	}

	//hasNext的getter和setter方法
	public void setHasNext(boolean hasNext) {
		this.hasNext = hasNext;
	}
	public boolean isHasLast() {
		if(currentPage == getTotalPage())
			return false;
		else
			return true;
	}
	public void setHasLast(boolean hasLast) {
		this.hasLast = hasLast;
	}
}

