<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- <head>
	<title>마이스토리</title>
	<meta http-equiv="Content-Type" content="text/html;charset=euc-kr" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="description" content="심리상담센터, 종합심리상담전국센터, 영유아발달,청소년상담,부부가족, 개별전문상담" />
	<meta name="naver-site-verification" content="ee8b8b596dbdfa38665d15d5a9ae0935d8e543fd"/>
	<link rel="stylesheet" href="/css/style.css?v=170621_2" />
	<link rel="stylesheet" href="/css/default.css" />
	<link rel="stylesheet" href="/css/demo.css">
	
	JQUERY
	<script type="text/javascript" src="/js/jquery-1.11.3.min.js"></script>
	<script type="text/javascript" src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.2/jquery-ui.js"></script>
	<script type="text/javascript" src="/js/jquery.carouFredSel-6.2.1-packed.js"></script>
	<script type="text/javascript" src="/js/jquery.flexslider.js"></script>
	<script type="text/javascript" src="/js/jquery.rolling.js"></script>
	<script type="text/javascript" src="/js/common.js"></script>
	<script type="text/javascript" src="/js/gallery.js"></script>
	<script type="text/javascript" src="/js/menu.js"></script>
	
	bjqs
	<link rel="stylesheet" href="/css/bjqs.css">
	<script type="text/javascript" src="/js/bjqs-1.3.min.js"></script>

</head> -->

<!-- <body> -->

			<h3>온라인 상담</h3>
			<p class="sub02_txt" style="margin-bottom: 50px; ">
				마이스토리에 남겨주신 소중한 이야기는 내담자 보호 <span class="bold">규정에 따라 철저히 비밀 보장 되며 기록이 남지 않습니다.</span><br />
				<span>답변은 질문 내용에 따라 분류되어 해당 분야 전문선생님에 의해 성실히 이루어집니다. <br />
				답변 순서는 각 센터별 전문가 선생님들의 여건에 따라 달라질 수 있음을 양해해 주시기 바랍니다.</span><br />
			</p>
 

<script type="text/javascript">
 function checkLockPwd(form){
	if(form.c_pass.value.trim().length != 4){
		alert("비밀번호를 정확히 입력해주세요.");
		form.c_pass.focus();
		return;
	}
	form.c_pass.value = form.c_pass.value.trim()
	form.action = "consultingPassPro.do";
	form.submit();
} 
/* function checkLockPwd(){
	if(document.LockPwd.c_pass.value.trim().length != 4){
		alert("비밀번호를 정확히 입력해주세요.");
		form.c_pass.focus();
		return false;
	}else return;} */

</script>
<%-- <form name="LockPwd" method="post" action="consultingPassPro.do" onsubmit="return checkLockPwd()"> --%>
<form name="LockPwd" method="post">
			<table class="write-board01">
				<caption>비밀번호 확인</caption>
				<tbody>
					<tr>
						<th >비밀번호 확인 (4자리)</th>
						<td >
							<input type="hidden" value="${c_number}" name="c_number">
							<%--  <input type="hidden" value="${c_ref}" name="c_ref"> --%>
							<input type="password" name="c_pass" id="lock_pwd"  maxlength="4" style="IME-MODE: disabled;" class="writetxt03">
						</td>
					</tr>
				</tbody>
			</table>
				<!-- <input type="submit" value="확인"> -->
			<div class="btn-area">
		<!-- <input type="button" value="확인" class="submit" onclick="checkLockPwd(document.LockPwd);"> -->
				<!-- <input type="button" value="확인" class="submit" onclick="checkLockPwd(document.LockPwd);"> -->
				 <input type="button" value="확인" class="submit" onclick="checkLockPwd(document.LockPwd);">
				<input type="button" value="취소" class="cancel" onclick="javascript:history.back(-1);">
			</div>
</form>
			
</html>
