<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<% String cp = request.getContextPath(); %>

<!DOCTYPE html PUBliC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
   <title>마이스토리</title>
   <meta http-equiv="Content-Type" content="text/html;charset=euc-kr" />
   <meta http-equiv="X-UA-Compatible" content="IE=edge" />
   <link rel="stylesheet" href="../../css/layout.css" />
   <link rel="stylesheet" href="../../css/default.css" />

   <!--JQUERY-->

   <!-- <script  type="text/javascript" src="../../js/jquery-1.9.1.js"></script>
   <script  type="text/javascript" src="../../js/common.js"></script>
   <script  type="text/javascript" src="../../js/jquery.flexslider.js"></script>
   <script type="text/javascript" src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
   <script src="../../js/jquery.rolling.js" type="text/javascript"></script>
   <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.2/jquery-ui.js"></script>
   <script type="text/javascript" src="../../js/tab.js"></script>
   <script type="text/javascript" src="../../js/gallery.js"></script> -->
   <script type="text/javascript">
       // <![CDATA[
       $(document).ready(function () {
         $('#tab').tabify();
       });
       // ]]>
       <script type="text/javascript">
      function check_agreement(){
         var frm = document.getElementById("frm");
      
         if(frm.elements["agreement[]"][0].checked == false){
            alert("이용약관의 동의하셔야 합니다.");
            frm.elements["agreement[]"][0].focus();
            return;
         }else if(frm.elements["agreement[]"][1].checked == false){
            alert("개인정보취급방침에 동의하셔야 합니다.");
            frm.elements["agreement[]"][1].focus();
            return;
         }
      
         frm.method = "post";
         frm.action = "joinForm.do";
         frm.submit();
      }
      
      function all_check(_this, chk_name){
         var chks = document.getElementsByName(chk_name);
      
         for(var i=0; i<chks.length; i++){
            chks[i].checked = _this.checked;
         }
      }
      
      function cancel(){
         alert("약관의 동의하셔야 회원가입이 가능합니다.");
         document.frmMain.action = "/common/main.do";
         document.frmMain.submit();
      }
      
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
                  <div class="sub-cont-inbox clear login-cont ">
         <div class="step-line2">
            <img src="../../images/sub/step-line2.gif">
         </div>
         <div class="join-check-inbox">
            <div class="join-check">
               <input type="checkbox" id="allChk" name="allChk" class="join-chk"> <label for="allChk">이용약관, 개인정보처리방침에 모두 동의합니다.</label>
            </div>
            <div class="clause-box">
               <!-- <p class="clause-title1">이용약관</p>
               <p class="clause-sub-title">이용약관을 반드시 읽어보신 후 동의해주시면 회원가입을 학실 수 있습니다.</p>
               <div class="clause-txt-box">
                  <span>[제1조 (목적)] </span><br>

이 약관은 (주)트렌드모니터(이하 회사라 함)가 제공하는 인터넷 서비스(이하 서비스라 함)의 이용조건 및 절차에 관한
사항을 규정함을 목적으로 합니다.<br>

<span>[제2조 (용어의 정의)]</span><br>

1. 회원: 서비스를 제공받기 위하여 이 약관을 통하여 회사와 이용계약을 체결한 자<br>

2. 아이디(ID): 회원 식별과 회원의 서비스 이용을 위하여 회원이 선정하고 회사가 부여하는 문자와 숫자의 조합<br>

3. 이용계약: 서비스를 제공받기 위하여 이 약관으로 회사와 회원 간에 체결하는 계약<br>

4. 비밀번호: 회원의 비밀 보호를 위해 회원 자신이 설정한 문자와 숫자의 조합<br>

5. 이 약관에서 사용하는 용어의 정의는 전항에서 정한 것을 제외하고는 거래관행 및 관계법령에 따릅니다<br>

<span>[제3조 (약관의 효력과 변경)]</span><br>

