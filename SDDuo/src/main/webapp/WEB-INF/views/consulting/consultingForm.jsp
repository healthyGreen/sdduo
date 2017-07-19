<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="EUC-KR"%>
	<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="sub-content">

		<h3>�¶��� ���</h3>
		<p class="sub02_txt">
			���̽��丮�� �����ֽ� ������ �̾߱�� ������ ��ȣ ������ ���� ö���� ��� ���� �Ǹ� ������ �޸� ���� ����� ����
			�ʽ��ϴ�.<br /> <span>�亯�� ���� ���뿡 ���� �з��Ǿ� �ش� �о� ���������Կ� ���� ������
				�̷�����ϴ�. <br /> �亯 ������ �� ���ͺ� ������ �����Ե��� ���ǿ� ���� �޶��� �� ������ ������ �ֽñ�
				�ٶ��ϴ�.
			</span><br />
		</p>
			<c:if test="${session_member_id !=null }">
						<p class="reserv-btn" onclick="location.href='<%=request.getContextPath()%>/Reserve/OneReserveForm.do'">
						<%-- <input type="button" onclick="location.href='<%=request.getContextPath()%>/Reserve/OneReserveForm.do'"> --%>�ǽð����� �ٷΰ���</p>
						</c:if>

		<c:choose>
			<c:when test="${state.equals('modify')}">
				<caption>
					<font color="red">��㹮�� �� ����</font></b>
				</caption>
				<spring:hasBindErrors name="consulting" />
				<form:errors path="consulting" /> 
				<form:form commandName="consulting" action="consultingModifyPro.do">
					<table class="write-board01">
						<tbody>
							<tr>
								<th>�̾߱� ����</th>
								<td colspan="3"><%-- <input type="hidden" name="c_ref"
									value="${consultingmodel.c_ref }" / --%>
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
				<caption>
					<font color="red">��㹮�� �۾���</font></b>
				</caption>
			<spring:hasBindErrors name="consulting" />
			<form:errors path="consulting" /> 
				<form:form commandName="consulting" action="consultingPro.do">
					<table class="write-board01">
						<tbody>
							<tr>
								<th>�̾߱� ����</th>
								<td colspan="3">
								 <input type="hidden" name="c_ref" value="${consultingmodel.c_ref }"> 
								 <input type="hidden" name="c_number" value="${consultingmodel.c_number }"> 
									<c:if test="${state.equals('reply')}">
										<input type="text" class="writetxt01" name="c_title" size="20"
											value="[�亯]${consultingmodel.c_title }">
										<form:errors path="c_title" />
									</c:if> 
									<c:if test="${state.equals('noting')}">
										<input type="text" class="writetxt01" name="c_title" size="20">
										<form:errors path="c_title" />
										<tr>
											<th>��м���</th>
											<td><input type="password" class="writetxt03"
												name="c_pass"> (��й�ȣ4�ڸ� �Է�) 
												<form:errors path="c_pass" /></td>
										</tr>
									</c:if>	
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
						<input type="submit" value="Ȯ��" class="submit"> <input
							type="button" value="���" class="cancel" onclick="javascript:history.back();">
					</div>
				</form:form>
			</c:otherwise>
		</c:choose>
	</div>

</body>
</html>