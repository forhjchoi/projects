<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="header.jsp" %>
<c:set var="currPage" value="${current_page }" />
<div id="location">
		<div class="box_960">
			<span>
				<a href="." class="home"><span><img class="" src="img/icon_home.gif" alt="" /> <b>HOME</b></span></a><img class="arrow" src="img/img_arrow_location.gif" alt="" width="12" />
				<span class="stay"><span><b> 커뮤니티</b></span></span>
				<img class="arrow" src="img/img_arrow_location.gif" alt="" width="12" />
				<span class="stay"><span><b> 자유게시판</b></span></span>
			</span>
		</div>
	</div>

	<!-- contents -->
	<div id="contents">

		<!-- 실제 콘텐츠 영역 -->
		<div class="box_960_sub ">
			<h1 class="page_tit" style="letter-spacing:0;">
				자유게시판<span ></span>
			</h1>

			<!-- 본문 영역 -->
			<form:form id="commuForm" action="commu_write_ok.do" method="post" commandName="communityDto">
			<div id="school_board_write">
				<table class="tbl_vertical">
					<caption>글수정</caption>
					
					<tr>
						<th class="first"><label for="title">작성자</label></th>
						<td class="first"><form:input type="text" path="name" readonly="true"/></td>
					</tr>
					<tr>
						<th><label for="title">E-mail</label></th>
						<td><form:input type="text" id="title" path="email" maxlength="100" readonly="true"/></td>
					</tr>
					<tr>
						<th><label for="title">제목</label></th>
						<td><form:input type="text" id="title" path="title" maxlength="100" readonly="true"/></td>
					</tr>
					<tr>
						<th><label for="body">내용</label></th>
						<td>
							<form:textarea id="content" path="content" cols="30" rows="10" ></form:textarea>
						</td>
					</tr>
				</table>
				<form:input type="hidden" path="type" value="0" />
				<input type="hidden" name="current_page" value="${currPage }" />
				<div class="btns">
					<a href="javascript:document.getElementById('commuForm').submit()" class="btn yellow">확인</a>
					<a href="javascript:history.back();" class="btn gray">취소</a>
				</div>				
			</div>
			</form:form>
			<!-- //본문 영역 -->

		</div>	
		<!-- //실제 콘텐츠 영역 -->


	</div>
	<!-- //contents -->
<jsp:include page="footer.jsp" />