1. 이 약관의 내용은 서비스 내에 게시하여 공시함으로써 효력을 발생합니다.<br>

2. 회사는 합리적인 사유가 발생한 경우 약관의규제에관한법률, 정보통신망이용촉진및정보보호등에관한법률 등 관계

법령을 위배하지 않는 범위에서 이 약관을 개정할 수 있으며, 회사가 약관을 개정할 경우에는 적용일자 및 개정사유를

최소 일주일 전에 해당 사이트에 공지합니다.<br>

3. 회원은 변경된 약관의 내용에 동의하지 않을 경우 서비스 이용을 중단하고 이용계약을 해지할 수 있습니다.

약관변경의 효력발생 이후 계속적인 서비스 이용은 회원이 약관변경에 동의한 것으로 간주됩니다.<br>

<span>[제4조 (약관 외 준칙)]</span><br>

이 약관에 명시되지 않은 사항은 전기통신기본법, 전기통신사업법 및 기타 관련법령의 규정에 의합니다.<br>

제2장 서비스 이용계약<br>

<span>[제5조 (서비스의 구분)]</span><br>

1. 회사가 회원에게 제공하는 서비스는 유료서비스 및 무료서비스로 구분되어 제공될 수 있습니다.<br>

2. 유료 서비스를 이용하기 위하여는 추가의 정보(결제방법 등)를 입력하고, 전송 확인 버튼을 누르는 등 별도의

이용의사를 표시하여야 합니다. 기타 하위 서비스 등의 종류와 이용방법 등은 회사가 이 약관 또는 공지, 이용안내에서
별도로 정하는 바에 따릅니다.<br>

<span>[제6조 서비스 이용방법]</span><br>

1. 서비스 이용 신청은 회사가 정한 절차에 따라 이루어집니다. 약관에 대한 동의는 서비스 이용신청 시 ‘동의함’을

선택함으로써 의사표시를 합니다.<br>

2. 고객은 구매하고자 하는 상품을 검색해서 결제를 완료한 후 상품의 종류에 따라 다운로드 등의 방법으로 서비스를

이용할 수 있습니다.<br>

3. 고객은 구매한 상품의 사용목적, 사용방법, 사용기간 등 사용조건을 숙지하고 정해진 조건에 맞게 사용하여야 합니다.<br>

<span>[제7조 교환 또는 환불]</span><br>

1. 고객이 콘텐츠를 다운로드 받은 후에는 교환 또는 환불이 안 됩니다.<br>

2. 다운로드 받은 콘텐츠 자체에 문제가 있는 경우 양질의 상태로 복원된 콘텐츠와 교환할 수 있습니다.

단, 회사의 사정으로 교환이 불가능한 경우 환불할 수 있습니다.<br>

3. 고객의 부주의, 실수 등에 의한 경우 교환 또는 환불이 불가능합니다.<br>

<span>[제8조 (이용신청의 승낙)]</span><br>

1. 회사는 이용신청이 다음 각호의1에 해당하는 경우 승낙을 하지 않을 수 있습니다.<br>

① 타인 정보의 신청<br>

② 이용신청 시 기재사항을 허위로 하여 신청한 경우<br>

③ 이용신청자가 회사의 채무자로서 채무를 완제하지 않고 있는 경우<br>

④ 기타 이용신청자의 귀책사유로 이용승낙이 곤란한 경우<br>

<span>[제9조 (회원 아이디 부여)]</span><br>

1. 회사는 이용신청자에게 이용신청 순서에 따라 회원 아이디를 부여하는 것을 원칙으로 합니다.<br>

2. 다음 각호의 1의 경우에는 회사는 이용신청자 또는 회원에게, 신청하는 아이디나 부여된 회원 아이디의 변경을 요구할

수 있습니다.<br>

① 기존의 회원 아이디와 동일한 아이디로 이용 신청하는 경우<br>

