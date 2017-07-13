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
	<script>
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
	
	

<body>
						
	

	<div class="sub-content">
	
		<div class="sub-content-inbox ">
			<ul class="tabCon tabStyle">
			
				<li class="current" data-tab="tab1"><a href="#">우울증상</a>
				</li>
				<li data-tab="tab2" id="a2"><a href="#">불안증상</a></li>
				<li data-tab="tab3" id="a3"><a href="#">스트레스</a></li>
				<li data-tab="tab4" id="a4"><a href="#">분노조절</a></li>
			</ul>
			
				
		
		
			<div id="tab1" class="tabcontent tab_content current">
			
			
			<c:forEach var="selfList" items="${selfList}">
			<td>${selfList.t_score }</td>
			</c:forEach>
				
			</div>
		
			
			<div id="tab2" class="tabcontent tab_content current">
			
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
			</form:form>
			
			</div>
			
			
			
			
			
			

		</div>
	</div>
</body>
