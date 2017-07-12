<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    	<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<body>
<div class="sub-content">
<caption>
					<font color="red">상담문의 글쓰기</font></b>
				</caption>
			<spring:hasBindErrors name="consulting" />
			<form:errors path="consulting" /> 
				<form:form commandName="consulting" action="/consulting/consultingPro.do">
					<table class="write-board01">
						<tbody>
							<tr>
								<th>이야기 제목</th>
								<td colspan="3"><input type="hidden" name="c_ref"
									value="${consultingmodel.c_ref }" /> 
									<input type="hidden" name="c_number" value="${consultingmodel.c_number }"> 
								<%-- 	<c:if test="${state.equals('reply')}"> --%>
										<input type="text" class="writetxt01" name="c_title" size="20"
											value="[답변]${consultingmodel.c_title }">
											<input type="hidden" value="Admin" name="who">
										<form:errors path="c_title" />
									<%-- </c:if>  --%>
									<%-- <c:if test="${state.equals('noting')}"> --%>
										<input type="text" class="writetxt01" name="c_title" size="20">
										<form:errors path="c_title" />
										<tr>
											<th>비밀설정</th>
											<td><input type="password" class="writetxt03"
												name="c_pass"> (비밀번호4자리 입력) 
												<form:errors path="c_pass" /></td>
										</tr>
									<%-- </c:if> --%>
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
						<input type="submit" value="확인" class="submit"> <input
							type="button" value="취소" class="cancel">
					</div>
				</form:form>
				</div>
</body>
</html>