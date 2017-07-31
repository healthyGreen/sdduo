<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script type="text/javascript">
  function setEmail(m_email) {
    opener.document.join.m_email.value = "${m_email}";
   opener.ec(m_email);
    self.close();
 }  
 function emailCheck() {
	      var m_email = document.emailCheck.m_email.value;
	     
	      if(m_email == ""){
	         alert("체크할 아이디를 입력해 주세요");
	         document.emailCheck.m_email.focus();
	         return false;        
	      }else{
	    	
	    	 form.action = "emailCheck.do?m_email="+m_email;
				form.submit();
	        
	      }
	   }
 
 
</script>
<html>
<div align="center">
	<c:if test="${member !=null}">
			<font color="red">${member.m_id}</font>는 이미 사용중인 이메일 주소 입니다.<br>
			다른 이메일 주소를 이용해 주시기 바랍니다.	
			 <br>
			<form onsubmit="return emailCheck();" name="emailCheck">
			<input type="text" name="m_email">&nbsp;<input type="submit" value="중복 확인">
			</form>
			
	</c:if>
	<c:if test="${member == null }">
		입력하신 <font color="blue">${m_email}</font> 이메일 주소는 사용하실 수 있는 주소 입니다.<br>
		<input type="button" value="확인" onclick="javascript:setEmail();">
	</c:if>
		</div>
</html>  
