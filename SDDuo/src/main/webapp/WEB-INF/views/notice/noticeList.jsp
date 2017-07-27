<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   



<body>


    <div id="wrapper">

        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">공지사항 관리</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <div class="row">
                <div class="resev-box" style=" margin-top: 60px;">
					<p class="listnum">총 <span>${ totalCount}</span>건 ${currentPage}/${totalPage }</p>
					<form name="frmCommonList">
					<p class="search-area">
						<select name="searchNum" id="searchNum">
							<option value="0">제목</option>
						</select>
						<input type="text" name="isSearch" id="isSearch" maxlength="20" value="" class="noticebox">
						<input type="submit" value="검색"  class="noticebtn">
					</p>
					</form>
				</div>
		 	 	<form action="noticeDeleteAll.do">  
				<table class="list-board01">
				<colgroup>
			<c:choose>
				<c:when test="${session_admin == 1}"> 
					<col width="5px">
					<col width="105px">
				</c:when>	
				<c:otherwise>
					<col width="110px">
				</c:otherwise>
			</c:choose>
					<col width="">
					<col width="137px">
					<col width="137px">
					<col width="150px">
				</colgroup>
			<thead>
               <tr>
               	<c:if test="${session_admin == 1}"> 
                  <th><input type="checkbox" name="checkAll" id="th_checkAll"/></th>
                </c:if>
                  <th>번호</th>
                  <th>제목</th>
                  <th>작성자</th>
                  <th>작성일</th>
                  <th>조회수</th>
               </tr>
            </thead>
				<tbody>
					<c:forEach var="list" items="${adminNoticeList}">
						<c:url var="viewURL" value="/notice/noticeView.do" >
							<c:param name="n_number" value="${list.n_number }" />
						    <c:param name="currentPage" value="${currentPage }" />
						</c:url>
					<tr>
					<c:if test="${session_admin == 1}"> 
						<td class="center"><input type="checkbox" id="checkRow" name="checkRow" value="${list.n_number}" /></td>
					</c:if>
						<td>${list.n_number}</td>
						
						<td style="text-align:left;">
									<a href="${viewURL}">[공지사항]${list.n_title}</a>
						</td>
						
						<td>${list.n_name}</td> 
						<td><fmt:formatDate value="${list.n_date}" pattern="yyyy.MM.dd"/></td>
						<td>
							${list.n_hit}
						</td>
					</tr>
					</c:forEach>

				</tbody>
			</table>
			
		
			<div class="pageing">
				${pagingHtml}
			</div>
			
			
			<div style="margin-top:40px; float: right;">
		
								
					 <c:if test="${session_admin == 1}"> 
						<button type="button" onclick="onWrite()" class="btn btn-outline btn-primary" style="margin-right: 10px; ">글쓰기</button>
						<button type="submit" class="btn btn-outline btn-primary" style="margin-right: 10px; ">삭제</button>
					 </c:if> 
			
			
			
			</div>
			 </form>  
            </div>
            <!-- /.row -->
            
            <c:if test="${fn:length(adminNoticeList) le 0}">
				<br />
				<center>등록된 게시물이 없습니다</center>
				<br />
			</c:if>

		
            
        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->


</body>

<script type="text/javascript">

var onWrite = function(){
	location.href = 'noticeWrite.do'; 
}

$('.searchOption').val($('.searchOptionVal').val());



$(function(){
	$("#th_checkAll").click(function(){
		if($("#th_checkAll").prop("checked")){
			$("input[type=checkbox]").prop("checked",true);
			} else { 
				$("input[type=checkbox]").prop("checked",false);
				}
		})
		})
			




</script>




