<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>탈퇴 경고</title>
<script>
	if(confirm('정말 탈퇴하시겠습까?')){
		window.location.href="/exist.do";
	}
	else{
		alert('탈퇴취소');
		history.back();
	}
</script>
</head>
<body>

</body>
</html>