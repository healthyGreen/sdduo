<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script type="text/javascript">
  function setId() {
    opener.document.join.m_id.value = "${m_id}";
   
    self.close();
 }  
 function idCheck() {
	      var m_id = document.idCk.m_id.value;
	         //var url = "idCheck.do?m_id="+m_id;
	      if(m_id == ""){
	         alert("체크할 아이디를 입력해 주세요");
	         document.idCk.m_id.focus();
	         return false;        
	      }else{
	    	 // alert(m_id);
	    	 form.action = "idCheck.do?m_id="+m_id;
				form.submit();
	        // open(url, "IdConfirm", "toolbar=no,location=no,status=no,menubar=no,scrollbars=no,resizable=no,width=400,height=600");
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
			<!-- <input type="button" value="확인" onclick="window.close();"> -->
	</c:if>
	<c:if test="${member == null }">
		입력하신 <font color="blue">${m_id}</font> 아이디는 사용하실 수 있는 아이디 입니다.<br>
		<input type="button" value="확인" onclick="javascript:setId();">
	</c:if>
		</div>
</html>  

<%-- <html>
<head>
<title>아이디 중복 확인</title>
<script language="javascript">
   function setid() {
      opener.document.join.M_id.value = "${m_id}";
      /* opener.document.join.IdConfirm.value="true"; */
      self.close();
   }
   function check() {
	      if(document.idChk.M_id.value == ""){
	         alert("아이디를 입력해 주세요");
	         document.idChk.M_id.focus();
	         return false;
	         
	      }else{
	         var m_id = document.idChk.M_id.value;
	         var url = "/member/joinSuccess.do?M_id";
	         open(url, "IdConfirm", "toolbar=no,location=no,status=no,menubar=no,"+
	               "scrollbars=no,resizable=no,width=400,height=200");

	      }
	   }
</script>
</head>
<body>

   <s:if test="chkId eq 1">

      <form name=idChk onsubmit="return check();">

         <table align="center" width="265" border="0" cellspacing="0"
            cellpadding="0">

            <tr height="25">
               <td bgcolor="red" align="left" colspan="1" width="10"></td>
               <td align="left" colspan="3"><font color="red"><strong>&nbsp;&nbsp;ID중복</strong></font></td>
            </tr>

         </table>

         <br>

         <table align="center" width="265" border="0" cellspacing="0"
            cellpadding="0">

            <tr bgcolor="red">
               <td height="1"></td>
            </tr>

            <tr height="10">
               <td></td>
            </tr>

            <tr>
               <td><font color="red">"${m_id }" 는 이미 사용중인 아이디입니다. 다른
                     아이디를 선택해 주세요</font></td>
            </tr>

            <tr height="10">
               <td></td>
            </tr>

            <tr bgcolor="red">
               <td height="1"></td>
            </tr>

         </table>

         <br> <br>

         <table align="center" width="265" border="0" cellspacing="0"
            cellpadding="0">

            <tr height="25">
               <td bgcolor="1E90FF" align="left" colspan="1" width="10"></td>
               <td align="left" colspan="3"><font color="black"><strong>&nbsp;&nbsp;ID 중복 확인</strong></font></td>
            </tr>

         </table>

         <br>

         <table align="center" width="265" border="0" cellspacing="0"
            cellpadding="0">

            <tr bgcolor="1E90FF">
               <td height="1"></td>
            </tr>

            <tr height="10">
               <td></td>
            </tr>

            <tr align="center">
               <td><input type=text maxlength=20 name="M_id" /> <input type=submit value="ID 중복확인" class="topb" /></td>
            <tr>
            <tr height="10">
               <td></td>
            </tr>

            <tr bgcolor="1E90FF">
               <td height="1"></td>
            </tr>

            <tr height="20">
               <td></td>
            </tr>

            <tr>
               <td align="center"><input type="button" class="login1" value="닫기" onclick="javascript:window.close();" /></td>
            </tr>

         </table>

      </form>

   </s:if>

   <s:else>

      <table align="center" width="265" border="0" cellspacing="0"
         cellpadding="0">

         <tr height="25">
            <td bgcolor="1E90FF" align="left" colspan="1" width="10"></td>
            <td align="left" colspan="3"><font color="black"><strong>&nbsp;&nbsp;사용가능</strong></font></td>
         </tr>

      </table>

      <br>

      <table align="center" width="265" border="0" cellspacing="0"
         cellpadding="0">

         <tr bgcolor="1E90FF">
            <td height="1"></td>
         </tr>

         <tr height="10">
            <td></td>
         </tr>

         <tr>
            <td>입력하신 "${m_id }" 는 사용할 수 있는 아이디입니다.</td>
         </tr>

         <tr height="10">
            <td></td>
         </tr>

         <tr bgcolor="1E90FF">
            <td height="1"></td>
         </tr>

         <tr height="20">
            <td></td>
         </tr>

         <tr>
            <td align="center"><input type="button" class="login1"
               value="닫기" onclick="setid()" /></td>
         </tr>
      </table>
   </s:else>
</body>
</html> --%>