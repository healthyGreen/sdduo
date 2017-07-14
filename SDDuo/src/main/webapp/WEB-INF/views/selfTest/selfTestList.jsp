<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

	  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>


	<!--bjqs-->
	<link rel="stylesheet" href="../resources/css/bjqs.css">
	<script type="text/javascript" src="../resources/js/bjqs-1.3.min.js"></script>
	
		<link rel="stylesheet" href="../resources/css/style.css" />
	<link rel="stylesheet" href="../resources/css/default.css" />
	<link rel="stylesheet" href="../resources/css/demo.css">
<!-- 	<script>
		$(function() {
			$('ul.tabCon li').click(function() {
				var activeTab = $(this).attr('data-tab');
				$('ul.tabCon li').removeClass('current');
				$('.tabcontent').removeClass('current');
				$(this).addClass('current');
				$('#' + activeTab).addClass('current');
			})
		});
		
		
		$(document).ready(function() {
		    document.getElementById('a2').onclick = function() {
		        document.getElementById("form2").submit();
		        return;
		    }
	     
	});
		
		$(document).ready(function() {
		    document.getElementById('a3').onclick = function() {
		        document.getElementById("form3").submit();
		        return;
		    }
	     
	});
		
		$(document).ready(function() {
		    document.getElementById('a4').onclick = function() {
		        document.getElementById("form4").submit();
		        return;
		    }
	     
	});
						

	</script>
	 -->
	

<body>
	<div class="sub-content">
	
		<div class="sub-content-inbox ">
			<ul class="tabCon tabStyle">
			
		<li><a href="<%=request.getContextPath()%>/self/selfTestList.do?t_category=1">우울증상</a></li>
	
				<li><a href="<%=request.getContextPath()%>/self/selfTestList.do?t_category=2">불안증상</a></li>
				<li><a href="<%=request.getContextPath()%>/self/selfTestList.do?t_category=3">스트레스</a></li>
				<li><a href="<%=request.getContextPath()%>/self/selfTestList.do?t_category=4">분노조절</a></li>
			</ul>
			
				
		
		
			<div id="tab1" class="tabcontent tab_content current" align="center">
			 <c:choose>
			<c:when test="${result==null}">
				테스트하신 자기진단 내역이 없습니다.<br>
				
			</c:when>
			<c:otherwise>
				 고객님의<b> ${category }</b> 유형 자가진단의 점수는<br>
				<h4>${result.t_score }점 입니다.</h4>
				등급 : ${result.t_grade } 
			</c:otherwise>
			</c:choose> 
		
			</div>
			
		
			
			<%-- <div id="tab2" class="tabcontent tab_content current">
			
			<form:form action="selfTestList1.do" id="form2" enctype="multipart/form-data" method="post">
			<input type="hidden" name="category" value="2" />
			
			<c:forEach var="selfList" items="${selfList}">
			<td>${selfList.t_score }</td>
			</c:forEach>
			</form:form>
			
			</div>
			
			<div id="tab3" class="tabcontent tab_content current">
			
			<form:form action="selfTestList1.do" id="form3" enctype="multipart/form-data" method="post">
			<input type="hidden" name="category" value="3" />
			
			<c:forEach var="selfList" items="${selfList}">
			<td>${selfList.t_score }</td>
			</c:forEach>
			</form:form>
			
			</div>
			
			<div id="tab4" class="tabcontent tab_content current">
			
			<form:form action="selfTestList1.do" id="form4" enctype="multipart/form-data" method="post">
			<input type="hidden" name="category" value="4" />
			
			<c:forEach var="selfList" items="${selfList}">
			<td>${selfList.t_score }</td>
			</c:forEach>
			</form:form> --%>
			
			</div>
		</div>
</body>
