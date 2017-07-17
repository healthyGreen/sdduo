package sd.duo.admin;

public class AdminOneReserPaging {
	
	private int currentPage;
	private int totalCount;
	private int totalPage;
	private int blockCount;
	private int blockPage;
	private int startCount;
	private int endCount;
	private int startPage;
	private int endPage;
	private String viewName;
	private String pr_center;
	private String isSearch;
	private String pr_year;
	private String pr_month;
	private String pr_day;
	
	private StringBuffer pagingHtml;
	
	public AdminOneReserPaging(int currentPage, int totalCount, int blockCount, int blockPage, String viewName, String pr_center, String isSearch){
		
		this.blockCount = blockCount;
		this.blockPage = blockPage;
		this.currentPage = currentPage;
		this.totalCount = totalCount;
		this.viewName = viewName;
		this.pr_center = pr_center;
		this.isSearch = isSearch;
		
		totalPage = (int) Math.ceil((double) totalCount / blockCount);
		if(totalPage == 0){
			totalPage = 1;
		}
		
		if(currentPage > totalPage){
			currentPage = totalPage;
		}
		
		startCount = (currentPage - 1) * blockCount;
		endCount = startCount + blockCount - 1;
		
		startPage = (int) ((currentPage -1) / blockPage) * blockPage + 1;
		endPage = startPage + blockPage - 1;
		
		if(endPage > totalPage){
			endPage = totalPage;
		}
		
		pagingHtml = new StringBuffer();
		if(currentPage > blockPage){
			pagingHtml.append("<a class='page prv' href=" + viewName + ".do?currentPage=" + (startPage - 1) + "&pr_center=" +pr_center + "&isSearch=" + isSearch + ">");
			pagingHtml.append("&lt;");
			pagingHtml.append("</a>");
		}
		
		for(int i = startPage; i <= endPage; i++){
			if(i > totalPage){
				break;
			}
			if(i == currentPage){
				pagingHtml.append("<strong class='current'>");
				pagingHtml.append(i);
				pagingHtml.append("</strong>");
			} else{
				pagingHtml.append("<a class='page' href=" + viewName + ".do?currentPage=" + i + "&pr_center=" + pr_center + "&isSearch=" + isSearch);
				//pagingHtml.append(i);
				pagingHtml.append(">");
				pagingHtml.append(i);
				pagingHtml.append("</a>");
			}
		}
		
		if(totalPage - startPage >= blockPage){
			pagingHtml.append("<a class='page next' href=" + viewName + ".do?currentPage=" + (endPage + 1) + "&pr_center=" + pr_center + "&isSearch=" + isSearch + ">");
			pagingHtml.append("&gt;");
			pagingHtml.append("</a>");
		}
		
		
	}
	public AdminOneReserPaging(int currentPage, int totalCount, int blockCount, int blockPage, String viewName, String pr_center, String pr_year, String pr_month, String pr_day){
		
		this.blockCount = blockCount;
		this.blockPage = blockPage;
		this.currentPage = currentPage;
		this.totalCount = totalCount;
		this.viewName = viewName;
		this.pr_center = pr_center;
		this.pr_year = pr_year;
		this.pr_month = pr_month;
		this.pr_day = pr_day;
		
		totalPage = (int) Math.ceil((double) totalCount / blockCount);
		if(totalPage == 0){
			totalPage = 1;
		}
		
		if(currentPage > totalPage){
			currentPage = totalPage;
		}
		
		startCount = (currentPage - 1) * blockCount;
		endCount = startCount + blockCount - 1;
		
		startPage = (int) ((currentPage -1) / blockPage) * blockPage + 1;
		endPage = startPage + blockPage - 1;
		
		if(endPage > totalPage){
			endPage = totalPage;
		}
		
		pagingHtml = new StringBuffer();
		if(currentPage > blockPage){
			pagingHtml.append("<a class='page prv' href=" + viewName + ".do?currentPage=" + (startPage - 1) + "&pr_center=" +pr_center + "&pr_year=" + pr_year + "&pr_month=" + pr_month + "&pr_day=" + pr_day + ">");
			pagingHtml.append("&lt;");
			pagingHtml.append("</a>");
		}
		
		for(int i = startPage; i <= endPage; i++){
			if(i > totalPage){
				break;
			}
			if(i == currentPage){
				pagingHtml.append("<strong class='current'>");
				pagingHtml.append(i);
				pagingHtml.append("</strong>");
			} else{
				pagingHtml.append("<a class='page' href=" + viewName + ".do?currentPage=" + i + "&pr_center=" + pr_center + "&pr_year=" + pr_year + "&pr_month=" + pr_month + "&pr_day=" + pr_day);
				//pagingHtml.append(i);
				pagingHtml.append(">");
				pagingHtml.append(i);
				pagingHtml.append("</a>");
			}
		}
		
		if(totalPage - startPage >= blockPage){
			pagingHtml.append("<a class='page next' href=" + viewName + ".do?currentPage=" + (endPage + 1) + "&pr_center=" + pr_center + "&pr_year=" + pr_year + "&pr_month=" + pr_month + "&pr_day=" + pr_day + ">");
			pagingHtml.append("&gt;");
			pagingHtml.append("</a>");
		}
		
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public int getBlockCount() {
		return blockCount;
	}

	public void setBlockCount(int blockCount) {
		this.blockCount = blockCount;
	}

	public int getBlockPage() {
		return blockPage;
	}

	public void setBlockPage(int blockPage) {
		this.blockPage = blockPage;
	}

	public int getStartCount() {
		return startCount;
	}

	public void setStartCount(int startCount) {
		this.startCount = startCount;
	}

	public int getEndCount() {
		return endCount;
	}

	public void setEndCount(int endCount) {
		this.endCount = endCount;
	}

	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public String getViewName() {
		return viewName;
	}

	public void setViewName(String viewName) {
		this.viewName = viewName;
	}

	public String getPr_center() {
		return pr_center;
	}

	public void setPr_center(String pr_center) {
		this.pr_center = pr_center;
	}

	public StringBuffer getPagingHtml() {
		return pagingHtml;
	}

	public void setPagingHtml(StringBuffer pagingHtml) {
		this.pagingHtml = pagingHtml;
	}

	public String getIsSearch() {
		return isSearch;
	}

	public void setIsSearch(String isSearch) {
		this.isSearch = isSearch;
	}
	public String getPr_year() {
		return pr_year;
	}
	public void setPr_year(String pr_year) {
		this.pr_year = pr_year;
	}
	public String getPr_month() {
		return pr_month;
	}
	public void setPr_month(String pr_month) {
		this.pr_month = pr_month;
	}
	public String getPr_day() {
		return pr_day;
	}
	public void setPr_day(String pr_day) {
		this.pr_day = pr_day;
	}

}
