<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>

   <script>


  function checkForm(){
	 
		if(reserve.pr_year.value.trim() == ""){
			alert("예약년도를 선택해주세요.");
			return;
		}
		if(reserve.pr_month.value.trim() == ""){
			alert("예약월을 선택해주세요.");
			return;
		}
		if(reserve.pr_day.value.trim() == ""){
			alert("예약일을 선택해주세요.");
			return;
		}
		if(reserve.pr_name.value.trim() == ""){
			alert("이름을 입력해주세요.");
			reserve.pr_name.focus();
			return;
		}
		if(reserve.pr_phone2.value.trim() == ""){
			alert("연락처를 입력해주세요.");
			reserve.pr_phone2.focus();
			return;
		}
		if(reserve.pr_phone2.value.trim().length != 3 && reserve.pr_phone2.value.trim().length != 4 ){
			alert("연락처를 입력해주세요.");
			reserve.pr_phone2.focus();
			return;
		}
		if(reserve.pr_phone3.value.trim() == ""){
			alert("연락처를 입력해주세요.");
			reserve.pr_phone3.focus();
			return;
		}
		if(reserve.pr_phone3.value.trim().length != 4){
			alert("연락처를 입력해주세요.");
			reserve.pr_phone3.focus();
			return;
		}
		var phone = reserve.pr_phone1.value.trim() + reserve.pr_phone2.value.trim() + reserve.pr_phone3.value.trim();
		if(phone.length < 10){
			alert("연락처를 정확히 입력해주세요.");
			return;
		}
		if(reserve.pr_center.value.trim() == ""){
			alert("센터를 선택해주세요.");
			reserve.pr_center.focus();
			return;
		}
		if(reserve.pr_reason.value.trim() == ""){
			alert("상담신청사유를 입력해주세요.");
			reserve.pr_reason.focus();
			return;
		}
	  
     	if(!document.reserve.agree.checked){
        	alert("개인정보 취급방침에 동의하셔야 됩니다.");
     	}else{   
    	 	reserve.submit();
     }
     }

  </script>
  
  <script type="text/javascript">
  function fn_press(event, type) {
      if(type == "numbers") {
          if(event.keyCode < 48 || event.keyCode > 57) return false;
          //onKeyDown일 경우 좌, 우, tab, backspace, delete키 허용 정의 필요
      }
  }
  /* 한글입력 방지 */
  function fn_press_han(obj)
  {
      //좌우 방향키, 백스페이스, 딜리트, 탭키에 대한 예외
      if(event.keyCode == 8 || event.keyCode == 9 || event.keyCode == 37 || event.keyCode == 39
      || event.keyCode == 46 ) return;
      obj.value = obj.value.replace(/[\a-zㄱ-ㅎㅏ-ㅣ가-힣]/g, '');
      obj.value = obj.value.replace(/[\ㄱ-ㅎㅏ-ㅣ가-힣]/g, '');
  }
  </script>
  
