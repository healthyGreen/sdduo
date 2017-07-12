<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<script type="text/javascript">
	function deletOk() {
		if(confirm("삭제하시겠습니까?")){
			window.location.href='consultingDeletePro.do?c_number=${consultingmodel.c_number}&c_ref=${consultingmodel.c_ref}';
		}else{
			alert("취소되었습니다.");
		}
	}
</script>
			
				<div class="sub-content-inbox">
					
					<h3>온라인 상담</h3>
					<p class="sub02_txt">
						마이스토리에 남겨주신 소중한 이야기는 내담자 보호 규정에 따라 철저히 비밀 보장 되며 병원과 달리 절대 기록이 남지 않습니다.<br />
						<span>답변은 질문 내용에 따라 분류되어 해당 분야 전문선생님에 의해 성실이 이루어집니다. <br />
						답변 순서는 각 센터별 전문가 선생님들의 여건에 따라 달라질 수 있음을 양해해 주시기 바랍니다.</span><br />
					</p>
					<div class="resev-box">
					<!-- 	<p class="listnum">총 <span>88</span>건 1/9</p> -->
						<p class="reserv-btn">실시간예약 바로가기</p>
					</div>
					<table width="100%" class="view-board01">
						<colgroup>
							<col width="" />
						</colgroup>
						<thead>
						<tr>
							<th scope="col">
								<div class="tit">${consultingmodel.c_title }</div>
							</th>
							<th></th>
						</tr>
						</thead>
						<tbody>
						<tr>
							<td>
								<div class="board-infor">
									<strong>작성자</strong>
									<span>${ consultingmodel.m_id}</span>
									<span class="line"><img src="/SDDuo/resources/images/sub/line.jpg" class="vertical-m"  alt="" /></span>
									<strong>작성일</strong>
									<span><fmt:formatDate value="${consultingmodel.c_date}" pattern="yyyy.MM.dd"/></span>
							
								</div>
							</td>
						</tr>
						<tr><th>상담 내용</th></tr>
						<tr>
							<td class="dmc_content content">
								
${consultingmodel.c_content }
							</td>
						</tr>
						
					</tbody>
				</table>
					<div class="viewbtn">
				<%-- 	<c:if test="${session_admin!=1}"> --%>
					<c:url var="replyURL" value="consultingReply.do">
								<c:param name="c_ref" value="${consultingmodel.c_ref }"/>
								<c:param name="c_number" value="${consultingmodel.c_number }"/>
							</c:url>
					<c:if test="${!consultingmodel.m_id.equals('admin') }"> 
							<a href="${replyURL}" class="storywrite1">답변달기</a> 
					</c:if> 
 			<%-- 	</c:if> --%>
						<p ><input type="button" value="목록" onclick="location.href='<%=request.getContextPath() %>/consulting/consultingList.do'" class="btn01 list"></p>
						<%-- <c:if test="${isReply.equals('reply') }"> --%>
						<div class="area">
							<p class="btn01"><input type="button" value="수정" onclick="location.href='<%=request.getContextPath() %>/consulting/consultingModify.do?c_number=${consultingmodel.c_number }'"></p>
						<%-- 	<p class="btn02"><input type="button" value="삭제" onclick="location.href='<%=request.getContextPath() %>/consulting/consultingDeletePro.do?c_number=${consultingmodel.c_number }'"></p> --%>
							<p class="btn02"><input type="button" value="삭제" onclick="javascript:deletOk();"></p>
						</div>
						<%-- </c:if> --%>
					</div>
				</div>
			


