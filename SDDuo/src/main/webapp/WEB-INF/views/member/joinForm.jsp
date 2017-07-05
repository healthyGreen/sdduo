<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
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
  /*** 롤링배너 ***/
  jQuery(function($){
    $("div.gallery_rolling").gallery_rolling();
  });
  </script>




</head>


 <body>
      <?include "../../inc/quick.html"?>


      <div class="wrapper">
         <div class="header" id="top">
            <div class="subBg"></div>
            <div class="header-inbox">
               <div class="header-top">
                  <ul class="left-area">
                     <li><a href=""><img src="../../images/common/site01.gif" alt="카페"></a></li>
                     <li><a href=""><img src="../../images/common/site02.gif" alt="블로그"></a></li>
                     <li><a href=""><img src="../../images/common/site03.gif" alt="페이스북"></a></li>
                     <li><a href=""><img src="../../images/common/site04.gif" alt="카카오톡"></a></li>
                  </ul>
                  <h1><a href="../../index.html"><img src="../../images/common/logo.gif" alt="로고"></a></h1>
                  <ul class="right-area">
                     <li><a href="">사이트맵</a></li>
                     <li class="last"><a href="">주변센터찾기</a></li>
                  </ul>
               </div>
               <div class="header-bottom">
                  <!-- gnb 시작 -->
                   <div id="gnbarea">

                     <ul class="gnb clear">
                       <li class="li01"><a href="sub0101.html"><img src="../../images/common/gnb01.gif">소개</a>
                         <div class="subWrap sub01">
                           <ul>
                               <li><a href="sub0101.html">My story is</a></li>
                               <li><a href="sub0102.html">마이스토리 이용안내</a></li>
                               <li><a href="sub0103_list.html">가까운센터 둘러보기</a></li>
                               <li><a href="sub0104.html">마이스토리 사람들</a></li>
                               <li><a href="sub0105_list.html">마이스토리 방송이야기</a></li>
                               <li><a href="sub0106.html">센터 운영 문의</a></li>
                           </ul>
                         </div>
                       </li>
                       <li class="li02"><a href="../sub02/sub0201_list.html">예약/커뮤니티</a>
                         <div class="subWrap sub02">
                           <ul>
                               <li><a href="../sub02/sub0201_list.html">온라인상담</a></li>
                               <li><a href="../sub02/sub0202_01.html">온라인 실시간 예약</a></li>
                               <li><a href="../sub02/sub0203_list.html">마이스토리 공지사항</a></li>
                               <li><a href="../sub02/sub0204_list.html">TODAY 심리컬럼</a></li>
                               <li><a href="../sub02/sub0205_list.html">책으로 만나는 심리산책</a></li>
                               <li><a href="../sub02/sub0206_list.html">자주하는 질문</a></li>
                           </ul>
                         </div>
                       </li>
                       <li class="li03"><a href="../sub03/sub0301.html">아이심리상담</a>
                         <div class="subWrap sub03">
                           <ul>
                               <li><a href="../sub03/sub0301.html">ADHD</a></li>
                               <li><a href="../sub03/sub0302.html">아동청소년우울</a></li>
                               <li><a href="../sub03/sub0303.html">문제행동</a></li>
                               <li><a href="../sub03/sub0304.html">불안</a></li>
                               <li><a href="../sub03/sub0305.html">스마트 폰 게임 중독</a></li>
                               <li><a href="../sub03/sub0306.html">학교 부적응, 따돌림</a></li>
                              <li><a href="../sub03/sub0307.html">학급부진, 학습장애</a></li>
                              <li><a href="../sub03/sub0308.html">틱장애</a></li>
                           </ul>
                         </div>
                       </li>
                       <li class="li04"><a href="../sub04/sub0401.html">성인심리상담</a>
                         <div class="subWrap sub04">
                           <ul>
                               <li><a href="../sub04/sub0401.html">우울증상</a></li>
                               <li><a href="../sub04/sub0402.html">불안증상</a></li>
                               <li><a href="../sub04/sub0403.html">성경문제행동</a></li>
                               <li><a href="../sub04/sub0404.html">중독</a></li>
                               <li><a href="../sub04/sub0405.html">정신분열</a></li>
                               <li><a href="../sub04/sub0406.html">부부상담</a></li>
                               <li><a href="../sub04/sub0407.html">가족상담</a></li>
                           </ul>
                         </div>
                       </li>
                       <li class="li05"><a href="../sub05/sub0501.html" class="last">심리치료프로그램</a>
                         <div class="subWrap sub05">
                           <ul>
                               <li><a href="../sub05/sub0501.html">개인상담치료</a></li>
                               <li><a href="../sub05/sub0502.html">미술심리치료</a></li>
                               <li><a href="../sub05/sub0503.html">놀이심리치료</a></li>
                               <li><a href="../sub05/sub0504.html">연극심리치료</a></li>
                               <li><a href="../sub05/sub0505.html">독서심리치료</a></li>
                               <li><a href="../sub05/sub0506.html">음악심리치료</a></li>
                               <li><a href="../sub05/sub0507.html">언어치료</a></li>
                               <li><a href="../sub05/sub0508.html">학습치료-진로상담</a></li>
                           </ul>
                         </div>
                       </li>
                       <li class="li06"><a href="../sub06/sub0601.html" class="last">심리검사프로그램</a>
                         <div class="subWrap sub06">
                           <ul>
                              <li><a href="../sub06/sub0601.html">종합심리평가</a></li>
                               <li><a href="../sub06/sub0602.html">종합정서평가</a></li>
                               <li><a href="../sub06/sub0603.html">영유아 발달검사</a></li>
                               <li><a href="../sub06/sub0604.html">학슴 및 진로 종합평가</a></li>
                               <li><a href="../sub06/sub0605.html">영유아 놀이평가</a></li>
                               <li><a href="../sub06/sub0606.html">언어평가</a></li>
                           </ul>
                         </div>
                       </li>
                       <li class="li07"><a href="../sub07/sub0701.html" class="last">기업상담프로그램</a>
                         <div class="subWrap sub07">
                           <ul>
                               <li><a href="../sub07/sub0701.html">마이스토리 기업상담</a></li>
                               <li><a href="../sub07/sub0702.html">기업상담진행절차</a></li>
                               <li><a href="../sub07/sub0703_01.html">실시간 기업상담예약</a></li>
                               <li><a href="../sub07/sub0704.html">기업상담사례모음</a></li>
                               <li><a href="../sub07/sub0705.html">심리 강의 교육</a></li>
                           </ul>
                         </div>
                       </li>
                     </ul>
                   </div>

               <!-- //gnb 끝 -->
               </div>
            </div>
         </div>
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
    <form:form commandName="MemberModel" action="joinSuccess.do" enctype="multipart/form-data"   method="post">
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
                   <input type="text" class="common-text-box box-left " id="m_sex" name="m_sex" maxlength="8">
                   
                 </td>
               </tr>
               <tr>
                  <th class=" "><label for="id"><span class="color">*</span>생년월일<!-- label--></label></th>
                  <td class="memberCols2">
        <input type="text" name="m_year" value="1993" required="" label="생년월일" style="background:#FFF" size="4" maxlength="4">년
        <input type="text" name="m_month" value="03" required="" label="생년월일" style="background:#FFF" size="2" maxlength="2">월
        <input type="text" name="m_date" value="20" required="" label="생년월일" style="background:#FFF" size="2" maxlength="2">일
    
    
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
                        <input type="text" id="m_email" name="m_email" class="common-text-box2 "/>
                   
                        <select class="common-text-box2" id="selectEmailAddr" name="selectEmailAddr">
                           <option value="etc">직접입력</option>
                              <option value="naver.com">naver.com</option>
                              <option value="nate.com">nate.com</option>
                              <option value="daum.net">daum.net</option>
                              <option value="gmail.com">gmail.com</option>
                              </select>
                           <input type="button" value="중복확인" class="double-chk" onclick="jQuery.emailCheck();">
                     </p>
                     <p class="mt-5"><span class="color">* </span> 이메일은 결제내역 받기, 비밀번호 찾기 등에 사용되므로 정확하게 입력해 주세요.</p>
                     <p class="errorpage errorpage2 mt-5" id="errUserMail" style="display:none;">이미 사용중인 이메일 입니다.</p>
                  </td>
               </tr>
               <tr>
               <th class="memberCols1" rowspan="2"><font color="FF6000">*</font> 주소</th>
               
                 <td>
                 <input type="text" name="m_zipcode" id="m_zipcode" size="5" class="line"  value="12451" label="우편번호">
                <!--  ( <input type="text" name="m_addr" id="m_addr" size="3" class="line" readonly="" value="477" required="" label="우편번호"> -
                 <input type="text" name="m_addr2" id="m_addr2" size="3" class="line" readonly="" value="815" required="" label="우편번호"> )
                 <a href="javascript:popup('../proc/popup_address.php',500,432)"> -->우편번호버튼</a>
                     </td>
            </tr>
            <tr>
           <td id="mmber1">
           <input type="text" name="m_add1" id="m_add1" value="경기도 가평군 "  size="30" required="" label="주소"/>
           <input type="text" name=m_add2 id="m_add2" value="경남아너스빌" size="30" onkeyup="SameAddressSub(this)" oninput="SameAddressSub(this)" label="세부주소"/><br>
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