<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<body>
	
	<div class="content">
				
				<div class="content-inbox">
					
					<div class="content02" style="margin-top: 60px; ">
						<div class="box1">
							<div class="container2">
							    <div class="flexslider2">
								   <ul class="slides ">
									  <li><img src="./resources/images/main/banner01.jpg" onclick="window.open('sub/sub06/sub0601.html')" alt="베너이미지"></li>
									  <li><img src="./resources/images/main/banner02.jpg" onclick="window.open('sub/sub03/sub0303.html')" alt="베너이미지"></li>
									  <li ><img src="./resources/images/main/banner03.jpg" onclick="window.open('sub/sub05/sub0501.html')" alt="베너이미지"></li>
								   </ul>
							    </div>
							</div>
						</div>
						<div class="box2">
							<ul>
								<li class="baner01">
									<p class="txt01"><a href="sub/sub02/sub0205_list.html"><img src="./resources/images/main/txt01.png" alt="책으로 만나는 심리 산책"></a></p>
									<p class="txt02">[나는 단순하게 살기로 했다]</p>
									<p class="txt03">단순하게 산다는 것이 무엇인지 <br/>보여주는 좋은 경험을 위한 지침서</p>
								</li>
								<li class="baner02" onclick="window.open('sub/sub01/sub0102.html')" >
									<p class="txt01"><img src="./resources/images/main/txt02.png" alt="상담절차안내"></p>
									<p class="txt02"><img src="./resources/images/main/txt03.png" alt="마이스토리는 상담을 원하시는 경우예약 규정과 상담규정을 준수하여야 합니다."></p>
								</li>
								<li class="baner03" onclick="window.open('sub/sub02/sub0204_list.html')">
									<p class="txt01"><img src="./resources/images/main/txt05.gif" alt="TODAY 심리칼럽"></p>
									<p class="txt02">학교폭력이라는 커다란 불길은 좀처럼 <br/> 사그러들 기미를 보이지 않는다. <br/> SNS(Social Network Service)에는 <br/> 전국 각지에서 학교폭력...</p>
									<p class="txt03">칼럼리스트 | 김성철 심리상담사</p>
								</li>
								<li class="baner04">
									<p class="txt01"><img src="./resources/images/main/txt04.png" alt="온라인 상담"></p>
									<table>
										<caption>온라인 상담 테이블</caption>
										<colgroup>
											<col width="" class="tb01">
											<col width="" class="tb02">
										</colgroup>
										<tbody>
											<c:choose>
												<c:when test="${fn:length(consultinglist) le 0}">
													<tr>
														<td>등록된 게시물이 없습니다.</td>
													<tr>
												</c:when>
												<c:otherwise>
													<c:forEach var="list" items="${consultinglist}" begin="0" end="5">
														<tr>
															<td>
																<p class="txt">
																	${list.c_title}
																</p>
															</td>
														</tr>
													</c:forEach>
												</c:otherwise>
											</c:choose>
										</tbody>
									</table>
									<div class="btnArea">
										<input type="button" value="더보기" class="btn01" onclick="location.href='consulting/consultingList.do'">
										<input type="button" value="글쓰기" class="btn02" onclick="location.href='consulting/consultingForm.do'">
									</div>
								</li>
							</ul>
						</div>
					</div>
					<div class="content03">
						<div class="box01">
							<ul id="tab" class="tmenu clear">
								<li class="active"><a href="#tb01-tab">공지사항</a></li>
							</ul>
							<div id="tb01-tab" class="tab-area tab-arrow01">
								<table>
									<caption>온라인 상담 테이블</caption>
									<colgroup>
										<col width="" class="tb01">
										<col width="" class="tb02">
									</colgroup>
									<tbody>
										<c:choose>
											<c:when  test="${fn:length(adminNoticeList) le 0}">
												<tr>
													<td>공지사항이 없습니다.</td>
												</tr>
											</c:when>
											<c:otherwise>
												<c:forEach var="list"  items="${adminNoticeList}" begin="0" end="5">
													<c:url var="viewURL" value="adminNoticeView.do">
														<c:param name="n_number" value="${list.n_number}"/>
													</c:url>
													<tr>
														<td><p class="txt"><a href="${viewURL}">${list.n_title}</a></p></td>
														<td class="date" ><fmt:formatDate value="${list.n_date }" pattern="yyyy-MM-dd" /></td>
													</tr>
													<tr>
														<td colspan="2" height="12px"><td>
													</tr>
												</c:forEach>
											</c:otherwise>
										</c:choose>
									</tbody>
								</table>
							</div>
							
						</div>
						<div class="box02">
							<div class="container3">
							    <div class="flexslider3">
								   <ul class="slides" id="slides">
									  <li><a href="sub/sub01/sub010305_view.html"><img src="./resources/images/main/slide01.gif" alt="베너이미지"></a></li>
									  <li><a href="sub/sub01/sub010305_view.html"><img src="./resources/images/main/slide01.gif" alt="베너이미지"></a></li>
									  <li><a href="sub/sub01/sub010305_view.html"><img src="./resources/images/main/slide01.gif" alt="베너이미지"></a></li>
									  <li><a href="sub/sub01/sub010305_view.html"><img src="./resources/images/main/slide01.gif" alt="베너이미지"></a></li>
								   </u>
							    </div>
							</div>
						</div>
						
						
					</div>
					<div class="content04">
						<div class="box01">
							<h5><img src="./resources/images/main/txt05.png" alt="마이스토리 지점 안내"></h5>
							<div class="allarea">
								<p class="txt01">마이스토리의 전국지역센터는 상담윤리규정을 준수합니다</p>
								<p class="allview" onclick="window.open('sub/sub01/sub0103_list.html')">전체보기</p>
							</div>
							<div class="gallery_rolling">
							  <span class="arrow_prev"><img src="./resources/images/main/prev.gif"></span>
							    <span class="arrow_next"><IMG src="./resources/images/main/next.gif"></span>
								<div class="carrousel_box">
							   <ul>
							    <li>
								 <div class="img_box" onclick="window.open('sub/sub01/sub0103_view.html')">
									<img src="./resources/images/main/img01.gif"  >
									<p class="imgtxt">강남센터</p>
								</div>
							   </li>
							    <li>
								  <div class="img_box" onclick="window.open('sub/sub01/sub0103_view.html')">
									<img src="./resources/images/main/img02.gif"  >
									<p class="imgtxt">부산센터</p>
								</div>
							   </li>
							    <li>
								  <div class="img_box" onclick="window.open('sub/sub01/sub0103_view.html')">
									<img src="./resources/images/main/img03.gif"  >
									<p class="imgtxt">대구센터</p>
								</div>
							   </li>
							  
							   </ul>
							  </div>
							 </div>
						</div>
						<div class="box02" onclick="window.open('sub/sub07/sub0701.html')">
							<h6>기업예약</h6>
							<p class="txt">마이스토리와 협약된 기업의 임직원은 <br> 실시간 상담예약이 가능합니다.</p>
						</div>
					</div>
				</div>
			</div>
</body>