② 회원 아이디가 전화번호 또는 주민등록번호 등으로 등록되어 사생활 침해의 우려가 있는 경우<br>

③ 타인에게 혐오감을 주거나 미풍양속을 해치는 경우<br>

④ 기타 합리적인 사유가 있는 경우<br>

제3장 계약당사자의 의무<br>

<span>[제10조 (회사의 의무)]</span><br>

1. 회사는 이 약관에서 정한 바에 따라 계속적, 안정적으로 서비스를 제공할 의무가 있습니다.<br>

2. 회사는 회원의 개인 신상 정보를 본인의 승낙 없이 타인에게 누설, 배포하지 않으며, 이를 보호하기 위해 노력합니다.

회원의 개인정보보호에 관한 기타 사항은 정보통신망법 및 회사가 별도로 정한 "개인정보보호방침"에 따릅니다.<br>

3. 회사는 회원으로부터 제기되는 의견이나 불만이 정당하다고 인정할 경우에는 즉시 처리하여야 합니다. 다만, 즉시

처리가 곤란한 경우에는 회원에게 그 사유와 처리일정을 통보하여야 합니다.<br>

4. 회사는 천재지변 등 예측하지 못한 일이 발생하거나 시스템의 장애가 발생하여 서비스가 중단될 경우 이에 대한

손해에 대해서는 책임을 지지 않습니다. 다만 콘텐츠의 복구나 정상적인 서비스 지원이 되도록 최선을 다할 의무가

있습니다.<br>

<span>[제11조 (회원의 의무)]</span><br>

1. 회원은 이용신청 시 기재한 사항이 변경된 경우에는 이를 온라인 상으로 수정하여야 합니다.<br>

2. 회원은 공공의 안녕질서 또는 미풍양속을 해하는 다음 각호의 통신을 해서는 안됩니다.<br>

① 범죄행위를 목적으로 하거나 범죄행위를 교사하는 내용<br>

② 반국가적 행위와 수행을 목적으로 하는 내용<br>

③ 선량한 풍속, 기타 사회질서를 해하는 내용<br>

3. 회원은 아이디 및 비밀번호 관리에 상당한 주의를 기울여야 합니다. 회사의 동의 없이 제3자에게 이용자번호를

제공하여 서비스를 이용하게 할 수 없습니다. 회원 아이디 및 비밀번호에 관한 모든 관리책임은 회원에게 있으며,

아이디와 비밀번호의 관리소홀, 부정사용에 의하여 발생하는 모든 결과에 대한 책임은 회원에게 있습니다. 회원은 자신의

아이디의 부정 사용이 발생한 경우 반드시 회사에 그 사실을 통보하여야 합니다.<br>

4. 회원은 회사의 사전 서면 동의 없이 서비스를 이용하여 영리적인 목적의 영업행위를 할 수 없습니다.<br>

5. 회원은 이 약관 및 관계법령, 관련 국제법을 준수하여야 하며, 기타 회사의 업무수행에 지장을 초래하는 행위를

하여서는 안됩니다.<br>

6. 이용고객은 이용계약에 따라 요금 등을 지정된 기일까지 납입하여야 합니다.<br>

제4장 서비스 이용<br>

<span>[제12조 (정보의 제공)]</span><br>

회사는 회원에게 회원의 서비스 이용 및 회원의 각종 행사 또는 정보 서비스에 대해서 e메일이나 서신우편, SMS 등

유무선 통신 수단 등의 방법으로 회원에게 제공할 수 있습니다. 또한, 회원 등록시 회사 및 회사의 비즈니스 파트너 및

제휴사들로부터 제공되는 제안이나 정보를 받아보시겠다고 표시하셨다면, e메일이나 서신우편, SMS 등 유무선 통신

수단으로 회원에게 보내드릴 것입니다. 만약 이러한 종류의 메일 또는 정보의 수신을 원치 않는 경우 가입 신청 메뉴와

