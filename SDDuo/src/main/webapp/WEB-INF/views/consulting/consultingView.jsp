<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<script type="text/javascript">
	function deletOk() {
		if(confirm("삭제하시겠습니까?")){
			window.location.href='consultingDeletePro.do?c_number=${consultingmodel.c_number}';
		}else{
			alert("취소되었습니다.");
		}
	}
</script>
			<div class="sub-content">
				 <div class="bg02area">
					<p class="tit">예약/커뮤니티</p>
				</div> 
				<div class="sub-content-inbox">
					<ul class="sub-menu2">
						<li class="act"><a href="sub0201_list.html">온라인상담</a></li>
						<li><a href="sub0202_01.html">온라인 실시간예약</a></li>
						<li><a href="sub0203_list.html">마이스토리 공지사항</a></li>
						<li><a href=" sub0204_list.html">마이스토리 심리 컬럼</a></li>
						<li><a href="sub0205_list.html">책으로 만나는 심리이야기</a></li>
						<li class="last"><a href="sub0206_list.html">자주하는 질문</a></li>
					</ul>
					<h3>온라인 상담</h3>
					<p class="sub02_txt">
						마이스토리에 남겨주신 소중한 이야기는 내담자 보호 규정에 따라 철저히 비밀 보장 되며 병원과 달리 절대 기록이 남지 않습니다.<br />
						<span>답변은 질문 내용에 따라 분류되어 해당 분야 전문선생님에 의해 성실이 이루어집니다. <br />
						답변 순서는 각 센터별 전문가 선생님들의 여건에 따라 달라질 수 있음을 양해해 주시기 바랍니다.</span><br />
					</p>
					<div class="resev-box">
						<p class="listnum">총 <span>88</span>건 1/9</p>
						<p class="reserv-btn">실시간예약 바로가기</p>
					</div>
					<table width="100%" class="view-board01">
						<colgroup>
							<col width="" />
						</colgroup>
						<thead>
						<tr>
							<th scope="col">
								<div class="tit"><span class="mark">제목 : </span>${consultingmodel.c_title }</div>
							</th>
							<th></th>
						</tr>
						</thead>
						<tbody>
						<tr>
							<td>
								<div class="board-infor">
									<strong>작성자</strong>
									<span>${ consultingmodel.m_id}</span>
									<span class="line"><img src="../../images/sub/line.jpg" class="vertical-m"  alt="" /></span>
									<strong>작성일</strong>
									<span><fmt:formatDate value="${consultingmodel.c_date}" pattern="yyyy.MM.dd"/></span>
							
								</div>
							</td>
						</tr>
						<tr><th>상담 내용</th></tr>
						<tr>
							<td class="dmc_content content">
								
${consultingmodel.c_content }
							</td>
						</tr>
						<!-- <tr>
							<td class="recontent">
								<p class="retit"><img src="../../images/sub/redat.gif">[답변 입니다!!]</p>
								<div class="recont">
									
								</div>
							</td>
						</tr> -->
					</tbody>
				</table>
					<div class="viewbtn">
				<%-- 	<c:if test="${session_admin!=1}"> --%>
					<c:url var="replyURL" value="consultingReply.do">
								<c:param name="c_ref" value="${consultingmodel.c_ref }"/>
								<c:param name="c_number" value="${consultingmodel.c_number }"/>
							</c:url>
					<c:if test="${session_admin==1 }"> 
							<a href="${replyURL}" class="storywrite">관리자 답변달기</a> 
					</c:if> 
 			<%-- 	</c:if> --%>
						<p class="btn01 list"><input type="button" value="목록" onclick="location.href='<%=request.getContextPath() %>/consulting/consultingList.do'"></p>
						<c:if test="${isReply.equals('reply') }">
						<div class="area">
							<p class="btn01"><input type="button" value="수정" onclick="location.href='<%=request.getContextPath() %>/consulting/consultingModify.do?c_number=${consultingmodel.c_number }'"></p>
						<%-- 	<p class="btn02"><input type="button" value="삭제" onclick="location.href='<%=request.getContextPath() %>/consulting/consultingDeletePro.do?c_number=${consultingmodel.c_number }'"></p> --%>
							<p class="btn02"><input type="button" value="삭제" onclick="javascript:deletOk();"></p>
						</div>
						</c:if>
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
