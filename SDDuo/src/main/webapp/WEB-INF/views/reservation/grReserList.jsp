<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>   
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

<p class="onlinetit">�¶��� �ǽð� ������Ȳ
			</p>
<div class="resev-box">
				<p class="listnum">�� <span>${ list.size() }</span>�� 1/57</p>
			</div>
<div class="onlinetb">
				<table class="list-board01">
					<caption>��㹮�� ����Ʈ</caption>
					<colgroup>
						<col width="88px">
						<col width="200px">
						<col width="142px">
						<col width="150px">
						<col width="210px">
						<col width="137px">
						<col width="126px">
					</colgroup>
					<thead>
						<tr>
							<th>��ȣ</th>
							<th>�����</th>
							<th>��û��</th>
							<th>�����ο�</th>
							<th>�����������</th>
							<th>�������</th>
							<th>�亯����</th>
						</tr>
					</thead>
					
					<tbody>
					
						<c:forEach var="list" items="${list}">
							<tr>
								<td>${list.gr_number}</td>
								<td><fmt:formatDate value="${list.gr_date}" pattern="yyyy.MM.dd"/></td>
								<td>${list.gr_group}</td>
								<td>${list.gr_p_number}</td>
								<td>${list.gr_year}.${list.gr_month}.${list.gr_day}&nbsp;&nbsp;${ list.gr_hour }:${ list.gr_minute }</td>
								<td>${list.gr_center }</td>
								<td>
								<c:choose>

									<c:when test="${list.gr_status eq '0'}">
										���� ���
									</c:when>
									
									<c:when test="${list.gr_status ne '0'}">
										���� �Ϸ�
									</c:when>
									
								</c:choose>
								</td>
							</tr>
					</c:forEach>

					</tbody>
				</table>
			</div>
			
			<c:if test="${fn:length(list) le 0}">
				<br />
				<center>��ϵ� �Խù��� �����ϴ�</center>
				<br />
			</c:if>


</body>
</html>