회원정보 수정 메뉴에서 메일 또는 정보를 받고 싶지 않다는 내용으로 자신의 정보를 수정 할 수 있습니다.<br>

<span>[제13조 (서비스 이용시간)]</span><br>

1. 서비스의 이용은 회사의 업무상 또는 기술상 특별한 지장이 없는 한 연중무휴 1일24시간을 원칙으로 합니다. 다만

정기 점검 등의 필요로 회사가 정한 날이나 시간은 그러하지 않습니다.<br>

2. 회사는 서비스 별 이용가능 시간을 별도로 정할 수 있습니다. 이 경우 그 내용을 사전에 공지합니다.<br>

<span>[제14조 (자료의 보관 등)]</span><br>

1. 회사의 회원의 제공 정보, 자료 등의 용량 및 게재기간을 제한할 수 있습니다. 자세한 사항은 회사가 공지,

이용안내에서 정한 바에 따릅니다.<br>

2. 회사는 계약이 해지된 경우에 회원의 제공정보, 자료 등을 삭제할 수 있습니다.<br>

<span>[제15조 (게시물 등의 관리)]</span><br>

회사는 건전한 통신문화정착과 효율적인 서비스 운영을 위하여 다음 각호의1에 해당하는 게시물, 자료를 삭제, 이동,

등록 거부할 수 있습니다.<br>

1. 타인의 권리를 침해하는 행위와 관련되거나, 그 행위를 구성하는 게시물, 자료로서 이해당사자의 삭제 등 요청이

있거나 회사가 피소, 고발될 수 있는 근거를 제공하는 게시물, 자료<br>

2. 서비스에 위해를 가할 소지가 있는 바이러스 등이 포함된 게시물, 자료<br>

3. 게재기한을 초과한 게시물, 자료<br>

4. 다른 회원의 서비스 이용에 지장을 초래하는 게시물, 자료료<br>

5. 전기통신 관계법령 및 형사 관계법령에 따른 국가기관 등의 삭제 등 요구가 있는 게시물, 자료<br>

<span>[제16조 (게시물에 대한 권리 및 책임)]</span><br>

1. 본 사이트의 모든 게시물에 대한 저작권은 회사에 있습니다. 회사의 허가 없이 타인에 의해 게시물이 다른 사이트에서

사용 또는 인용되는 것은 금지 됩니다.<br>

2. 회원이 게재한 게시물, 자료에 대한 저작권은 이를 직접 작성한 회원에게 있습니다. 다만 회원은 회사에 무료로 이용할

수 있는 권리를 허락한 것으로 봅니다.<br>

3. 2007년 7월 27일부터 '정보통신망 이용촉진 및 정보보호등에 대한 법률’ 시행으로 게시판 댓글/글쓰기의 경우, 제한적

본인확인제에 따른 본인확인 절차를 거치지 않은 이용자의 경우, 게시물 작성에 제한을 받습니다.

4. 전항의 의사 표시는 회사가 공지, 서비스 이용안내에서 정한 바에 따라 철회 할 수 있습니다.<br>

<span>[제17조 (광고에 대한 동의)]</span><br>

회원은 회사가 광고, 정보 등을 회원에게 전자우편 등의 방법으로 송신하는 것에 대하여 이 약관을 통하여 동의합니다.<br>

제5장 이용제한 및 계약해지<br>

<span>[제18조 (서비스 제공의 중지)]</span><br>

1. 회사는 다음 각 호에 해당하는 경우 서비스 제공을 중지할 수 있습니다.<br>

① 서비스용 설비의 보수 등 공사로 인한 부득이한 경우<br>

② 전기통신사업법에 규정된 기간통신사업자가 전기통신 서비스를 중지했을 경우<br>

③ 기타 불가항력적 사유가 있는 경우<br>

2. 회사는 국가비상사태, 정전, 서비스 설비의 장애 또는 서비스 이용의 폭주 등으로 정상적인 서비스 이용에 지장이 있는

