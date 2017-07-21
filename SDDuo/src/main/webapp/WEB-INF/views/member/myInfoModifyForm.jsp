<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!-- <head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원 정보 수정</title>
</head>
<body> -->
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
function pwChk()
{
	if(document.modify.m_pass.value == ""){
  		alert("비밀번호를 입력해주세요!")
  		document.modify.m_pass.focus();
  		return false;

	}
}


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
<div class="sub-content">
				<div class="sub-content-inbox">
					
					<div class="sub-top">
						<h2>회원정보수정</h2>
					</div>
					<div class="sub-cont clear">
						<div class="sub-cont-inbox">
							<div class="leftbox">
								<div class="tit"><span>MY</span> PAGE</div>
									<dl class="mlist">
										<dt><a href="<%=request.getContextPath() %>/member/myInfoView.do">나의 정보 수정/탈퇴</a></dt>
										<dt>예약 현황</dt>
										<dt>상담 내역</dt>
										<dt>나의 자가 진단</dt>
										<dt>쿠폰함(${member.m_r_coupon}개)</dt>
									</dl>
								</div>
							</div>
							<div class="rightbox">
								<form name="modify" action="myInfoModify.do" method="post" onSubmit="return pwChk();">
								<input type="hidden" name="m_id" value="${sessionScope.session_member_id}" >
								<table width="100%" cellpadding="0" cellspacing="0">
									<tbody><tr>
									<td style="padding:10px; border:1px solid #dedede; background-color:#fbfbfb;" align="center">

										<table width="97%" cellpadding="5" cellspacing="0" border="0" class="jogin_infotbl">
										<tbody><tr>
											<td class="memberCols1"><font color="FF6000">*</font> 아이디</td>
									
											<td class="memberCols2"><span class="eng"><b>${sessionScope.session_member_id}</b></span></td>
										</tr>
										
										<tr>
											<td class="memberCols1"><font color="FF6000">*</font> 비밀번호</td>
											<!-- 비밀번호 버튼 -->
											<td class="memberCols2">
												<input type="password" name="m_pass">
												
											</td>
										</tr>
										
										<tr>
											<td class="memberCols1"><font color="FF6000">*</font> 이름</td>
											<td class="memberCols2">
												${sessionScope.session_member_name}
											</td>
										</tr>
										<!-- 
										<tr>
											<td class="memberCols1"><font color="FF6000">*</font> 성별</td>
											<td class="memberCols2"><span class="noline">
											<input type="radio" name="m_sex" required="" label="성별" value="man"> 남자
											<input type="radio" name="m_sex" required="" label="성별" value="woman" checked=""> 여자
											</span></td>
										</tr> -->
										
										<tr>
											<td class="memberCols1"><font color="FF6000">*</font> 생년월일</td>
											<td class="memberCols2">
											<input type="text" name="m_year" value="${member.m_year }" required="" label="생년월일" style="background:#FFF" size="4" maxlength="4">년
											<input type="text" name="m_month" value="${member.m_month }" required="" label="생년월일" style="background:#FFF" size="2" maxlength="2">월
											<input type="text" name="m_date" value="${member.m_date }" required="" label="생년월일" style="background:#FFF" size="2" maxlength="2">일
										
										
											</td>
										</tr>
										
										
										
										
										<tr>
											<td class="memberCols1"><font color="FF6000">*</font> 이메일</td>
											<td class="memberCols2">
											<input type="text" name="m_email" value="${member.m_email }" size="30" required="" option="regEmail" label="이메일" style="background:#FFF">
											<a href="javascript:void(0)" onclick="chkEmail()"><input type="button" style="    background: #484647;    cursor: pointer;    border: none;    color: #Fff;    padding: 3px 7px;" value="중복확인"></a>
											
											
											
										</tr>
										
										
										<tr>
										<td class="memberCols1"><font color="FF6000">*</font> 주소</td>
									<td class="memberCols2">

									<table>
									<tbody>
									<%-- <tr>
               <th class="memberCols1" rowspan="2"><font color="FF6000">*</font> 주소</th>
               
                 <td>
                 <input type="text" name="m_zipcode" id="sample6_postcode" size="5" class="line"  value="${member.m_zipcode }" label="우편번호">
                 <input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기" style="background:#484647;cursor: pointer; border: none; color: #Fff; padding: 3px 7px;"><br>
                 
                     </td>
            </tr>
            <tr>
           <td id="mmber1">
           <input type="text" name="m_add1" id="sample6_address" value="${member.m_add1 }"  size="30" required="" label="주소"/>
           <input type="text" name=m_add2 id="sample6_address2" value="${member.m_add2 }" size="30" onkeyup="SameAddressSub(this)" oninput="SameAddressSub(this)" label="상세주소"/><br>
            <input type="hidden" name="m_admin" value="0"/> 
           <div style="padding:5px 5px 0 1px;font:12px dotum;color:#999;float:left;" id="div_road_address"></div>
           <div style="padding:5px 0 0 1px;font:12px dotum;color:#999;" id="div_road_address_sub"></div>
               </td>
            </tr> --%>
									<tr>
										<td>
											<input type="text" name="m_zipcode" id="sample6_postcode" size="5" class="line"  value="${member.m_zipcode }" label="우편번호">
											 <input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기" style="background:#484647;cursor: pointer; border: none; color: #Fff; padding: 3px 7px;"><br>
											 <input type="text" name="m_add1" id="sample6_address" value="${member.m_add1 }"  size="30" required="" label="주소"/>
          									 <input type="text" name=m_add2 id="sample6_address2" value="${member.m_add2 }" size="30" onkeyup="SameAddressSub(this)" oninput="SameAddressSub(this)" label="상세주소"/><br>
											</td>
										</tr>
										</tbody></table>
									
										</td>
									</tr>
										
										
										<tr>
											<td class="memberCols1"><font color="FF6000">*</font> 핸드폰</td>
											<td class="memberCols2">
										<input type="text" name="m_phone1" id="mobile0" value="${member.m_phone1 }" size="4" maxlength="4" required="" option="regNum" label="핸드폰"> -
										<input type="text" name="m_phone2" id="mobile1" value="${member.m_phone2 }" size="4" maxlength="4" required="" option="regNum" label="핸드폰"> -
										<input type="text" name="m_phone3" id="mobile2" value="${member.m_phone3 }" size="4" maxlength="4" required="" option="regNum" label="핸드폰">
										
										</td>
									</tr>
								


									</tbody></table>

								</td>
								</tr>
								</tbody></table>
								<div style="width:100%" class="btnArea">
									<input type="submit" value="수정완료" style="border: none;  background: #999; color: #fff; padding: 10px 30px; ">
									
								</div>
								</form>
							</div>
						</div>	
						
					</div>
					
				</div>
<!-- </body> -->
</html>