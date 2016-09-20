<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="header.jsp" %>
	<!-- //header 136-->
		<!--//Header-->
<%-- <c:set var="memberInfo" value="${memberInfo }" /> --%>
<script type="text/javascript" src="js/common.js"></script>
<script type="text/javascript" src='js/member_input_check.js'></script>
<script type="text/javascript" src='js/layerpopup_html.js'></script>
	<div id="location">
		<div class="box_960">
			<span>
				<a href="." class="home"><span><img class="" src="img/icon_home.gif" alt="" /> <b>HOME</b></span></a>
				<img class="arrow" src="img/img_arrow_location.gif" alt="" width="12" />
				<span class="stay"><span><b> 회원정보 변경</b></span></span>
			</span>
		</div>
	</div>

	<!-- contents -->
	<div id="contents">
		<div id="layer" style="display:none;">
		</div>
		<!-- 실제 콘텐츠 영역 -->
		<form id="memberModifyForm" name="memberModifyForm" action="memberModify_ok.do" method="post">
		<div class="box_960_sub ">
			<h1 class="page_tit" style="letter-spacing:0;">회원정보 변경 <span>Edit personal Information</span></h1>

			<!-- 본문 영역 -->
			<div id="edit_information">

				<h2 class="blind">회원정보 변경</h2>

				<p class="intro"><span class="user_name">${memberInfo.id }(${memberInfo.nickname })</span>님의 소중한 정보입니다.</p>

				<div class="table_wrap mb_3" id="essential">
					<table class="tbl_input">
						<caption>가입 필수 입력정보</caption>
						<colgroup class="">
							<col style="width: 20%" />
							<col style="width: 80%" />
						</colgroup>
						<tr>
							<th><label for="id">아이디</label></th>
							<td><input type="text" id="id" name="id"
								value="${memberInfo.id }" maxlength="200" title="새 비밀번호" class="" readonly/> &nbsp;
							</td>
						</tr>
						<tr>
							<th><label for="se_passwd">현재 비밀번호</label></th>
							<td><input type="password" id="passwd" name="passwd"
								value="" maxlength="12" title="현재 비밀번호" class="" /> &nbsp;
								*정보를 변경하시려면 현재 비밀번호를 꼭 입력해주세요.</td>
						</tr>
						<tr>
							<th><label for="new_se_passwd">새 비밀번호</label></th>
							<td><input type="password" id="new_passwd" name="new_passwd"
								value="" maxlength="200" title="새 비밀번호" class="" /> &nbsp;
							</td>
						</tr>
						<tr>
							<th><label for="new_se_passwd2">비밀번호 확인</label></th>
							<td><input type="password" id="new_passwd2"
								name="new_passwd2" value="" maxlength="200" title="비밀번호 확인"
								class="" /></td>
						</tr>
						<tr>
							<th class="first"><label for="user_name">이름</label></th>
							<td class="first"><span>${memberInfo.name }</span></td>
						</tr>
						<tr>
							<th><label for="hand_tel">닉네임</label></th>
							<td><input type="text" name="nickname" id="nickname" value="${memberInfo.name }"
								maxlength="12" /></td>
						</tr>
						<tr>
							<th><label for="email">이메일</label></th>
							<td><input type="text" name="email" id="email" value="${memberInfo.email }"
								maxlength="50" title="" class="" /></td>
						</tr>
						<tr>
							<th><label for="email">생년월일</label></th>
							<td class="first"><span>${memberInfo.birth }</span>&nbsp;&nbsp;
								<c:choose>
									<c:when test="${memberInfo.lc == 0 }">
										<span>양력</span>&nbsp;&nbsp;	
									</c:when>
									<c:otherwise>
										<span>음력</span>&nbsp;&nbsp;
									</c:otherwise>
								</c:choose>
							</td>
						</tr>
						<tr>
							<th>
								<label for="email">성별</label></th>
							<td>
								<c:choose>
									<c:when test="${memberInfo.sex == 0 }">
										<span>남자</span>&nbsp;&nbsp;
									</c:when>
									<c:otherwise>
										<span>여자</span>&nbsp;&nbsp;
									</c:otherwise>
								</c:choose>
							</td>
						</tr>
					</table>
				</div>

				<div class="btns">
					<a href="javascript:document.getElementById('memberModifyForm').submit();" class="btn yellow">확인</a>
					<a href="javascript:history.back();" class="btn gray">취소</a>
				</div>
			</div>
			<!-- //본문 영역 -->
		</div>
</form>
		<!-- //실제 콘텐츠 영역 -->
	</div>
	<!-- //contents -->

<!-- <div id="emoticon_div" style="display:none;">
	<input type="button" value="이모티콘이미지로 교체예정입니다. 이벤트 참여하시려면 이 버튼을 클릭해주세요!" onclick="javascript:goRenewEvent();">
	<br/>
	<br/>
	<input type="button" value="오늘 하루 그만보기 이미지 교체예정입니다. 하루 그만보시려면 이 버튼을 클릭해주세요!" onclick="javascript:CloseRenewEvent();">
</div> -->

	<div id="emoticon_div" style="display:none;">	</div>
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
