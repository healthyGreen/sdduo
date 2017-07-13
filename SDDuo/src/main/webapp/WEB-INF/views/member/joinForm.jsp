<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html PUBliC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
   <title>마이스토리</title>
   <meta http-equiv="Content-Type" content="text/html;charset=euc-kr" />
   <meta http-equiv="X-UA-Compatible" content="IE=edge" />
   <link rel="stylesheet" href="../../css/layout.css" />
   <link rel="stylesheet" href="../../css/default.css" />

   <!--JQUERY-->


   <script  type="text/javascript" src="../../js/jquery-1.9.1.js"></script>
   <script  type="text/javascript" src="../../js/common.js"></script>
   <script  type="text/javascript" src="../../js/jquery.flexslider.js"></script>
   <script type="text/javascript" src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
   <script src="../../js/jquery.rolling.js" type="text/javascript"></script>
   <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.2/jquery-ui.js"></script>
   <script type="text/javascript" src="../../js/tab.js"></script>
   <script type="text/javascript" src="../../js/gallery.js"></script>
   <script type="text/javascript">
       // <![CDATA[
       $(document).ready(function () {
         $('#tab').tabify();
       });
       // ]]>
   </script>
   
   <script>
   function IdConfirm(join) {
   	var m_id = document.join.M_id.value;
   	var url = "joinForm.do?m_id="+m_id;
   	
   	if(m_id ==""){
      		alert("아이디를 입력해주세요!")
      		document.join.M_id.focus();
      		
   	}else{
   		open(url, "IdConfirm", "toolbar=no,location=no,status=no,menubar=no,"+
         	"scrollbars=no,resizable=no,width=400,height=600");
   		
   		}
}
  
   </script>
   <script>
  /*** 롤링배너 ***/
  jQuery(function($){
    $("div.gallery_rolling").gallery_rolling();
  });
  </script>

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullAddr = ''; // 최종 주소 변수
                var extraAddr = ''; // 조합형 주소 변수

                // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    fullAddr = data.roadAddress;

                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    fullAddr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
                if(data.userSelectedType === 'R'){
                    //법정동명이 있을 경우 추가한다.
                    if(data.bname !== ''){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있을 경우 추가한다.
                    if(data.buildingName !== ''){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('sample6_address').value = fullAddr;

                // 커서를 상세주소 필드로 이동한다.
                document.getElementById('sample6_address2').focus();
            }
        }).open();
    }
</script>



