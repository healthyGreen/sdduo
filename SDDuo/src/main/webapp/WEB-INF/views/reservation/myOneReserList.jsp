<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>   
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>���� ���� ��Ȳ(����)</title>
</head>
<body>

<p class="centerH2">���� ������Ȳ(����)
			</p>
<div class="resev-box">
				<p class="listnum">�� <span>${ list.size() }</span>�� ${currentPage }/${totalPage }</p>
			</div>
<div class="onlinetb">
				<table class="list-board01">
					<caption>��㹮�� ����Ʈ</caption>
					<colgroup>
						<col width="113px">
						<col width="225px">
						<col width="167px">
						<col width="235px">
						<col width="162px">
						<col width="151px">
					</colgroup>
					<thead>
						<tr>
							<th>��ȣ</th>
							<th>�����</th>
							<th>��û��</th>
							<th>���������</th>
							<th>�������</th>
							<th>�亯����</th>
						</tr>
					</thead>
					
					<tbody>
					
						<c:forEach var="list" items="${list}">
							<tr>
								<td>${list.pr_number}</td>
								<td><fmt:formatDate value="${list.pr_date}" pattern="yyyy.MM.dd"/></td>
								<td>${ list.pr_name }</td> 
                     			<td>${ list.pr_year }.${ list.pr_month }.${ list.pr_day }&nbsp;&nbsp;${ list.pr_hour }:${ list.pr_minute }</td>
                     			<td>
                     
                     				<c:choose>

                           				<c:when test="${list.pr_center eq '1'}">
                                			 ���＾��
                           				</c:when>
                           
                          			 	<c:when test="${list.pr_center eq '2'}">
                               				  �뱸����
                           				</c:when>
                           				
                           				<c:when test="${list.pr_center eq '3'}">
                                			 �λ꼾��
                           				</c:when>
                           			</c:choose>

								</td>
								<td>
                     
                     				<c:choose>

                           				<c:when test="${list.pr_status eq '0'}">
                                			 ������
                           				</c:when>
                           
                          			 <c:when test="${list.pr_status ne '0'}">
                               				  ����Ϸ�
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