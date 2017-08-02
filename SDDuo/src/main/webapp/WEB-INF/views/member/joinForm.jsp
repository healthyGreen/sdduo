<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

   <script>
   $(document).ready(function () {
       $("#m_id").keydown(function (e) {
           $("#ic").val('N');
       });
   });
   
   $(document).ready(function () {
       $("#m_email").keydown(function (e) {
           $("#ec").val('N');
       });
   });
   
    $(document).ready(function () {
   $("#m_email").keydown(function(e) { 
	   var text = $("#m_email").val();
       var regexp = /[0-9a-zA-Z.;\-@]/; // 숫자,영문,특수문자
       // var regexp = /[0-9]/; // 숫자만
       // var regexp = /[a-zA-Z]/; // 영문만
       for( var i=0; i<text.length; i++){
           if(text.charAt(i) != " " && regexp.test(text.charAt(i)) == false ){
            document.getElementById('m_email').value = "";
            return;
           }
       }       

   });
   }); 
   
 /*   $( 'input' ).live("blur keyup", function() {

	   $(this).val( $(this).val().replace( /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/g, '' ) );

	 });
 */


   
   
   function openC() {
       
      if (document.join.ic.value == "N") {
           alert("아이디 중복확인을 해주세요");
           return false;
       }
       
       
       if (document.join.ec.value == "N") {
           alert("이메일 중복확인을 해주세요");
           return false;
       }
   }
   
   function ic(name){
	      document.getElementById('ic').value = name;
	}


	function ec(email){
	      document.getElementById('ec').value = email;

	}

   function joinValidator(join){
	   var frm = document.join;
	   
       if(frm.m_id.value == ""){
         alert("Id를 입력해주세요.");
         document.join.m_id.focus();
         return false;
         
      } if(frm.m_id.value.length <4 || frm.m_id.value.length>8){
    	  alert("Id의 길이를 준수하여 주세요");
          document.join.m_id.focus();
          return;
      }
    	 if(frm.m_name.value.trim() == ""){
         alert("이름을 입력해주세요.");
         join.m_name.focus();
         return false;
         
      } if(frm.m_pass.value.trim() == ""){
         alert("비밀번호를 입력해주세요.");
         join.m_pass.focus();
         return false;   
         
      }if(frm.m_pass2.value.trim() == ""){
         alert("비밀번호 확인을 입력해주세요.");
         join.m_pass2.focus();    
         return;
         
      } if(frm.m_pass.value != frm.m_pass2.value){
     	 alert("비밀번호가 일치하지 않습니다");
  	    frm.m_pass.value="";
  	    frm.m_pass2.value="";
  	    return false;
  	    
      }/* else if(frm.m_sex.value.trim() == ""){
         alert("성별을 선택해주세요.")
         join.m_sex.focus();
         return false;
         
      } else if(frm.m_year.value.trim() == ""){
            alert("연도를 선택해주세요.");
            join.m_year.focus();
            return false;
         } */else{
        	 
         }
   }
   
// 비밀번호 체크
   function passCheck(){
  	var pw = document.join.m_pass.value;
  	var confirmPw = document.join.m_pass2.value;
  	if(pw.length<6||pw.length>10){
  		window.alert('비밀번호는 6자 이상, 10자 이하만 이용 가능합니다.');
  		join.m_pass.focus();
  		document.getElementById('m_pass').value=document.getElementById('m_pass2').value;
  		document.getElementById('same').innerHTML='';
  		console.log('test');
  	}
  	if(document.getElementById('m_pass').value!=''&&document.getElementById('m_pass2').value){
  		if(document.getElementById('m_pass').value==document.getElementById('m_pass2').value){
  			document.getElementById('same').innerHTML='비밀번호가 일치합니다.';
  			document.getElementById('same').style.color='blue';
  			
  		}
  		else{
  			document.getElementById('same').innerHTML='비밀번호가 일치하지 않습니다.';
  			document.getElementById('same').style.color='red';
  		}
  	}else{
  		 console.log('test');
  	}
  }
   
   function check_key(e) {
	   var char_ASCII = e;
	                  
	    //숫자
	   if (char_ASCII >= 48 && char_ASCII <= 57 )
	     return 1;
	   //영어
	   else if ((char_ASCII>=65 && char_ASCII<=90) || (char_ASCII>=97 && char_ASCII<=122))
	      return 2;
	   //특수기호
	   else if ((char_ASCII>=33 && char_ASCII<=47) || (char_ASCII>=58 && char_ASCII<=64) 
	     || (char_ASCII>=91 && char_ASCII<=96) || (char_ASCII>=123 && char_ASCII<=126))
	      return 4;
	   //한글
	   else if ((char_ASCII >= 12592) || (char_ASCII <= 12687))
	      return 3;
	   else 
	      return 0;
	  }
   
   function name_check() {
	   var key = event.keyCode;
	if(check_key(key) == 4 || check_key(key)==1){
		alert("이름은 한글과 영문으로만 입력해주시기 바랍니다.");
		document.join.m_id.focus();
		return false;
	}
}

	   


