<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script>
window.onload = function()
{
	var chk = ${memberFindChk}

	if(chk == -1)
	{
		alert('입력하신 정보가 일치하지 않습니다.');
		history.back();
	}
	if(chk == 0)
	{
		alert('입력하신 정보가 일치하지 않습니다.');
		history.back();
	}
}
</script>
</head>
<body>

</body>
</html>