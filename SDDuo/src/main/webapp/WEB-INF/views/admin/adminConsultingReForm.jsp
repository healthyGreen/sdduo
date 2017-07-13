<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    	<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<body>
<div id="page-wrapper">
				<caption>
					<font color="red">��㹮�� �۾���</font></b>
				</caption>
				<c:choose>
			<c:when test="${state.equals('modify')}">
				<caption>
					<font color="red">��㹮�� �� ����</font></b>
				</caption>
				<spring:hasBindErrors name="consulting" />
				<form:errors path="consulting" /> 
				<form:form commandName="consulting" action="adminConsultingModifyPo.do">
					<table class="write-board01">
						<tbody>
							<tr>
								<th>�̾߱� ����</th>
								<td colspan="3"><%-- <input type="hidden" name="c_ref"
									value="${consultingmodel.c_ref }" />  --%>
									<input type="hidden" name="c_number" value="${consultingModmodel.c_number }"> 
									<input type="text" class="writetxt01" name="c_title" value="${consultingModmodel.c_title }" size="20"> 
									<form:errors path="c_title" /></td>
							</tr>
							<%-- <c:if test="${session_member_id != 1 }">
							<tr>
								<th>��м���</th>
								<td>
									<input type="text" class="writetxt03" name="c_pass">
									��й�ȣ4�ڸ� �Է�
								</td>
							</tr>
						 </c:if>  --%>
							<tr>


								<th>���ǳ���</th>
								<td colspan="3"><textarea class="writetxt04"
										name="c_content">${consultingModmodel.c_content }</textarea> 
										<form:errors path="c_content" /></td>
							</tr>
						</tbody>
					</table>

					<div class="btn-area">
						<input type="submit" value="Ȯ��" class="submit"> <input
							type="button" value="���" class="cancel">
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
								<th>�̾߱� ����</th>
								<td colspan="3">
										<input type="hidden" name="c_ref" value="${consultingmodel.c_ref }" />
										<input type="hidden" name="c_number" value="${consultingmodel.c_number }">
										<input type="text" class="writetxt01" name="c_title" size="20" value="[�亯]${consultingmodel.c_title }">
										<form:errors path="c_title" />
									</td>
							</tr>

							<tr>
								<th>���ǳ���</th>
								<td colspan="3"><textarea class="writetxt04"
										name="c_content" cols="30" rows="10" width="100%"></textarea>
									<form:errors path="c_content" />
								<td>
							</tr>
						</tbody>
					</table>

					<div class="btn-area">
						<input type="submit" value="Ȯ��" class="submit"> 
						<input type="button" value="���" class="cancel">
					</div>
				</form:form>
				</c:otherwise></c:choose>
				</div>
</body>
</html>