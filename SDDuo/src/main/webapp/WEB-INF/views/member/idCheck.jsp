<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script type="text/javascript">
  function setId(m_id) {
    opener.document.join.m_id.value = "${m_id}";
      
    opener.ic(m_id);
    opener.document.getElementById("ic").value="Y";
    opener.document.getElementById("ec").value="Y"; 

    self.close();
 }  
 function idCheck() {
         var m_id = document.idCk.m_id.value;
        
         if(m_id == ""){
            alert("체크할 아이디를 입력해 주세요");
            document.idCk.m_id.focus();
            return false;        
         }else{
          
           form.action = "idCheck.do?m_id="+m_id;
            form.submit();
           
         }
      }
 
 
</script>
<html>
<div align="center">
	<c:if test="${member !=null}">
			<font color="red">${member.m_id}</font>는 이미 사용중인 아이디 입니다.<br>
			다른 아이디를 이용해 주시기 바랍니다.	
			 <br>
			<form onsubmit="return idCheck();" name="idCk">
			<input type="text" name="m_id">&nbsp;<input type="submit" value="중복 확인">
			</form>
			
	</c:if>
	<c:if test="${member == null }">
		입력하신 <font color="blue">${m_id}</font> 아이디는 사용하실 수 있는 아이디 입니다.<br>
		<input type="button" value="확인" onclick="javascript:setId();">
	</c:if>
		</div>
</html>  