/* 
	  function nonHangulSpecialKey() {
		  var key = event.keyCode;
	    if(check_key(key) != 1 && check_key(key) != 2 && check_key(key) != 4) {
		    if(event.keyCode==8 ||event.keyCode==21 || event.keyCode==13 ||event.keyCode==14 ||event.keyCode==15 || event.keyCode==37 || event.keyCode==39 || event.keyCode==46){
 				return false;
 				}  
	    alert("올바르지 않은 이메일 주소입니다.");
	    event.returnValue = false;   
	    return;
	   } 
		  
	  }

	    */
	    
	   

	  //텍스트 박스에 숫자만 입력할수 있도록

	 function fn_press(event, type){
		  if(type == "numbers"){
			  if(event.keyCode < 48 || event.keyCode > 57) return false;
		  }
	  }
	
	  function fn_press_han(obj){
		  if(event.keyCode==8 || event.keyCode==9 || event.keyCode==37 || event.keyCode==39 || event.keyCode==46) return;
		  obj.value = obj.value.replace(/[\ㄱ-ㅎㅏ-ㅣ가-힣]/g,'');
	  }

   </script>
  
      <script type="text/javascript">
     function onlyNumber(){
         if((event.keyCode<48)||(event.keyCode>57))
            event.returnValue=false;
   }
  </script>
  	
  	<script type="text/javascript">
   	function eng_number(){
   		//var event = window.event || e;
  		var join = document.join;
  		var e = event.keyCode;
  		
  		
  			//event.returnValue=false;
  			if(check_key(e)!=1 && check_key(e)!=2){
  			 if(event.keyCode==8 ||event.keyCode==21 ||event.keyCode==13 || event.keyCode==37 || event.keyCode==39 || event.keyCode==46){
  				return false;} 
  				alert("아이디는 영어와 숫자로만 해주시기 바랍니다!");
  				//join.m_id.value = join.m_id.value.replace(/[\ㄱ-ㅎㅏ-ㅣ가-힣]/g, ' ');
  				join.m_id.value = "";
  				event.returnValue = "";
  				return false;


  				//join.m_id.focus();
  				
  			}	
  			
  	} 
  	
   	
   	function name_check(){
   		//var event = window.event || e;
  		var join = document.join;
  		var e = event.keyCode;

  			//event.returnValue=false;
  			if(check_key(e)!=2 && check_key(e)!=3){
  			if(event.keyCode==8 || event.keyCode==21 || event.keyCode==9 || event.keyCode==37 || event.keyCode==39 || event.keyCode==46){
  				return false;}
  				alert("이름은는 영어혹은 한글로만 해주시기 바랍니다!");
  				//join.m_id.value = join.m_id.value.replace(/[\ㄱ-ㅎㅏ-ㅣ가-힣]/g, '');
  				//event.returnValue = false;
  				join.m_name.value = "";
  				event.returnValue = "";
  				return false;


  				//join.m_id.focus();
  				
  			}	
  			
  	} 
  	</script> 
   

   