때에는 서비스의 전부 또는 일부를 제한하거나 정지할 수 있습니다.<br>

<span>[제19조 (서비스 이용제한)]</span><br>

1. 회사는 회원이 다음 각호의 1에 해당하는 경우에는 사전통지 없이 이용계약을 해지하거나 회원의 서비스 이용을 일부

또는 전부 제한할 수 있습니다.<br>

① 제11조 각항의 규정에 따른 의무를 이행하지 않는 경우<br>

② 타인정보 신청 또는 허위의 신청, 중복가입인 것이 확인된 경우<br>

③ 다량의 정보를 전송하여 서비스의 안정적 운영을 방해하는 경우<br>

④ 수신자의 의사에 반하는 광고성 정보, 전자우편을 지속적으로 전송하는 경우<br>

⑤ 정보통신설비의 오작동이나 정보 등의 파괴를 유발하는 컴퓨터 바이러스 등을 유포하는 경우<br>

⑥ 타인의 지적재산권을 침해하는 경우<br>

⑦ 서비스를 이용하여 타인의 명예를 훼손하는 행위를 하는 경우<br>

⑧ 정보통신윤리위원회로부터의 이용제한 요구대상인 경우<br>

⑨ 선거관리위원회의 유권해석상의 불법선거운동을 하는 경우<br>

⑩ 다른 회원의 회원 아이디를 부정하게 사용하는 경우<br>

⑪ 서비스를 이용하여 얻은 정보를 회사의 동의 없이 상업적으로 이용하는 경우<br>

⑫ 전기통신관련법령 또는 이 약관의 규정을 위반하는 행위를 하는 경우<br>

⑬ 회원이 자신의 홈페이지와 게시판에 음란물을 게재하거나 음란사이트를 링크하는 경우<br>

2. 전항의 규정에 의하여 회원의 이용을 제한하는 경우의 제한의 종류 및 기간 등 구체적인 기준은 회사의 공지,

이용안내에서 별도로 정하는 바에 의합니다.<br>

<span>[제20조 (이용제한 및 해제절차)]</span><br>

1. 회사는 사전 통지 없이 바로 전조의 이용제한 조치를 할 수 있습니다.<br>

2. 회사로부터 이용제한 조치를 받은 회원은 회사에 이의를 제기할 수 있으며, 회사는 이의제기일로부터 일주일 이내에

그 사유를 회원에게 통지하여야 합니다.<br>

3. 회사는 이용제한 기간 중에 그 사유가 해소된 것이 확인된 경우에는 제한조치를 즉시 해제합니다.<br>

제6장 계약 해지 및 이용요금<br>

<span>[제21조 (계약해지)]</span><br>

1. 회원이 이용계약을 해지하고자 하는 때에는 본인이 직접 서비스를 통하거나 서면 또는 전화 등의 방법으로 회사에

통지하여야 합니다.<br>

2. 회사는 제19조의 제1항 각호의 사유가 있을 경우 이용계약을 해지할 수 있습니다.<br>

제7장 손해배상 등<br>

<span>[제22조 (손해배상)]</span><br>

1. 무료서비스의 이용과 관련하여 회사는 고의가 없는 한 회원에게 발생한 손해를 배상하지 않습니다.<br>

2. 회원이 이 약관의 규정을 위반하여 회사 및 제3자에게 손해를 입히거나, 기타 회원의 책임 있는 사유에 의하여 회사 및

제3자에게 손해를 입힌 경우에는 회원은 그 손해를 배상하여야 합니다.<br>

<span>[제23조 (면책조항)]</span><br>

1. 회사는 타인이 제공한 프로그램, 정보 등에 대하여 어떠한 관리행위도 할 의무가 없으며, 이로 인한 회원의 손해에

대하여 책임이 없습니다.<br>

2. 회사는 회원이 서비스 제공으로부터 기대되는 이익을 얻지 못하였거나, 서비스 자료의 취사 선택 또는 이용으로

