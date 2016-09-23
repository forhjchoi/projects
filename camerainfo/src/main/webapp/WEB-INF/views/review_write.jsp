<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<div id="location">
		<div class="box_960">
			<span>
				<a href="." class="home"><span><img class="" src="img/icon_home.gif" alt="" /> <b>HOME</b></span></a><img class="arrow" src="img/img_arrow_location.gif" alt="" width="12" />
				<span class="stay"><span><b> 리뷰</b></span></span>
			</span>
		</div>
	</div>

	<!-- contents -->
	<div id="contents">

		<!-- 실제 콘텐츠 영역 -->
		<div class="box_960_sub ">
			<h1 class="page_tit" style="letter-spacing:0;">
				리뷰<span >Review</span>
			</h1>

			<!-- 본문 영역 -->
			<form id="reviewForm" action="review_write_ok.do" method="post" enctype="multipart/form-data">
			<div id="school_board_write">
				<table class="tbl_vertical">
					<caption>리뷰쓰기</caption>
					<tr>
						<th><label for="title">제목</label></th>
						<td><input type="text" id="title" name="title" maxlength="100" title="제목"/></td>
					</tr>
					<tr>
						<th><label for="title">종류</label></th>
						<td>
							<select name="type" form="reviewForm">
								<option value="0">렌즈</option>
								<option value="1">카메라</option>
							</select>	
						</td>						
					</tr>
					<tr>
						<th><label for="body">내용</label></th>
						<td>
							<textarea id="content" name="content" cols="30" rows="10"></textarea>
						</td>
					</tr>
					<tr>
						<th><label for="title">이미지</label></th>
						<td><input type="file" id="pic" name="pic"/></td>
					</tr>
				</table>
				
				<div class="btns">
					<a href="javascript:document.getElementById('reviewForm').submit()" class="btn yellow">확인</a>
					<a href="javascript:history.back();" class="btn gray">취소</a>
				</div>				
			</div>
</form>
			<!-- //본문 영역 -->

		</div>	
		<!-- //실제 콘텐츠 영역 -->


	</div>
	<!-- //contents -->
<jsp:include page="footer.jsp" />