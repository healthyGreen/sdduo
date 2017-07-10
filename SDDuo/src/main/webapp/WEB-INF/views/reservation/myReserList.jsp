<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>   
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
   <meta http-equiv="X-UA-Compatible" content="IE=edge" />
   <meta name="description" content="심리상담센터, 종합심리상담전국센터, 영유아발달,청소년상담,부부가족, 개별전문상담" />
   <meta name="naver-site-verification" content="ee8b8b596dbdfa38665d15d5a9ae0935d8e543fd"/>

     <script src="https://code.jquery.com/jquery-1.12.4.js"></script>


   <!--bjqs-->
   <link rel="stylesheet" href="../css/bjqs.css">
   <script type="text/javascript" src="../js/bjqs-1.3.min.js"></script>
   
      <link rel="stylesheet" href="../css/style.css" />
   <link rel="stylesheet" href="../css/default.css" />
   <link rel="stylesheet" href="../css/demo.css">
   <script>
      $(function() {
         $('ul.tab li').click(function() {
            var activeTab = $(this).attr('data-tab');
            $('ul.tab li').removeClass('current');
            $('.tabcontent').removeClass('current');
            $(this).addClass('current');
            $('#' + activeTab).addClass('current');
         })
      });
   </script>
</head>
<body>
<div class="sub-content">
   
      <div class="sub-content-inbox">
      <p class="onlinetit">나의 예약현황(개인)
			</p>
         <ul class="tab">
            <li class="current" data-tab="tab1"><a href="#">개인 예약 현황</a></li>
            <li data-tab="tab2"><a href="#">그룹 예약 현황</a></li>
         </ul>
         <div id="tab1" class="tabcontent current">
<div class="resev-box">
				<p class="listnum">총 <span>${ list.size() }</span>건 ${currentPage }/${totalPage }</p>
			</div>
<div class="onlinetb">
				<table class="list-board01">
					<caption>상담문의 리스트</caption>
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
							<th>번호</th>
							<th>등록일</th>
							<th>신청자</th>
							<th>고객희망일자</th>
							<th>희망센터</th>
							<th>답변상태</th>
						</tr>
						<%int number = 1; %>
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
                                			 서울센터
                           				</c:when>
                           
                          			 	<c:when test="${list.pr_center eq '2'}">
                               				  대구센터
                           				</c:when>
                           				
                           				<c:when test="${list.pr_center eq '3'}">
                                			 부산센터
                           				</c:when>
                           			</c:choose>

								</td>
								<td>
                     
                     				<c:choose>

                           				<c:when test="${list.pr_status eq '0'}">
                                			 예약대기
                           				</c:when>
                           
                          			 <c:when test="${list.pr_status ne '0'}">
                               				  예약완료
                           				</c:when>
                           			</c:choose>

								</td>
							</tr>
							<th><%= number++%></th>
					</c:forEach>
					
					</tbody>
				</table>
			</div>
			
			<c:if test="${fn:length(list) le 0}">
				<br />
				<center>등록된 게시물이 없습니다</center>
				<br />
			</c:if>
         </div>
         <div id="tab2" class="tabcontent">
        
         </div>
     </div>
 </div>
</body>
</html>