발생하는 손해에 대하여 책임이 없습니다.<br>

3. 회사는 회원 상호간 또는 회원과 제3자 간에 서비스와 관련하여 발생한 분쟁에 대하여 개입 할 의무도 이로 인한

손해를 배상할 책임도 없습니다.<br>

4. 서비스를 통하여 제공되는 정보는 있는 그대로 제공되며, 회사는 정보 내용의 정확성에 대하여 어떠한 보장도 하지

않으며, 정보의 사용은 전적으로 회원의 책임과 권한으로 수행됩니다.<br>

<span>[24조 (커뮤니티 및 기타 사이트 관련 규정)]</span><br>

커뮤니티 상세 서비스 범주와 관련되어 약관을 다음과 같이 정의합니다.<br>

1. 회사의 회원 자격을 획득한 회원은 회사의 커뮤니티 회원으로 자동 등록됩니다.<br>

2. 회사의 커뮤니티 중 일부 커뮤니티의 서비스를 받기 위해서 회원은 별도의 상세 정보를 기입해야 할 수도 있습니다.<br>

3. 커뮤니티 서비스 이용에 따른 회원의 의무조항은 회사의 회원약관과 관계법률규정 및 관행에 따릅니다.<br>

4. 회사는 다수 회원의 원활한 서비스 이용을 위해 사전통보 없이 게시물 데이터 분리, 게시판 이동 등의 기술적 조치를

취할 수 있습니다..<br>

<span>[제25조 (관할법원)]</span><br>

요금 등 서비스 이용으로 발생한 분쟁에 대해 소송이 제기될 경우 회사의 본사 소재지를 관할하는 법원을 관할법원으로<br>

합니다.<br>

<span>[부칙]</span><br>

(시행일) 이 약관은 2015년 11월 12일부터 시행합니다.<br>
               </div>
               <ul class="clause-radio">
                  <li><input type="radio" class="radioCheck" title="" value="Y" id="agree1_ok" name="agree1"><label for="agree1_ok">동의함</label></li>
                  <li><input type="radio" class="radioCheck" title="" value="N" id="agree1_no" name="agree1"><label for="agree1_no">동의하지 않음</label></li>
               </ul>
            </div>
            <div class="clause-box">
               <p class="clause-title2">개인정보처리방침</p>
               <p class="clause-sub-title">개인정보처리방침을 반드시 읽어 보신 후 동의해주시면 회원가입을 하실 수 있습니다.</p>
               <p class="title2-sub">수집하는 개인정보 항목</p>
               <div class="clause-txt-box">
회사는 회원가입, 상담, 서비스 신청 등을 위해 아래와 같은 개인정보를 수집하고 있으며, 회사는 이용자가 회사의 개인정보처리방침 또는 이용약관의 내용에 대해 ‘동의함’ 또는 ‘동의 안함’을 선택할 수 있는 절차를 마련하여, ‘동의함’을 선택하면 개인정보의 수집에 대해 동의한 것으로 봅니다.
                              <br>
ο 수집항목<br>
&lt;일반/개인 회원가입 시&gt;<br>
필수항목 : 아이디, 비밀번호, 이메일 <br>
&lt;기업/단체 회원가입 시&gt;<br>
필수항목 : 회사명, 사업자등록번호, 아이디, 비밀번호, 회사명, 담당자명, 담당자 이메일, 담당자 연락처<br>
ο 서비스 이용과정에서 아래와 같은 정보들이 자동으로 생성되어 수집될 수 있습니다.<br>
- IP ADRESS, 쿠키, 방문 일시, 서비스 이용 기록, 불량 이용 기록<br>
ο 개인정보 수집방법 : 홈페이지 회원가입
                           </div>

               <ul class="clause-radio">
                  <li><input type="radio" class="radioCheck" title="" value="Y" id="agree2_ok" name="agree2"><label for="agree2_ok">동의함</label></li>
                  <li><input type="radio" class="radioCheck" title="" value="N" id="agree2_no" name="agree2"><label for="agree2_no">동의하지 않음</label></li>
               </ul>
            </div>
            <div class="clause-box">
               <p class="title2-sub">개인정보의 수집 및 이용목적</p>
               <div class="clause-txt-box">
                              회사는 수집한 개인정보를 다음의 목적을 위해 활용합니다.<br>