<script type="text/javascript">
$(document).ready(function () {
    // 초기 값 지정
    $('#year').text($("#pr_year option:selected").val());
    $('#month').text($("#pr_month option:selected").val());
    $('#day').text($("#pr_day option:selected").val());
   
    // select 선택이 변경 됐을 때 호출 되는 함수
    $('#pr_year').change(function() {
    $('#year').text($("#pr_year option:selected").val());
  });
    $('#pr_month').change(function() {
	    $('#month').text($("#pr_month option:selected").val());
	  });
    $('#pr_day').change(function() {
	    $('#day').text($("#pr_day option:selected").val());
	  });
});
</script>
</head>
<body>
<div class="sub-content">
           
            <div class="sub-content-inbox">
              
               <h3>온라인 실시간예약</h3>
               <p class="sub02_txt">
                  마이스토리 심리상담센터는 예약상담으로만 운영되고 있으며 상담을 희망하시는 경우 반드시 예약 및 상담규정을 준수해야 합니다.<br />
                  <span>온라인 예약을 하시면 상담 직원이 전화를 드리며 상담문의 내용 등을 확인 한 후 정확한 예약이 확정 됩니다.    </span><br />
               </p>
               <form name="reserve" action="OneReserveForm.do" method="post" required>
               <div class="step"><img src="/SDDuo/resources/images/sub/step1.gif"></div>
               <div class="calarea">
                  <div class="calleft">
                     <p class="tit">원하시는 희망 예약날짜를 선택해 주세요</p>
                     <script src="/SDDuo/resources/js/jquery.supercal.js"></script>
					 <div class="example1" style="margin:0 auto"></div>
	                     <script>
	                        $('.example1').supercal({
	                           
	                        });
	                     </script> 
                   
                 	<div class="reserCenter">
                 		 <select id="pr_year" name="pr_year" required="" class="form-control" style="width: 100px; display: inline-block;">
                  		<option value="">년</option>
                        <%for(int i=2017; i<=2027; i++){ %>
                        <%int from = 'i';
                        String to = Integer.toString(from); %>
                        
                        <option value="<%=i%>"><%=i %></option>
                        <%} %>
                     </select>
                     년&nbsp;&nbsp;

                     <select id="pr_month" name="pr_month" required="" class="form-control"  style="width: 100px; display: inline-block;">
                     	<option value="">월</option>
                        <%for(int i=1; i<=12; i++){ %>
                        <%
                                 String s = Integer.toString(i); 
								if(s.length() == 1){
									s = "0"+s;
								}
                                 %>
                        <option value="<%=s%>"><%=s %></option>
                        <%} %>
                     </select>
                     월&nbsp;&nbsp;
                     
                     <select id="pr_day" name="pr_day" required="" class="form-control"  style="width: 100px; display: inline-block;">
                     	<option value="">일</option>
                        <%for(int i=1; i<= 31; i++){ %>
                        <%
                                 String s = Integer.toString(i); 
								if(s.length() == 1){
									s = "0"+s;
								}
                                 %>
                        <option value="<%=s%>"><%=s %></option>
                        <%} %>
                        
                     </select>
                                          일&nbsp;&nbsp;
                 	</div>
                     <p style="font-size: 20px; text-align: center;margin-top: 30px;"><span id="year" style="color: red;"></span>년<span id="month" style="color: red;"></span>월<span id="day" style="color: red;"></span>일에 예약하시겠습니까?</p>
                     
                                  
                  </div>
                  <div class="calright">
                     <p class="tit">예약정보를 입력해 주세요</p>
                     <p class="txt">왼쪽에서 먼저 원하는 날짜를 선택 후 예약해주세요</p>
                     
                     <div style="width: 295px; margin: 0 auto;">
                           <table width="100%" border="0" cellspacing="0" cellpadding="0">
                             <tr>
                              <td>
                                 <table width="100%" border="0" cellspacing="0" cellpadding="0">
               
                                   <tr>
                                    <td colspan="3" height="20"></td>
                                   </tr>
                                   <tr>
                                    <td valign="top"  class="formtit" style="color: #4f4f4f; font-size: 16px; padding-top: 10px;">센&nbsp&nbsp&nbsp&nbsp터</td>
                                    <td align="center" width="4" ></td>
                                    <td valign="top">
                                       <input type="hidden" name="m_id" value="${session_member_id }">         
                                       
                                       
                                       <select name="pr_center" required="" class="form-control" style="width:220px; height:35px; border-top: 1px solid #bbbbbb; border-left: 1px solid #bbbbbb; border-bottom: 1px solid #ebebeb; border-right: 1px solid #ebebeb; font-family:맑은 고딕; font-size:13; color:#676767; box-sizing: border-box;" id='133_f4_0' name='fname[4][]'>
                                          <option value="1">서울센터</option>
                                          <option value="2">대구센터</option>
                                          <option value="3">부산센터</option>
                                       </select>
                                    </td>
                                   </tr>
                                   <tr>
                                    <td colspan="3" height="15">&nbsp;</td>
                                   </tr>
                                   <tr>
                                    <td class="formtit"  style="color: #4f4f4f; font-size: 16px; padding-top: 10px;">시&nbsp&nbsp&nbsp&nbsp간 </td>
                                    <td align="center" width="4" ></td>
                                    <td>
                                       <table width="100%" border="0" cellspacing="0" cellpadding="0" align="left">
                                         <tr>
                                          <td width="65">
                                             <select name="pr_hour" required="" class="form-control" style="width:100px; height:35px; border-top: 1px solid #bbbbbb; border-left: 1px solid #bbbbbb; border-bottom: 1px solid #ebebeb; border-right: 1px solid #ebebeb;  font-family:맑은 고딕; font-size:13; color:#676767; box-sizing: border-box;" id='133_f2_0' name='fname[2][]'>
                                                <option value="09">09시</option>
                                                <option value="10">10시</option>
                                                <option value="11">11시</option>
                                                <option value="12">12시</option>
                                                <option value="14">14시</option>
                                                <option value="15">15시</option>
                                                <option value="16">16시</option>
                                                <option value="17">17시</option>
                                                <option value="18">18시</option>
                                             </select>
                                          </td>
                                          <td align="center" width="18" style="vertical-align: middle;">&nbsp&nbsp:&nbsp&nbsp</td>
                                          <td width="65">
                                             <select name="pr_minute" required="" class="form-control" style="width:100px; height:35px; border-top: 1px solid #bbbbbb; border-left: 1px solid #bbbbbb; border-bottom: 1px solid #ebebeb; border-right: 1px solid #ebebeb; font-family:맑은 고딕; font-size:13; color:#676767; box-sizing: border-box;" id='133_f2_0' name='fname[2][]'>
                                                <option value="00">00분</option>
                                                <option value="30">30분</option>
                                             </select>
                                          </td>
                                          <td>&nbsp;</td>
                                         </tr>
                                       </table>
                                    </td>
                                   </tr>
                                   <tr>
                                    <td colspan="3" height="15"></td>
                                   </tr>


                                    <tr>
                                    <td class="formtit"  style="color: #4f4f4f; font-size: 16px; padding-top: 10px;">이&nbsp;&nbsp;&nbsp;&nbsp;름</td>
                                    <td align="center" width="4" ></td>
                                    <td valign="top">
                                       <input type="text" value="" id="pr_name" name="pr_name" required="" maxlength="5" onKeyUp="checkLength2(this);" style="width:220px; height:30px; border-top: 1px solid #bbbbbb; border-left: 1px solid #bbbbbb; border-bottom: 1px solid #ebebeb; border-right: 1px solid #ebebeb; font-family:맑은 고딕; font-size:13; color:#676767; box-sizing: border-box;" id='133_f3_0' name='fname[3][]'>
                                    </td>
                                   </tr>
                                   <tr>
                                    <td colspan="3" height="15"></td>
                                   </tr>
                                   <tr>
                                    <td class="formtit"  style="color: #4f4f4f; font-size: 16px; padding-top: 10px;">연&nbsp;락&nbsp;처</td>
                                    <td align="center" width="4" ></td>
                                    <td>
                                       <table width="100%" border="0" cellspacing="0" cellpadding="0" align="left">
                                         <tr>
                                          <td width="63">
                                             <input type="text" value="010" name="pr_phone1" maxlength="3" onkeypress="return fn_press(event, 'numbers');" onkeydown="fn_press_han(this);" style="width:65px;  height:30px; border-top: 1px solid #bbbbbb; border-left: 1px solid #bbbbbb; border-bottom: 1px solid #ebebeb; border-right: 1px solid #ebebeb; font-family:맑은 고딕; font-size:13; color:#676767; box-sizing: border-box;">
                                          </td>
                                          <td align="center" width="13" style="vertical-align: middle;">-</td>
                                          <td width="63"><input type="text" value="" name="pr_phone2" onkeypress="return fn_press(event, 'numbers');" onkeydown="fn_press_han(this);" maxlength="4" style="width:65px;  height:30px; border-top: 1px solid #bbbbbb; border-left: 1px solid #bbbbbb; border-bottom: 1px solid #ebebeb; border-right: 1px solid #ebebeb; font-family:맑은 고딕; font-size:13; color:#676767; box-sizing: border-box;"></td>
                                          <td align="center" width="13" style="vertical-align: middle;">-</td>
                                          <td width="63"><input type="text" value="" name="pr_phone3" onkeypress="return fn_press(event, 'numbers');" onkeydown="fn_press_han(this);" maxlength="4" style="width:65px; height:30px; border-top: 1px solid #bbbbbb; border-left: 1px solid #bbbbbb; border-bottom: 1px solid #ebebeb; border-right: 1px solid #ebebeb; font-family:맑은 고딕; font-size:13; color:#676767; box-sizing: border-box;"></td>
                                          <td>&nbsp;</td>
                                         </tr>
                                       </table>
                                    </td>
                                   </tr>



                                   <tr>
                                    <td colspan="3" height="15"></td>
                                   </tr>
                                   <tr>
                                   
                                    <td valign="top" class="formtit"  style="color: #4f4f4f; font-size: 16px; line-height: 120%; padding-top: 10px;">상담신청<br>사유&nbsp;</td>
                                    <td align="center" width="4" ></td>
                                    <td>
                                   
                                       <textarea value="" id="pr_reason" name="pr_reason" required="" onKeyUp="checkLength(this);" style="width:220px; height:110px; border-top: 1px solid #bbbbbb; border-left: 1px solid #bbbbbb; border-bottom: 1px solid #ebebeb; border-right: 1px solid #ebebeb; font-family:맑은 고딕; font-size:13; color:#676767; box-sizing: border-box;" id='133_f5_0' name='fname[5][]'></textarea>
                                       </form>
                                    </td>
                                   </tr>
                                   
                                   
                                 </table>

                              </td>
                             </tr>
                             <tr>
                              <td>
                                 <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                   <tr>

                                    <td colspan="3 " style="font-family:맑은 고딕; font-size:14px; color:#ab9159;padding:10px 0; width: 290px; letter-spacing: -2.2px;">*&nbsp;연락처를 남기시지 않으면 예약이 확정 되지 않습니다. </td>
                                   </tr>

                                 </table>
                              </td>
                             </tr>
                             <tr>
                              <td>
                                 <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                   <tr>

                                    <td colspan="3 " style="font-family:맑은 고딕;font-size:14px; color:#8b8b8b;padding:10px 0; letter-spacing: -1.5px;"><input type="checkbox" name="agree" value="yes" style="margin-top: -2px;"/> 개인정보 취급방침에 동의 <a href="" onclick="javascript:popup()" style="color:#505050; font-family: 맑은 고딕; text-decoration:underline; " id="layer_open3">개인정보취급방침</a></td>
                                   </tr>

                                 </table>
                              </td>
                             </tr>
                           </table>
                           </div>
               
               <div class="btn-area">
                  <input type="button" onclick="return checkForm()" value="예약하기"   class="submit" />
                  <input type="button" value="취소" class="cancel" onclick="javascript:history.back();"/>
               </div>
         </form>
         </div>
         </div>
         </div>
         </div>
         
</body>
<script type="text/javascript">

function checkLength(pr_reason) {
    if (pr_reason.value.length > 30 ) {
    	pr_reason.blur();
    	pr_reason.value = pr_reason.value.substring(0, 30);
        alert('30자 이내로 입력해주세요.');
        pr_reason.focus();
        return false;
    }
}

function checkLength2(pr_name) {
    if (pr_name.value.length > 5 ) {
    	pr_name.blur();
    	pr_name.value = pr_name.value.substring(0, 5);
        alert('5자 이내로 입력해주세요.');
        pr_name.focus();
        return false;
    }
}

function popup(){ 
    window.open('agree.do','agree', 'width=600, height=800,left=0,top=0,toolbar=no, location=no, directories=no, status=no, resizable=yes, scrollbars=yes, copyhistory=no'); 
 } 
</script>
</html>