<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<body>
<div id="page-wrapper">
            <div class="row">
             <div class="col-lg-12">
             <h3 class="">�¶��� ��� ��ü�� ���</h3>	
             </div>
			
				<p class="listnum">�� <span>${totalCount }</span>��</p>
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
								��ϵ� �Խù��� �����ϴ�.
							</c:when>
							<c:otherwise>
							<tr>
								<th>��ȣ</th>
								<th>����</th>
								<th>�ۼ���</th>
								<th>�ۼ���</th> 
								<th>�亯����</th>
								
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
								
								 	<a href="${viewURL}"><img src="/SDDuo/resources/images/sub/lock.gif" alt="�ڹ���" class="lock">${list.c_title }</a>
								
								
								</td>
								<th>${list.m_id }</th>
								<th><fmt:formatDate value="${list.c_date }" pattern="yyyy.MM.dd"/></th> 
								<th><p class="finish">
								<c:if test="${list.c_re_status==1}">
								<font color="DarkSlateGray">�亯 �����</font>
								</c:if>
								<c:if test="${list.c_re_status==2 }">
								<font color="DarkBlue">Ȯ��</font>
								</c:if>
								<c:if test="${list.c_re_status==3 }">
								<font color="red">�亯��</font>
								</c:if> 
								</p></th>
							</tr>
							</c:forEach>
							</c:otherwise>
							</c:choose>
						</tbody>
					</table>
					
				<!-- ��� ���� ��� button���� �ϰ������ ��ư�����ϸ� jstl�� �ȸӰſ� �Ф� -->
				<%-- 	<input type="button" onclick="${replyURL}" value="������ �亯�ޱ�" class="storywrite"> --%> 
				<c:if test="${session_admin!=1 }">
					<p class="btn01"><input type="button" value="�̾߱� ����" onclick="location.href='<%=request.getContextPath() %>/consulting/consultingForm.do'"  class="storywrite"></p>
				</c:if>
					<div class="pageing" align="center">
						${html}
					</div>
					</div></div>
</body>
</html>