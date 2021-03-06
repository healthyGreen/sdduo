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

	
		<div class="sub-content-inbox ">
			<div class="sub-top">
				<h2>나의 자가 진단</h2>
			</div>
			<div class="leftbox">
				<div class="tit"><span>MY</span> PAGE</div>
					<dl class="mlist">
						<dt><a href="<%=request.getContextPath() %>/member/myInfoView.do">나의 정보 수정/탈퇴</a></dt>
						<dt><a href="<%=request.getContextPath() %>/Reserve/myOneReserList.do">예약 현황</a></dt>
						<dt><a href="<%=request.getContextPath() %>/consulting/myConsultingList.do">온라인 상담 내역</a></dt>
						<dt><a>나의 자가 진단</a></dt>
						<dt><a href="<%=request.getContextPath() %>/member/myCoupon.do">쿠폰함(${member.m_r_coupon}개)</a></dt>
					</dl>
				</div>
			</div>
			<div class="rightbox">
				<ul class="tabCon tabStyle">
			
					<li><a href="<%=request.getContextPath()%>/self/selfTestList.do?t_category=1">우울증상</a></li>
		
					<li><a href="<%=request.getContextPath()%>/self/selfTestList.do?t_category=2">불안증상</a></li>
					<li><a href="<%=request.getContextPath()%>/self/selfTestList.do?t_category=3">스트레스</a></li>
					<li><a href="<%=request.getContextPath()%>/self/selfTestList.do?t_category=4">분노조절</a></li>
				</ul>
			
				
		
		
				<div id="tab1" class="tabcontent tab_content current myTab" align="center">
					<c:choose>
						<c:when test="${result==null}">
							<p style="font-size: 20px; margin-top: 100px; color: #333;">테스트하신 자기진단 내역이 없습니다.</p>
							
						</c:when>
						<c:otherwise>
							<p style="font-size: 20px; margin-top: 100px; color: #333;"> 고객님의 <b>${category }</b> 유형 자가진단의 점수는</p>
							<p style="font-size: 20px; color: #333;"><span style="font-size: 25px; color: #337ab7;">${result.t_score }</span>점 입니다.</p>
							<p style="font-size: 30px; color: #333; margin-top: 55px; ">등급 <span style="font-size:35px; color: #337ab7;"> ${result.t_grade }</span></p> 
						</c:otherwise>
					</c:choose> 
			
				</div>
			
			</div>
		
			
		
		</div>
</body>
