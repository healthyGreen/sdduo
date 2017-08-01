<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<body>
<div id="page-wrapper">
            <div class="row">
             <div class="col-lg-12">
             <h3 class="">온라인 상담 답변 확인 글들</h3>	
             </div>
			
				 <p class="listnum">총 <span>${totalCount }</span>건&nbsp; ${currentPage }/${totalPage }</p>
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
							<tr><td>
								답변이 확인된 글이 없습니다.
								</td></tr>
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
						
							<c:url var="viewURL" value="adminConsultingView.do">
								<c:param name="c_number" value="${list.c_number }"/>
							 	<c:param name="c_ref" value="${list.c_ref }"/>
							</c:url>
							<tr>
								<th><%= number++%></th>
								<td class="subject">
								
								 	<c:if test="${list.c_ref == list.c_number }">
				                           <a href="${viewURL}">${list.c_title }</a>
			                        </c:if>
			                        <c:if test="${list.c_ref != list.c_number }">
			                           <b><font color="OrangeRed">&nbsp;&nbsp;[답변]&nbsp;</font></b><a href="${viewURL}">${list.c_title }</a>
			                        </c:if>
								
								
								</td>
								<th>${list.m_id }</th>
								<th><fmt:formatDate value="${list.c_date }" pattern="yyyy.MM.dd"/></th> 
								<th><p class="finish">
									<c:if test="${list.c_re_status==2 }">
			                        <font color="DarkBlue">답변 확인</font>
			                        </c:if>
			                        <c:if test="${list.c_re_status==3 }">
			                        <font color="red">답변글</font>
			                        </p></c:if>
								</th>
							</tr>
							</c:forEach>
							</c:otherwise>
							</c:choose>
						</tbody>
					</table>
							<div class="pageing" align="center">
						${html}
					</div>
					
			
					
					</div></div>
					
    <!-- jQuery -->
    <script src="../resources/vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../resources/vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="../resources/vendor/metisMenu/metisMenu.min.js"></script>

    <!-- Morris Charts JavaScript -->
    <script src="../resources/vendor/raphael/raphael.min.js"></script>
    <script src="../resources/vendor/morrisjs/morris.min.js"></script>
    <script src="../resources/data/morris-data.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="../resources/dist/js/sb-admin-2.js"></script>
    
</body>
</html>