<script>
//Id 중복 체크//
   function IdConfirm(join) {
      
      var M_id = document.join.m_id.value;
   var url = "idCheck.do?m_id="+M_id;
      
      if(M_id ==""){
            alert("아이디를 입력해주세요!")
            document.join.m_id.focus();
            return;
            
      }else{
         open(url, "IdConfirm", "toolbar=no,location=no,status=no,menubar=no,scrollbars=no,resizable=no,width=400,height=600");
        // join.m_id.readOnly = true;

         }
}
  //Email 중복 체크//
   function EmailConfirm(join){
	   var m_email = document.join.m_email.value;
	   var url = "emailCheck.do?m_email="+m_email;
	   
	   if(m_email ==""){
		   alert("이메일을 입력해주세요!")
		   document.join.m_email.focus();
		   return;
	   }else{
		   open(url, "EmailConfirm", "toolbar=no,location=no,status=no,menubar=no,scrollbars=no,resizable=no,width=400,height=600");
	         
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


          <div class="sub-content">
            <div class="sub-content-inbox">
               
               <div class="sub-top">
                
               </div>
               <div class="sub-cont">
                  <div class="sub-cont-inbox clear login-cont">
         <div class="step-line3">
            <img src="/SDDuo/resources/images/sub/step-line3.gif" style="width: 100%;"/>
         </div>
         <div class="info-table-title">
            <p class="table-title">상세정보입력</p>
            <p class="table-sub-title"><span class="color">* </span>표시는 필수입력사항이며, 본인확인 및 서비스 이용을 위하여 기본정보를 정확히 입력해주세요.</p>
         </div>
          <spring:hasBindErrors name="member"/>
    <form action="joinSuccess.do" enctype="multipart/form-data" name="join" method="post" onSubmit="return openC()">
        

         <div class="idpw_box">
         
            <table>
               <tbody>
               <tr>
                  <th class=" "><label for="id"><span class="color">*</span>아이디</label></th>
                  <td class=" ">
                      <input type="text" onkeydown="eng_number();" class="common-text-box box-left " id="m_id" name="m_id" maxlength="8"/> &nbsp;
                      	<input type="hidden" id="ic" name="ic" value="N">
                       <input type="button" value="중복확인" style="background:#484647;cursor: pointer;border: none;color: #Fff;padding: 6px 7px;" onclick="javascript:IdConfirm(join)"/>   
                     <p class="exp">4~8자의 영문+숫자를 사용해 주세요.</p> 
                   <form:errors path="m_id"/>
                   </td>
               </tr>
               <tr>
                 <th class=" "><label for="id"><span class="color">*</span>이름</label></th>
                 <td class=" ">
                   <input type="text"  onkeydown="name_check();" class="common-text-box box-left " id="m_name" name="m_name" maxlength="8" style="ime-mode:disabled;"/>
                  
                 </td>
               </tr>
               
               <tr>
                 <th><label for="login_pw"><span class="color">*</span>비밀번호</label></th>
                 <td>
                   <input type="password"  required="" id="m_pass" name="m_pass" onchange="passCheck()" maxlength="10" class="common-text-box box-left"/>
               
                 </td>
               </tr>
               <tr>
                 <th><label for="login_pw_chk"><span class="color">*</span>비밀번호확인</label></th>
                 <td>
                   <input type="password"  required="" id="m_pass2" name="m_pass2" onchange="passCheck()" maxlength="10" class="common-text-box box-left"/>&nbsp;&nbsp;<span id="same"></span>
            
                 </td>
               </tr>
               <tr>
                 <th class=" "><label for="id"><span class="color">*</span>성별<!-- label--></label></th>
                 <td class=" ">
                  <input type="radio"  required="" name="m_sex" value="여자" checked="checked"/><span class="up">여자</span>&nbsp;&nbsp;
                   <input type="radio"  required="" name="m_sex" value="남자"/><span class="up">남자</span>
                   
                 </td>
               </tr>
               <tr>
                  <th class=" "><label for="id"><span class="color">*</span>생년월일<!-- label--></label></th>
                  <td class="memberCols2">
                  <select name="m_year"  required="" class="common-text-box4">
        <c:forEach step="1" begin="1965" end="2016" var="i">
        <option value="${i }"/>${i }
        </c:forEach>
             </select>년&nbsp;
           
       <select name="m_month"  required="" class="common-text-box4">
        <c:forEach step="1" begin="1" end="12" var="i">
        <option value="${i }">${i }
        </c:forEach>
             </select>월&nbsp;
        <select name="m_date"  required="" class="common-text-box4">
        <c:forEach step="1" begin="1" end="31" var="i">
        <option value="${i }"/>${i }
        </c:forEach>
             </select>일&nbsp;
        </td>
               </tr>
               <tr>
                  <th class=" "><label for="id"><span class="color">*</span>전화번호</label></th>
                  <td class="memberCols2">
                  <select name="m_tongsinsa" id="m_tongsinsa"  required="" class="common-text-box4">
                     <option>SKT</option>
                     <option>KT</option>
                     <option>LG</option>
                  </select>
  <input type="text" name="m_phone1"  required="" class="common-text-box4"id="m_phone1" value="010" size="3" maxlength="3" required=""  label="핸드폰" onkeypress="return fn_press(event,'numbers');" onkeydown="fn_press(this);" style='IME-MODE:disabled'/> -
   <input type="text" name="m_phone2"  required="" class="common-text-box4"id="m_phone2"  size="4" maxlength="4" required=""  label="핸드폰" onkeypress="return fn_press(event,'numbers');" onkeydown="fn_press(this);" style='IME-MODE:disabled'/> -
   <input type="text" name="m_phone3"  required="" class="common-text-box4" id="m_phone3"  size="4" maxlength="4" required=""  label="핸드폰" onkeypress="return fn_press(event,'numbers');" onkeydown="fn_press(this);" style='IME-MODE:disabled'/>

   </td>
               </tr>
               <tr>
                  <th>
                     <label for="email"><span class="color">*</span>E-MAIL</label>
                  </th>
                  <td>
                  <input type="text" id="m_email" name="m_email" class="common-text-box2 " onkeydown="nonHangulSpecialKey();" style="ime-mode:disabled;" /> 
                  <input type="hidden" id="ec" name="ec" value="N">
                  &nbsp;&nbsp;&nbsp;<input type="button" value="중복확인" style="background:#484647;cursor: pointer;border: none;color: #Fff;padding: 6px 7px;" onclick="javascript:EmailConfirm(join)"/> 
                 
                     <p class="mt-5">
                        
                           
                     </p>
                
                  </td>
               </tr>
               <tr>
               <th class="memberCols1" rowspan="2">
                   <label for="email"><span class="color">*</span>주소</label>
               </th>
               
                 <td>
                 <input type="text"  required="" name="m_zipcode" id="sample6_postcode" size="5" class="common-text-box3"  value="" label="우편번호"/>
                 <input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기" style="background:#484647;cursor: pointer; border: none; color: #Fff; padding:6px 7px;"/><br>
                 
                     </td>
            </tr>
            <tr>
           <td id="mmber1">
           <input type="text"  required="" name="m_add1" id="sample6_address" class="common-text-box2" value=""  size="30" required="" label="주소"/>
           <input type="text"  required="" name=m_add2 id="sample6_address2"class="common-text-box"  value="" size="30" onkeyup="SameAddressSub(this)" oninput="SameAddressSub(this)" label="상세주소"/><br>
            <input type="hidden" name="m_admin" value="0"/> 
           <div style="padding:5px 5px 0 1px;font:12px dotum;color:#999;float:left;" id="div_road_address"></div>
           <div style="padding:5px 0 0 1px;font:12px dotum;color:#999;" id="div_road_address_sub"></div>
               </td>
            </tr>
   
            </tbody>
         </table>
            <div class="join-conf-btn join-conf-btn2 clear" style="margin: 50px 0px;">
              
                  <input type="submit" onclick="joinValidator()" class="submit" value="작성완료"/>
                  <input type="button" onclick="location.href='http://localhost:8080/SDDuo/main.do'" value="취소" class="cancel"/>
             
            </div> 
          
         </div>
          </form>
         
      </div>
               </div>
               
            </div>
         </div>