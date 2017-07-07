<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="EUC-KR"%>
	<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
			마이스토리에 남겨주신 소중한 이야기는 내담자 보호 규정에 따라 철저히 비밀 보장 되며 병원과 달리 절대 기록이 남지
			않습니다.<br /> <span>답변은 질문 내용에 따라 분류되어 해당 분야 전문선생님에 의해 성실이
				이루어집니다. <br /> 답변 순서는 각 센터별 전문가 선생님들의 여건에 따라 달라질 수 있음을 양해해 주시기
				바랍니다.
			</span><br />
		</p>
		<p class="reserv-btn">실시간예약 바로가기</p>

		<c:choose>
			<c:when test="${state.equals('modify')}">
				<caption>
					<font color="red">상담문의 글 수정</font></b>
				</caption>
				<spring:hasBindErrors name="consulting" />
				<form:errors path="consulting" /> 
				<form:form commandName="consulting" action="consultingModifyPro.do">
					<table class="write-board01">
						<tbody>
							<tr>
								<th>이야기 제목</th>
								<td colspan="3"><input type="hidden" name="c_ref"
									value="${consultingmodel.c_ref }" /> 
									<input type="hidden" name="c_number" value="${consultingmodel.c_number }"> 
									<input type="text" class="writetxt01" name="c_title" value="${consultingModmodel.c_title }" size="20"> 
									<form:errors path="c_title" /></td>
							</tr>
							<%-- <c:if test="${session_member_id != 1 }">
							<tr>
								<th>비밀설정</th>
								<td>
									<input type="text" class="writetxt03" name="c_pass">
									비밀번호4자리 입력
								</td>
							</tr>
						 </c:if>  --%>
							<tr>


								<th>문의내용</th>
								<td colspan="3"><textarea class="writetxt04"
										name="c_content">${consultingModmodel.c_content }</textarea> 
										<form:errors path="c_content" /></td>
							</tr>
						</tbody>
					</table>

					<div class="btn-area">
						<input type="submit" value="확인" class="submit"> <input
							type="button" value="취소" class="cancel">
					</div>
				</form:form>
			</c:when>

			<c:otherwise>
				<caption>
					<font color="red">상담문의 글쓰기</font></b>
				</caption>
			<spring:hasBindErrors name="consulting" />
			<form:errors path="consulting" /> 
				<form:form commandName="consulting" action="consultingPro.do">
					<table class="write-board01">
						<tbody>
							<tr>
								<th>이야기 제목</th>
								<td colspan="3"><input type="hidden" name="c_ref"
									value="${consultingmodel.c_ref }" /> 
									<input type="hidden" name="c_number" value="${consultingmodel.c_number }"> 
									<c:if test="${state.equals('reply')}">
										<input type="text" class="writetxt01" name="c_title" size="20"
											value="[답변]${consultingmodel.c_title }">
										<form:errors path="c_title" />
									</c:if> 
									<c:if test="${state.equals('noting')}">
										<input type="text" class="writetxt01" name="c_title" size="20">
										<form:errors path="c_title" />
										<tr>
											<th>비밀설정</th>
											<td><input type="password" class="writetxt03"
												name="c_pass"> (비밀번호4자리 입력) 
												<form:errors path="c_pass" /></td>
										</tr>
									</c:if></td>
							</tr>

							<tr>
								<th>문의내용</th>
								<td colspan="3"><textarea class="writetxt04"
										name="c_content" cols="30" rows="10" width="100%"></textarea>
									<form:errors path="c_content" />
								<td>
							</tr>
						</tbody>
					</table>

					<div class="btn-area">
						<input type="submit" value="확인" class="submit"> <input
							type="button" value="취소" class="cancel">
					</div>
				</form:form>
			</c:otherwise>
		</c:choose>
	</div>
</div>

</body>
</html>