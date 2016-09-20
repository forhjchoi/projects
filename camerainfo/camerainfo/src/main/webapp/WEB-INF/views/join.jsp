<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ include file="header.jsp" %>

<title>회원가입 5단계 정보 입력 | Nikon Imaging Korea</title>

<script type="text/javascript" src="js/common.js"></script>
<script type="text/javascript" src='js/member_input_check.js'></script>
<script type="text/javascript" src='js/layerpopup_html.js'></script>

	
	<div id="layer" style="display:none;">
	</div>
		

<sf:form modelAttribute="memberDto" id="joinForm" path="joinForm" action="join_ok.do" method="post">
		<div id="location">
			<div class="box_960">
				<span>
					<a href="." class="home"><span><img class="" src="img/icon_home.gif" alt="" /> <b>HOME</b></span></a>
					<img class="arrow" src="img/img_arrow_location.gif" alt="" width="12" />
					<span class="stay"><span><b> 회원가입</b></span></span>
				</span>
			</div>
		</div>
	<!-- contents -->
	<div id="contents">
		<!-- 실제 콘텐츠 영역 -->
		<div class="box_960_sub ">
		<h1 class="page_tit">회원가입 <span>Join</span></h1>

		<!-- 회원가입 영역 -->
		<div class="join">
			<h3 class="tit_square">정보 입력</h3>
			<div class="table_wrap mb_3" id="essential">
				<p><img src="img/icon_check.png" alt="필수" /> 표시된 항목은 <span>필수항목</span>이므로 반드시 입력해주세요.</p>
				<table class="tbl_common">
					<caption>가입 필수 입력정보</caption>
					<colgroup class="">
						<col style="width:20%"/>
						<col style="width:80%"/>
					</colgroup>
					<tr>
						<th class="first">
							<img src="img/icon_check.png" alt="필수" /> <label for="userid">아이디</label>
						</th>
						<td class="first" style="text-align:left;">
							<sf:input type="text" path="id" id="userid" maxlength="12" />
							<%--<a href="javascript:checkId();" class="btn_help">아이디 중복확인</a>  --%>
							<span>띄어쓰기 없는 영문/숫자 5~12자 이내로 입력해주세요.</span>
						</td>
					</tr>
					<tr>
						<th>
							<img src="img/icon_check.png" alt="필수" /> <label for="se_passwd">비밀번호</label>
						</th>
						<td>
							<sf:input type="password" path="passwd" id="se_passwd" maxlength="12" />
							 영문과 숫자가 혼합된 4~12자 내외로 입력해주세요. 특수문자 사용 가능.
						</td>
					</tr>
					<tr>
						<th>
							<img src="img/icon_check.png" alt="필수" /> <label for="se_passwd2">비밀번호 확인</label>
						</th>
						<td>
							<sf:input type="password" path="passwd2" id="se_passwd2" maxlength="12"/>
						</td>
					</tr>
					<tr>
						<th>
							<img src="img/icon_check.png" alt="필수" /> <label for="hand_tel">이름</label>
						</th>
						<td>
							<sf:input type="text" path="name" id="se_passwd2" maxlength="12"/>
						</td>
					</tr>
					<tr>
						<th>
							<img src="img/icon_check.png" alt="필수" /> <label for="hand_tel">닉네임</label>
						</th>
						<td>
							<sf:input type="text" path="nickname" id="se_passwd2" maxlength="12"/>
						</td>
					</tr>
					<tr>
						<th>
							<img src="img/icon_check.png" alt="필수" /> <label for="email">이메일</label>
						</th>
						<td>
							<sf:input type="text" path="email" id="email" value="" maxlength="50" title="" class=""  />
						</td>
					</tr>				
					<tr>
						<th>
							<img src="img/icon_check.png" alt="필수" /> <label for="email">생년월일</label>
						</th>
						<td>
							<sf:input type="date" path="birth" id="email" value="" maxlength="50" title="" class=""  />&nbsp;&nbsp;
							<sf:radiobutton path="lc" value="0" />양력&nbsp;
							<sf:radiobutton path="lc" value="1" />음력&nbsp;&nbsp;&nbsp;
							예)  1991/05/23
						</td>
					</tr>
					<tr>
						<th>
							<img src="img/icon_check.png" alt="필수" /> <label for="email">성별</label>
						</th>
						<td>
							&nbsp;&nbsp;<sf:radiobutton path="sex" value="0" />남자&nbsp;&nbsp;
							<sf:radiobutton path="sex" value="1" />여자
						</td>
					</tr>
				</table>
			</div>
				<div class="btns">
					<a href="javascript:document.getElementById('joinForm').submit()" class="btn yellow">확인</a>
					<a href="javascript:history.back();" class="btn gray">취소</a>
				</div>
		</div>
		<!-- //회원가입 영역 -->
		</div>	
		<!-- //실제 콘텐츠 영역 -->
	</div>
	<!-- //contents -->
</sf:form>


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