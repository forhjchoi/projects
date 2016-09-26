<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<div id="location">
		<div class="box_960">
			<span>
				<a href="." class="home"><span><img class="" src="img/icon_home.gif" alt="" /><b> HOME</b></span></a>
				<img class="arrow" src="img/img_arrow_location.gif" alt="" width="12" />
				<span class="stay"><span><b>회원 서비스</b></span></span>
				<img class="arrow" src="img/img_arrow_location.gif" alt="" width="12" />
				<span class="stay"><span><b>아이디 찾기</b></span></span>
			</span>
		</div>
	</div>
	<div id="contents">

		<!-- 실제 콘텐츠 영역 -->
		<div class="box_960_sub"  style="padding-bottom: 30px;">
			<h1 class="page_tit">아이디 찾기 <span>Find ID</span></h1>			
			<div class="find_pw">

				<div class="way data" style="width:100%;">
					<span style="border:0;">
						<h2 style="text-align:center;">등록된 정보로 인증하기</h2>
						<p style="text-align:center;">회원가입 시 등록하신 정보를 입력하세요.</p>
						
						<div id="phone_tab" >
							<div class="content" style="padding-bottom:25px;border-bottom:1px solid #d4d4d4;">
							<form id="findIdForm" name="findIdForm" action="find_id_ok.do" method="post">

								<div id="phone_tel1">
									<table>
									<colgroup>
										<col style="width:35%;"/>
										<col style="width:65%;"/>
									</colgroup>
									<tr>
										<th><label for="user_name">이름</label></th>
										<td><input type="text" id="name" name="name" maxlength="100"  value=""/></td>
									</tr>
									<tr>
										<th><label for="user_tell">생년월일</label></th>
										<td><input type="date" id="birth" name="birth" maxlength="20" value="" /></td>
									</tr>
									<tr>
										<th><label for="user_tell">이메일</label></th>
										<td><input type="email" id="email" name="email" maxlength="20" value=""/></td>
									</tr>									
									</table>
								</div>
							</form>
							</div>
							<div style="margin-top:0;text-align:center;">
								<a href="javascript:document.getElementById('findIdForm').submit();" class="btn yellow">아이디 찾기</a>
								<a href="javascript:document.getElementById('findIdForm').reset();" class="btn gray">다시 입력</a>
							</div>
						</div><!--//tab1-->
					</span>
				</div>
			</div>
		</div>	
		<!-- //실제 콘텐츠 영역 -->

	</div>

<jsp:include page="footer.jsp" />