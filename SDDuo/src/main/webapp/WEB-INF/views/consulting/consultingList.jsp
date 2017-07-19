<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html xmlns="http://www.w3.org/1999/xhtml">


 <body>

					<h3>온라인 상담</h3>
					<p class="sub02_txt">
						마이스토리에 남겨주신 소중한 이야기는 내담자 보호 규정에 따라 철저히 비밀 보장 되며 병원과 달리 절대 기록이 남지 않습니다.<br />
						<span>답변은 질문 내용에 따라 분류되어 해당 분야 전문선생님에 의해 성실이 이루어집니다. <br />
						답변 순서는 각 센터별 전문가 선생님들의 여건에 따라 달라질 수 있음을 양해해 주시기 바랍니다.</span><br />
					</p>
					<div class="resev-box">
				<p class="listnum">총 <span>${totalCount }</span>건&nbsp; <input type="button" value="글쓰기" onclick="location.href='<%=request.getContextPath()%>/consulting/consultingForm.do'"></p>
				
				<c:if test="${session_member_id !=null }">
						<p class="reserv-btn" onclick="location.href='<%=request.getContextPath()%>/Reserve/OneReserveForm.do'">
						<%-- <input type="button" onclick="location.href='<%=request.getContextPath()%>/Reserve/OneReserveForm.do'"> --%>실시간예약 바로가기</p>
						</c:if>
					</div>
					
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
								등록된 게시물이 없습니다.
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
							<c:url var="passURL" value="consultingPassForm.do">
								<c:param name="c_number" value="${list.c_number }"/>
							<%-- 	<c:param name="c_ref" value="${list.c_ref }"/> --%>
							</c:url>	
							<c:url var="viewURL" value="consultingView.do">
								<c:param name="c_number" value="${list.c_number }"/>
							 	<c:param name="c_ref" value="${list.c_ref }"/>
							</c:url>
							<tr>
								<th><%= number++%></th>
								<td class="subject">
								
								<c:if test="${list.c_ref != list.c_number }"> <!-- // 답변글일 경우 -->
								  <c:if test="${session_admin!=1}"> 
								 	<a href="${passURL}"><!-- <img src="../../images/sub/lock.gif" alt="자물쇠" class="lock"> --><b>↘</b>${list.c_title }</a>
							 	 </c:if> 
								 <c:if test="${session_admin==1}">
								 	<a href="${viewURL}"><b>↘</b>${list.c_title }</a>
								 </c:if> 
								</c:if>
								
								<c:if test="${list.c_ref == list.c_number }"> <!-- // 답변글이 아닐경우 -->
							 <c:if test="${session_admin!=1 }">
								 	<a href="${passURL}"><!-- <img src="../../images/sub/lock.gif" alt="자물쇠" class="lock"> --><b>[♨비밀글]</b>${list.c_title }</a>
								  </c:if> 
								   <c:if test="${session_admin==1 }">
								 	<a href="${viewURL}"><b>[♨비밀글]</b>${list.c_title }</a>
								  </c:if> 
								</c:if>
								
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
				<c:if test="${session_member_id !=null }">
				<c:if test="${session_admin!=1 }">
					<p class="btn01"><input type="button" value="이야기 쓰기" onclick="location.href='<%=request.getContextPath() %>/consulting/consultingForm.do'"  class="storywrite"></p>
				</c:if>
				</c:if>
					<div class="pageing">
						${html}
					</div>
 </body>
</html>
