<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<script type="text/javascript">
/* 	window.onload = function(){
		var chk = ${memberFindIdChk}
		//alert(chk);
		
		if(chk == -1){
			alert('가입되어 있지 않는 이름입니다');
			history.back();
		}
	} */
</script>

<div class="sub-content">
				<div class="sub-cont-inbox clear login-cont">
				<div class="sub-top">
					<h2>아이디/비밀번호찾기</h2>
				</div>
				<div class="welcom-msg">
					<h3>상담해듀오 사이트를 방문해주셔서 감사합니다.</h3>
					<p>
						회원님의 <span>아이디 또는 비밀번호</span>를 잊어버리셨나요?<br>
						아래 항목을 작성한 후 확인버튼을 클릭하시면 아이디 또는 비밀번호를 찾으실 수 있습니다.								
					</p><p>
				</p></div>
			
				<div class="helpbox">
					<form action="findIdResult.do" method="post" name="findIdForm">
						<div class="idbox">
							<div class="helpinbox">
								<h4>ID 찾기</h4>
								<p class="suport-txt">
									회원님의 이름과 이메일을 입력하신 후 찾기 버튼을<br>클릭하시면 아이디를 찾을 수 있습니다.
								</p>
								<div class="suport-formbox">
									<table width="100%" class="noneline-tbl suport-table">
										<colgroup>
											<col width="50">
											<col width="">
										</colgroup>
										<tbody>								
										<tr>
											<th>이름</th>
											<td><input type="text" name="m_name" class="common-text-box wdp50p"></td>
										</tr>
										<tr>
											<th>핸드폰</th>
											<td>
												<select name="m_tongsinsa">
													<option>skt</option>
													<option>kt</option>
													<option>lg</option>
												</select>
												<input type="text" name="m_phone1" class="common-text-box wdp50p">-
												<input type="text" name="m_phone2" class="common-text-box wdp50p">-
												<input type="text" name="m_phone3" class="common-text-box wdp50p">
											</td>
										</tr>
										</tbody>
									</table>
								</div>
								<div class="text-c">
									<input type="submit" value="아이디 찾기" name="" class="select01-btn">
								</div>
							</div>
						</div>
					</form>
					<div class="pwbox">
						<div class="helpinbox">
							<h4>비밀번호 찾기</h4>
							<p class="suport-txt">
								회원님의 아이디와 이름, 이메일을 입력하신 후 찾기 버튼을<br>
								클릭하시면 비밀번호를 찾을 수 있습니다.
							</p>
							<div class="suport-formbox suport-formbox1">
								<table width="100%" class="noneline-tbl mt-10">
									<colgroup>
										<col width="50">
										<col width="">
									</colgroup>
									<tbody>
									<tr>
										<th>아이디</th>
										<td><input type="text" class="common-text-box wdp50p"></td>
									</tr>
									<tr>
										<th>이름</th>
										<td><input type="text" class="common-text-box wdp50p"></td>
									</tr>
									<tr>
										<th>핸드폰</th>
										<td>
											<select>
												<option>skt</option>
												<option>kt</option>
												<option>lg</option>
											</select>
											<input type="text" class="common-text-box wdp50p">-
											<input type="text" class="common-text-box wdp50p">-
											<input type="text" class="common-text-box wdp50p">
										</td>
									</tr>
									</tbody>
								</table>
							</div>
							<div class="text-c">
								<input type="button" value="비밀번호 찾기" name="" class="select02-btn" onclick="jQuery.callIPwFind();">
							</div>
						</div>
					</div>
				</div>
			</div>