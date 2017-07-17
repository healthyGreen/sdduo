package sd.duo.admin;

public class AdminGrReserPaging {
	
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
	private String gr_center;
	private String isSearch;
	private String gr_year;
	private String gr_month;
	private String gr_day;
	
	private StringBuffer pagingHtml;
	
	public AdminGrReserPaging(int currentPage, int totalCount, int blockCount, int blockPage, String viewName, String gr_center, String isSearch){
		
		this.blockCount = blockCount;
		this.blockPage = blockPage;
		this.currentPage = currentPage;
		this.totalCount = totalCount;
		this.viewName = viewName;
		this.gr_center = gr_center;
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
			pagingHtml.append("<a class='page prv' href=" + viewName + ".do?currentPage=" + (startPage - 1) + "&gr_center=" +gr_center + "&isSearch=" + isSearch + ">");
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
				pagingHtml.append("<a class='page' href=" + viewName + ".do?currentPage=" + i + "&gr_center=" + gr_center + "&isSearch=" + isSearch);
				//pagingHtml.append(i);
				pagingHtml.append(">");
				pagingHtml.append(i);
				pagingHtml.append("</a>");
			}
		}
		
		if(totalPage - startPage >= blockPage){
			pagingHtml.append("<a class='page next' href=" + viewName + ".do?currentPage=" + (endPage + 1) + "&gr_center=" + gr_center + "&isSearch=" + isSearch + ">");
			pagingHtml.append("&gt;");
			pagingHtml.append("</a>");
		}
		
		
	}
	
	public AdminGrReserPaging(int currentPage, int totalCount, int blockCount, int blockPage, String viewName, String gr_center, String gr_year, String gr_month, String gr_day){
		
		this.blockCount = blockCount;
		this.blockPage = blockPage;
		this.currentPage = currentPage;
		this.totalCount = totalCount;
		this.viewName = viewName;
		this.gr_center = gr_center;
		this.gr_year = gr_year;
		this.gr_month = gr_month;
		this.gr_day = gr_day;
		
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
			pagingHtml.append("<a class='page prv' href=" + viewName + ".do?currentPage=" + (startPage - 1) + "&gr_center=" +gr_center + "&gr_year=" + gr_year + "&gr_month=" + gr_month + "gr_day=" + gr_day + ">");
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
				pagingHtml.append("<a class='page' href=" + viewName + ".do?currentPage=" + i + "&gr_center=" + gr_center + "&gr_year=" + gr_year + "&gr_month=" + gr_month + "&gr_day=" + gr_day);
				//pagingHtml.append(i);
				pagingHtml.append(">");
				pagingHtml.append(i);
				pagingHtml.append("</a>");
			}
		}
		
		if(totalPage - startPage >= blockPage){
			pagingHtml.append("<a class='page next' href=" + viewName + ".do?currentPage=" + (endPage + 1) + "&gr_center=" + gr_center + "&gr_year=" + gr_year + "&gr_month=" + gr_month + "&gr_day=" + gr_day + ">");
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

	public String getGr_center() {
		return gr_center;
	}

	public void setGr_center(String gr_center) {
		this.gr_center = gr_center;
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

	public String getGr_year() {
		return gr_year;
	}

	public void setGr_year(String gr_year) {
		this.gr_year = gr_year;
	}

	public String getGr_month() {
		return gr_month;
	}

	public void setGr_month(String gr_month) {
		this.gr_month = gr_month;
	}

	public String getGr_day() {
		return gr_day;
	}

	public void setGr_day(String gr_day) {
		this.gr_day = gr_day;
	}

}
