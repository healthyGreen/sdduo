<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- <head>
	<title>���̽��丮</title>
	<meta http-equiv="Content-Type" content="text/html;charset=euc-kr" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge" />
	<meta name="description" content="�ɸ���㼾��, ���սɸ������������, �����ƹߴ�,û�ҳ���,�κΰ���, �����������" />
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

			<h3>�¶��� ���</h3>
			<p class="sub02_txt" style="margin-bottom: 50px; ">
				���̽��丮�� �����ֽ� ������ �̾߱�� ������ ��ȣ <span class="bold">������ ���� ö���� ��� ���� �Ǹ� ����� ���� �ʽ��ϴ�.</span><br />
				<span>�亯�� ���� ���뿡 ���� �з��Ǿ� �ش� �о� ���������Կ� ���� ������ �̷�����ϴ�. <br />
				�亯 ������ �� ���ͺ� ������ �����Ե��� ���ǿ� ���� �޶��� �� ������ ������ �ֽñ� �ٶ��ϴ�.</span><br />
			</p>
 

<script type="text/javascript">
 function checkLockPwd(form){
	if(form.c_pass.value.trim().length != 4){
		alert("��й�ȣ�� ��Ȯ�� �Է����ּ���.");
		form.c_pass.focus();
		return;
	}
	form.c_pass.value = form.c_pass.value.trim()
	form.action = "consultingPassPro.do";
	form.submit();
} 
/* function checkLockPwd(){
	if(document.LockPwd.c_pass.value.trim().length != 4){
		alert("��й�ȣ�� ��Ȯ�� �Է����ּ���.");
		form.c_pass.focus();
		return false;
	}else return;} */

</script>
<%-- <form name="LockPwd" method="post" action="consultingPassPro.do" onsubmit="return checkLockPwd()"> --%>
<form name="LockPwd" method="post">
			<table class="write-board01">
				<caption>��й�ȣ Ȯ��</caption>
				<tbody>
					<tr>
						<th >��й�ȣ Ȯ�� (4�ڸ�)</th>
						<td >
							<input type="hidden" value="${c_number}" name="c_number">
							<%--  <input type="hidden" value="${c_ref}" name="c_ref"> --%>
							<input type="password" name="c_pass" id="lock_pwd"  maxlength="4" style="IME-MODE: disabled;" class="writetxt03">
						</td>
					</tr>
				</tbody>
			</table>
				<!-- <input type="submit" value="Ȯ��"> -->
			<div class="btn-area">
		<!-- <input type="button" value="Ȯ��" class="submit" onclick="checkLockPwd(document.LockPwd);"> -->
				<!-- <input type="button" value="Ȯ��" class="submit" onclick="checkLockPwd(document.LockPwd);"> -->
				 <input type="button" value="Ȯ��" class="submit" onclick="checkLockPwd(document.LockPwd);">
				<input type="button" value="���" class="cancel" onclick="javascript:history.back(-1);">
			</div>
</form>
			
</html>
