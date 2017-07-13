<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<body>
<div id="page-wrapper">
            <div class="row">
             <div class="col-lg-12">
             <h3 class="page-header">온라인 상담 답변 대기중 글들</h3>	
             </div>
			
				<p class="listnum">총 <span>${totalCount }</span>건</p>
					<table class="list-board01">
						<colgroup>
							<col width="110px">
							<col width="">
							<col width="100px">
					 		<col width="250px"> 
							<col width="200px">
						</colgroup>
						<tbody>
						<c:choose>
							<c:when test="${fn:length(consultinglist) le 0}">
							<tr><th>
								등록된 게시물이 없습니다.
								</th></tr>
							</c:when>
							<c:otherwise>
							<tr>
								<th>번호</th>
								<th>제목</th>
								<th>작성자</th>
								<th>작성일</th> 
								<th>답변상태</th>
								
							</tr>
							<%int number = 1; %>
							
							<c:forEach var="list" items="${consultinglist }">
						
							<c:url var="viewURL" value="adminConsultingView.do">
								<c:param name="c_number" value="${list.c_number }"/>
							 	<c:param name="c_ref" value="${list.c_ref }"/>
							</c:url>
							<tr>
								<th><%= number++%></th>
								<td class="subject">
								
								 	<a href="${viewURL}">${list.c_title }</a>
								
								
								</td>
								<th>${list.m_id }</th>
								<th><fmt:formatDate value="${list.c_date }" pattern="yyyy.MM.dd"/></th> 
								<th><p class="finish">
								<c:if test="${list.c_re_status==1}">
								답변 대기중
								</c:if>
								<c:if test="${list.c_re_status==2 }">
								★확인★
								</c:if>
								<c:if test="${list.c_re_status==3 }">
								<font color="red">답변글</font>
								</c:if> 
								</p></th>
							</tr>
							</c:forEach>
							</c:otherwise>
							</c:choose>
						</tbody>
					</table>
					
				<!-- 언니 위에 요거 button으로 하고싶은데 버튼으로하면 jstl이 안머거영 ㅠㅠ -->
				<%-- 	<input type="button" onclick="${replyURL}" value="관리자 답변달기" class="storywrite"> --%> 
				<c:if test="${session_admin!=1 }">
					<p class="btn01"><input type="button" value="이야기 쓰기" onclick="location.href='<%=request.getContextPath() %>/consulting/consultingForm.do'"  class="storywrite"></p>
				</c:if>
					<div class="pageing" align="center">
						${html}
					</div>
					</div></div>
</body>
</html>