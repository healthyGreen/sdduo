<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    	<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<body>
<div id="page-wrapper">
				<caption>
					<font color="red">상담문의 글쓰기</font></b>
				</caption>
				<c:choose>
			<c:when test="${state.equals('modify')}">
				<caption>
					<font color="red">상담문의 글 수정</font></b>
				</caption>
				<spring:hasBindErrors name="consulting" />
				<form:errors path="consulting" /> 
				<form:form commandName="consulting" action="adminConsultingModifyPo.do">
					<table class="write-board01">
						<tbody>
							<tr>
								<th>이야기 제목</th>
								<td colspan="3"><%-- <input type="hidden" name="c_ref"
									value="${consultingmodel.c_ref }" />  --%>
									<input type="hidden" name="c_number" value="${consultingModmodel.c_number }"> 
									<input type="text" class="writetxt01" name="c_title" value="${consultingModmodel.c_title }" size="20"> 
									<form:errors path="c_title" /></td>
							</tr>
							<%-- <c:if test="${session_member_id != 1 }">
							<tr>
								<th>비밀설정</th>
								<td>
									<input type="text" class="writetxt03" name="c_pass">
									비밀번호4자리 입력
								</td>
							</tr>
						 </c:if>  --%>
							<tr>


								<th>문의내용</th>
								<td colspan="3"><textarea class="writetxt04"
										name="c_content">${consultingModmodel.c_content }</textarea> 
										<form:errors path="c_content" /></td>
							</tr>
						</tbody>
					</table>

					<div class="btn-area">
						<input type="submit" value="확인" class="submit"> <input
							type="button" value="취소" class="cancel">
					</div>
				</form:form>
			</c:when>
			<c:otherwise>
			<spring:hasBindErrors name="consulting" />
			<form:errors path="consulting" /> 
				<form:form commandName="consulting" action="adminConsultingRePro.do">
					<table class="write-board01">
						<tbody>
							<tr>
								<th>이야기 제목</th>
								<td colspan="3">
										<input type="hidden" name="c_ref" value="${consultingmodel.c_ref }" />
										<input type="hidden" name="c_number" value="${consultingmodel.c_number }">
										<input type="text" class="writetxt01" name="c_title" size="20" value="[답변]${consultingmodel.c_title }">
										<form:errors path="c_title" />
									</td>
							</tr>

							<tr>
								<th>문의내용</th>
								<td colspan="3"><textarea class="writetxt04"
										name="c_content" cols="30" rows="10" width="100%"></textarea>
									<form:errors path="c_content" />
								<td>
							</tr>
						</tbody>
					</table>

					<div class="btn-area">
						<input type="submit" value="확인" class="submit"> 
						<input type="button" value="취소" class="cancel">
					</div>
				</form:form>
				</c:otherwise></c:choose>
				</div>
</body>
</html>