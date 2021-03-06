package sd.duo.common;

public class Paging {

	private int currentPage;   // ??¬??΄μ§? f
	private int totalCount;	 // ? μ²? κ²μλ¬? ? f
	private int totalPage;	 // ? μ²? ??΄μ§? ?
	private int blockCount;	 // ? ??΄μ§??  κ²μλ¬Όμ ? f
	private int blockPage;	 // ? ?λ©΄μ λ³΄μ¬μ€? ??΄μ§? ? f
	private int startCount;	 // ? ??΄μ§??? λ³΄μ¬μ€? κ²μκΈ?? ?? λ²νΈ
	private int endCount;	 // ? ??΄μ§??? λ³΄μ¬μ€? κ²μκΈ?? ? λ²νΈ
	private int startPage;	 // ?? ??΄μ§?
	private int endPage;	 // λ§μ?λ§? ??΄μ§?
	private String viewName;

	private StringBuffer pagingHtml;

	// ??΄μ§? ??±?
	public Paging(int currentPage, int totalCount, int blockCount, int blockPage, String viewName) {

		this.blockCount = blockCount;
		this.blockPage = blockPage;
		this.currentPage = currentPage;
		this.totalCount = totalCount;
		this.viewName = viewName;

		// ? μ²? ??΄μ§? ?
		totalPage = (int) Math.ceil((double) totalCount / blockCount);
		if (totalPage == 0) {
			totalPage = 1;
		}

		// ??¬ ??΄μ§?κ°? ? μ²? ??΄μ§? ?λ³΄λ€ ?¬λ©? ? μ²? ??΄μ§? ?λ‘? ?€? 
		if (currentPage > totalPage) {
			currentPage = totalPage;
		}

		// ??¬ ??΄μ§?? μ²μκ³? λ§μ?λ§? κΈ?? λ²νΈ κ°?? Έ?€κΈ?.
		startCount = (currentPage - 1) * blockCount;
		endCount = startCount + blockCount - 1;

		// ?? ??΄μ§??? λ§μ?λ§? ??΄μ§? κ°? κ΅¬νκΈ?.
		startPage = (int) ((currentPage - 1) / blockPage) * blockPage + 1;
		endPage = startPage + blockPage - 1;

		// λ§μ?λ§? ??΄μ§?κ°? ? μ²? ??΄μ§? ?λ³΄λ€ ?¬λ©? ? μ²? ??΄μ§? ?λ‘? ?€? 
		if (endPage > totalPage) {
			endPage = totalPage;
		}

		// ?΄?  block ??΄μ§?
		pagingHtml = new StringBuffer();
		if (currentPage > blockPage) {
			pagingHtml.append("<a class='page prv' href=" + viewName + ".do?currentPage=" + (startPage - 1) + ">");
			pagingHtml.append("&lt;");
			pagingHtml.append("</a>");
		}

		//??΄μ§? λ²νΈ.??¬ ??΄μ§?? λΉ¨κ°??Όλ‘? κ°μ‘°?κ³? λ§ν¬λ₯? ? κ±?.
		for (int i = startPage; i <= endPage; i++) {
			if (i > totalPage) {
				break;
			}
			if (i == currentPage) {
				pagingHtml.append("<strong class='current'>");
				pagingHtml.append(i);
				pagingHtml.append("</strong>");
			} else {
				pagingHtml.append("<a class='page' href=" + viewName + ".do?currentPage=");
				pagingHtml.append(i);
				pagingHtml.append(">");
				pagingHtml.append(i);
				pagingHtml.append("</a>");
			}
		}

		// ?€? block ??΄μ§?
		if (totalPage - startPage >= blockPage) {
			pagingHtml.append("<a class='page next' href=" + viewName + ".do?currentPage=" + (endPage + 1) + ">");
			pagingHtml.append("&gt;");
			pagingHtml.append("</a>");
		}
	}

	// Search?? ??±?
	public Paging(int currentPage, int totalCount, int blockCount, int blockPage,String viewName, int searchNum, String isSearch){
		
		this.blockCount = blockCount;
		this.blockPage = blockPage;
		this.currentPage = currentPage;
		this.totalCount = totalCount;
		
		totalPage = (int) Math.ceil((double) totalCount / blockCount);
		if(totalPage == 0){
			totalPage = 1;
		}
		
		if(currentPage > totalPage){
			currentPage = totalPage;
		}
		
		startCount = (currentPage -1) * blockCount;
		endCount = startCount + blockCount -1;
		
		startPage = (int)((currentPage -1) / blockPage) * blockPage +1;
		endPage = startPage + blockPage -1;
		
		if(endPage > totalPage){
			endPage = totalPage;
		}
		
		// ?΄?  block ??΄μ§?
		pagingHtml = new StringBuffer();
		if(currentPage > blockPage){
			if(isSearch != "")
				pagingHtml.append("<a class='page prv' href=" + viewName + ".do?currentPage=" + (startPage - 1) + "&searchNum="+searchNum+ "&isSearch="+isSearch+">");
			else                    
				pagingHtml.append("<a class='page prv' href=" + viewName + ".do?currentPage=" + (startPage - 1) + ">");
			pagingHtml.append("&lt;");
			pagingHtml.append("</a>");
			}
		
		//??΄μ§? λ²νΈ, ??¬ ??΄μ§?? ?€λ₯΄κ² ??
		for(int i = startPage; i <= endPage; i++){
			if(i > totalPage){
				break;
			}
			if(i == currentPage){
				pagingHtml.append("<strong>");
				pagingHtml.append(i);
				pagingHtml.append("</strong>");
			}
			else{
				pagingHtml.append("<a class='page' href=" + viewName + ".do?currentPage=" + i);
				if(isSearch != "")
					pagingHtml.append("&isSearch=" + isSearch+"&searchNum="+searchNum);
				pagingHtml.append(">");
				pagingHtml.append(i);
				pagingHtml.append("</a>");
			}
		}
		// ?€? block ??΄μ§?
		if(totalPage - startPage >= blockPage){
			pagingHtml.append("<a class='page next' href=" + viewName + ".do?currentPage=" + (endPage + 1));
			if(isSearch != "")
				pagingHtml.append("&isSearch=" + isSearch+"&searchNum="+searchNum);
			pagingHtml.append(">");
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

	public StringBuffer getPagingHtml() {
		return pagingHtml;
	}

	public void setPagingHtml(StringBuffer pagingHtml) {
		this.pagingHtml = pagingHtml;
	}

	public String getViewName() {
		return viewName;
	}

	public void setViewName(String viewName) {
		this.viewName = viewName;
	}
}