</head>


 <body>
      <?include "../../inc/quick.html"?>

          <div class="sub-content">
            <div class="sub-content-inbox">
               
               <div class="sub-top">
                  <h2>회원가입</h2>
               </div>
               <div class="sub-cont">
                  <div class="sub-cont-inbox clear login-cont">
         <div class="step-line3">
            <img src="../../images/sub/step-line3.gif">
         </div>
         <div class="info-table-title">
            <p class="table-title">상세정보입력</p>
            <p class="table-sub-title"><span class="color">* </span>표시는 필수입력사항이며, 본인확인 및 서비스 이용을 위하여 기본정보를 정확히 입력해주세요.</p>
         </div>
          <spring:hasBindErrors name="member"/>
    <form:form commandName="MemberModel" action="joinSuccess.do" enctype="multipart/form-data"  name="join" method="post">
         <div class="idpw_box">
         
            <table>
               <tbody>
               <tr>
                  <th class=" "><label for="id"><span class="color">*</span>아이디<!-- label--></label></th>
                  <td class=" ">
                      <input type="text" class="common-text-box box-left " id="m_id" name="m_id" maxlength="8">
                      <p class="exp">4~8자의 영문+숫자만 사용가능</p>
                      <p class="errorpage errorpage2 mt-5" id="errUserId" style="display:none;">4~8자의 영문+숫자를 사용해 주세요.</p>
                      <p class="errorpage2 errorpage3  mt-5" id="useUserId" style="display:none;">사용이 가능한 아이디 입니다.</p>
                  	  <input type="button" value="중복확인" class="double-chk" onclick="javascript:IdConfirm(join)">	
                   </td>
               </tr>
               <tr>
                 <th class=" "><label for="id"><span class="color">*</span>이름<!-- label--></label></th>
                 <td class=" ">
                   <input type="text" class="common-text-box box-left " id="m_name" name="m_name" maxlength="8">
                  
                 </td>
               </tr>
               
               <tr>
                 <th><label for="login_pw"><span class="color">*</span>비밀번호</label></th>
                 <td>
                   <input type="password" id="m_pass" name="m_pass" maxlength="10" class="common-text-box box-left">
                   <p class="exp ">8~10자의 영문+숫자/특수문자(_!@#$%^&amp;*())만 사용가능</p>
                   <p class="errorpage errorpage2 mt-5" id="errUserPw" style="display:none;">8~10자의 영문+숫자/특수문자(_!@#$%^&amp;*())를 사용해주세요.</p>
                 </td>
               </tr>
               <tr>
                 <th><label for="login_pw_chk"><span class="color">*</span>비밀번호확인</label></th>
                 <td>
                   <input type="password" id="m_pass" name="m_pass2" maxlength="10" class="common-text-box box-left">
                   <p class="exp ">비밀번호 확인을 위해 다시 한번 입력바랍니다.</p>
                   <p class="errorpage errorpage2 mt-5" id="errUserRePw" style="display:none;">입력하신 비밀번호가 일치하지 않습니다.</p>
                 </td>
               </tr>
               <tr>
                 <th class=" "><label for="id"><span class="color">*</span>성별<!-- label--></label></th>
                 <td class=" ">
                    <input type="checkbox" name="m_sex" value="women" checked="checked">여자&nbsp;&nbsp;
                   <input type="checkbox" name="m_sex" value="men">남자
                   
                 </td>
               </tr>
               <tr>
                  <th class=" "><label for="id"><span class="color">*</span>생년월일<!-- label--></label></th>
                  <td class="memberCols2">
                  <select name="m_year">
        <c:forEach step="1" begin="1965" end="2016" var="i">
        <option value="${i }"/>${i }
        </c:forEach>
             </select>년&nbsp;
           
       <!--  <input type="text" name="m_year" value="1993" required="" label="생년월일" style="background:#FFF" size="4" maxlength="4">년 -->
       <select name="m_month">
        <c:forEach step="1" begin="1" end="12" varStatus="i">
        <option value="${i }">${i }
        </c:forEach>
             </select>월&nbsp;
        <select name="m_date">
        <c:forEach step="1" begin="1" end="31" var="i">
        <option value="${i }"/>${i }
        </c:forEach>
             </select>일&nbsp;
    
    
        </td>
               </tr>
               <tr>
                  <th class=" "><label for="id"><span class="color">*</span>전화번호<!-- label--></label></th>
                  <td class="memberCols2">
                  <select name="m_tongsinsa" id="m_tongsinsa">
                     <option>SKT</option>
                     <option>KT</option>
                     <option>LG</option>
                  </select>
   <input type="text" name="m_phone1" id="m_phone1" value="010" size="4" maxlength="4" required=""  label="핸드폰"> -
   <input type="text" name="m_phone2" id="m_phone2" value="4158" size="4" maxlength="4" required=""  label="핸드폰"> -
   <input type="text" name="m_phone3" id="m_phone3" value="2290" size="4" maxlength="4" required=""  label="핸드폰">
   <span class="noline" style="padding-left:10px"><input type="checkbox" name="sms"><span style="font:8pt 돋움;color:#007FC8">광고성 정보,이벤트SMS수신</span></span>
   <div style="letter-spacing:-1;color:#FF6000">※ <span style="font-size:8pt;">주문 관련 정보 등 주요 안내 사항은 수신 동의 여부에 관계없이 자동 발송됩니다.</span></div>
   </td>
               </tr>
               <tr>
                  <th>
                     <label for="email"><span class="color">*</span>E-MAIL</label>
                  </th>
                  <td class="radio-txt-pt">
                     <p class="mt-5">
                        <input type="text" id="m_email" name="m_email" class="common-text-box2 "/> 주소 직접입력
                   
                       <!--  <select class="common-text-box2" id="m_email" name="m_email">
                           <option value="etc">직접입력</option>
                              <option value="@naver.com">@naver.com</option>
                              <option value="@nate.com">@nate.com</option>
                              <option value="@daum.net">@daum.net</option>
                              <option value="@gmail.com">@gmail.com</option>
                              </select> -->
                           
                     </p>
                     <p class="mt-5"><span class="color">* </span> 이메일은 결제내역 받기, 비밀번호 찾기 등에 사용되므로 정확하게 입력해 주세요.</p>
                     <p class="errorpage errorpage2 mt-5" id="errUserMail" style="display:none;">이미 사용중인 이메일 입니다.</p>
                  </td>
               </tr>
               <tr>
               <th class="memberCols1" rowspan="2"><font color="FF6000">*</font> 주소</th>
               
                 <td>
                 <input type="text" name="m_zipcode" id="sample6_postcode" size="5" class="line"  value="" label="우편번호">
                 <input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기" style="background:#484647;cursor: pointer; border: none; color: #Fff; padding: 3px 7px;"><br>
                 
                     </td>
            </tr>
            <tr>
           <td id="mmber1">
           <input type="text" name="m_add1" id="sample6_address" value=""  size="30" required="" label="주소"/>
           <input type="text" name=m_add2 id="sample6_address2" value="" size="30" onkeyup="SameAddressSub(this)" oninput="SameAddressSub(this)" label="상세주소"/><br>
            <input type="hidden" name="m_admin" value="0"/> 
           <div style="padding:5px 5px 0 1px;font:12px dotum;color:#999;float:left;" id="div_road_address"></div>
           <div style="padding:5px 0 0 1px;font:12px dotum;color:#999;" id="div_road_address_sub"></div>
               </td>
            </tr>
   
            </tbody>
         </table>
            <div class="join-conf-btn join-conf-btn2 ">
               <ul>
                  <button type="button" onclick="this.form.submit();" class="btn btn-primary">작성완료</button>
                  <li><input type="button" class="cancel" title="" value="취소" ></li>
               </ul>
            </div>
          
         </div>
          </form:form>
         
      </div>
               </div>
               
            </div>
         </div>
         <div class="footer">
            <div class="footer-top">
               <div class="footer-top-inbox">
                  <ul>
                     <li>회사소개</li>
                     <li>사이트이용약관</li>
                     <li>개인정보처리방침</li>
                     <li>임직원서비스</li>
                  </ul>
               </div>
            </div>
            <div class="footer-bottom">
               <div class="footer-bottom-inbox">
                  <h2><img src="../../images/common/b_logo.gif"></h2>
                  <p>
                     고객서비스센터 080-3243-2312<br>
                     (주)마이스토리 서울특별시 강남구 테헤란로길 52길 17 역삼동 이에스타워 10층 사업자등록번호:505-88-00158 홈페이지 관리책임자:안영미<br>
                     <br/>
                     Copyright ⓒ MYSTORY All Rights Reserved
                  </p>
               </div>
            </div>
           
         </div>
        
      </div>
  
 </body>
</html>