ο 서비스 제공에 관한 계약 이행 및 서비스 제공에 따른 요금정산 <br>
콘텐츠 제공 , 구매 및 요금 결제 , 물품배송 또는 청구지 등 발송 , 금융거래 본인 인증 및 금융 서비스 , 요금추심<br>
ο 회원 관리 <br>
회원제 서비스 이용에 따른 본인확인 , 불량회원의 부정 이용 방지와 비인가 사용 방지 , 가입 의사 확인 , 연령확인, 불만처리 등 민원처리 <br>
ο 마케팅 및 광고에 활용 <br>
접속 빈도 파악 또는 회원의 서비스 이용에 대한 통계
                           </div>
               <ul class="clause-radio">
                  <li><input type="radio" class="radioCheck" title="" value="Y" id="agree3_ok" name="agree3"><label for="agree3_ok">동의함</label></li>
                  <li><input type="radio" class="radioCheck" title="" value="N" id="agree3_no" name="agree3"><label for="agree3_no">동의하지 않음</label></li>
               </ul>
            </div>
            <div class="clause-box">
               <p class="title2-sub">개인정보의 보유 및 이용기간</p>
               <div class="clause-txt-box">

                              원칙적으로, 개인정보 수집 및 이용목적이 달성된 후에는 해당 정보를 지체 없이 파기합니다. 단, 상법, 전자상거래 등에서의 소비자보호에 관한 법률 등 관계법령의 규정에 의하여 보존할 필요가 있는 경우 회사는 관계법령에서 정한 일정한 기간 동안 회원정보를 보관합니다. 이 경우 회사는 보관하는 정보를 그 보관의 목적으로만 이용하며 보존기간은 아래와 같습니다.<br>
- 계약 또는 청약철회 등에 관한 기록 : 5년 (전자상거래등에서의 소비자보호에 관한 법률) <br>
- 대금결제 및 재화 등의 공급에 관한 기록 : 5년 (전자상거래등에서의 소비자보호에 관한 법률) <br>
- 소비자의 불만 또는 분쟁처리에 관한 기록 : 3년 (전자상거래등에서의 소비자보호에 관한 법률) <br>
- 신용정보의 수집/처리 및 이용 등에 관한 기록 : 3년 (신용정보의 이용 및 보호에 관한 법률) <br>
- 본인확인에 관한 기록 : 6개월 (정보통신망 이용촉진 및 정보보호 등에 관한 법률) <br>
- 웹사이트 방문 기록 : 3개월 (통신비밀보호법)
                           </div>
 -->
               <ul class="clause-radio">
                  <li><input type="radio" class="radioCheck" title="" value="Y" id="agree4_ok" name="agree4"><label for="agree4_ok">동의함</label></li>
                  <li><input type="radio" class="radioCheck" title="" value="N" id="agree4_no" name="agree4"><label for="agree4_no">동의하지 않음</label></li>
               </ul>
            </div>
            <div class="join-check-center">
               <input type="checkbox" id="allChk1" name="allChk1" class="join-chk"> <label for="allChk1">이용약관, 개인정보처리방침에 모두 동의합니다.</label>
            </div>
            <div class="join-conf-btn">
               <ul>
                  <li><input type="button" class="submit" title="" value="확인" name="" onclick="check_agreement"></li>
                  <li><input type="button" class="cancel" title="" value="취소" name="" onclick="jQuery.cancel();"></li>
               </ul>
            </div>
         </div>
         
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
