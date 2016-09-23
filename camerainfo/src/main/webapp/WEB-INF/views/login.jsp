<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ include file="header.jsp" %>

	<div id="location">
		<div class="box_960">
			<span>
				<a href="." class="home"><span><img class="" src="img/icon_home.gif" alt="" /> <b>HOME</b></span></a>
				<img class="arrow" src="img/img_arrow_location.gif" alt="" width="12" />
				<a href="login.do" class=""><span><b> 로그인</b></span></a>
			</span>
		</div>
	</div>
	<!-- contents -->
	<div id="contents">

		<!-- 실제 콘텐츠 영역 -->
		<div class="box_960_sub ">
		<h1 class="page_tit">로그인 <span>Sign in</span></h1>

		<!-- 로그인 영역 -->
		<div class="login">
			<div class="box_login">
				<div class="img">
					<img src="img/img_login_visual.png" alt="" />
				</div>
				<div class="login_form">
					<p class="greeting_en">Welcome to&nbsp;&nbsp;<b>CameraInfo</b></p><br/><br/>
					<p class="greeting_kr">						
							<c:choose>
								<c:when test="${first eq 'first' }">
									<span>로그인하시면 더 많은 정보와 다양한 서비스를 이용하실 수 있습니다.</span>										
								</c:when>
								<c:otherwise>
									<span>아이디와 비밀번호를 확인하세요.</span>		
								</c:otherwise>
							</c:choose>						
					</p>					
					<form id="loginForm" name="loginForm" action="login_ok.do" method="post">
						<div class="input_form">
							<ul>
								<li><label for="userid">아이디</label><input type="text" name="id" id="userid" value="" maxlength="12" class=""  style="text-transform: lowercase;" /></li>
								<li><label for="pwd">비밀번호</label><input type="password" name="passwd" id="pwd" value="" maxlength="200" class="" /></li>
							</ul>
							
							<a href="javascript:document.getElementById('loginForm').submit();"  class="btn_login_pc"><img src="img/btn_login.gif" alt="로그인" /></a>
						</div>
					</form>
				</div>
			</div>
			<div class="etc">
				<div class="id">
					<span>아이디를 잊어버리셨나요?</span>
					<a href="find_id.do"> 아이디 찾기</a>
				</div><div class="pw">
					<span>비밀번호를 잊어버리셨나요?</span>
					<a href="/member/find/password"> 비밀번호 찾기</a>
				</div><div class="join">
					<span>회원으로 가입하세요.</span>
					<a href="/join/age"> 회원가입</a>
				</div>
				<!-- 비회원추가 -->
		
		<!-- 비회원추가 -->
		
			</div>
		</div>
		<!-- //로그인 영역 -->
		</div>	
		<!-- //실제 콘텐츠 영역 -->
	</div>
	<!-- //contents -->
	<div id="emoticon_div" style="display:none;">
	</div>

	<div class="email_security_layer_popup" style="display: none;">
		<div id="email_security">
			<h2><span>전자우편 무단수집거부</span></h2>
			<a href="javascript:;" onclick="javascript:showEmailPolicy();" class="layer_popup_close_btn"><img src="img/img_close.png" alt="닫기" width="26"></a>
			<div class="email_security_txt">
				본 웹사이트는 게시된 이메일 주소가 <strong>전자우편 수집 프로그램이나 그 밖의 기술적 장치를 이용하여 무단 수집되는 것을 거부</strong>합니다.
				이를 위반시 <strong>『정보통신망이용촉진및정보보호등에관한법률』등에 의해 처벌</strong> 받을 수 있습니다.
			</div>
		</div>
	</div>
	
<!-- footer -->
<jsp:include page="footer.jsp" />