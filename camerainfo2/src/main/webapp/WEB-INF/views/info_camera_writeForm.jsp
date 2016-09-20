<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp"	 %>
<form action="info_write_ok.do" method="post" enctype="multipart/form-data" name="infoForm" id="infoForm">
<div id="contents">
		<!-- 실제 콘텐츠 영역 -->
		<div class="box_960_sub ">
			<h1 class="page_tit" style="letter-spacing:0;">
				카메라 제품 정보 등록                     <span >Product Information</span>
			</h1>
			<!-- 본문 영역 -->
			<div id="offedu_list">
			
				<div class="intro">
				</div>

				<table class="lecture_view">
					<caption></caption>
					<tr>
						<th>브랜드</th>
						<td><select name="brand" form="infoForm">
								<option value="Nikon">니콘</option>
								<option value="Canon">캐논</option>
								<option value="Samsung">삼성</option>
							</select>
						</td>
					</tr>
					<tr>
						<th>제품명</th>
						<td><input type="text" name="name" /></td>
					</tr>
					<tr>
						<th>제품사진</th>
						<td><input type="file" name="pic" /></td>
					</tr>
					<tr>
						<th>픽셀</th>
						<td><input type="text" name="pixel" /></td>
					</tr>
					<tr>
						<th>렌즈</th>
						<td><input type="text" name="lens" /></td>
					</tr>
					<tr>
						<th>셔터</th>
						<td><input type="text" name="shutter" /></td>
					</tr>
					<tr>
						<th>셔터스피드</th>
						<td><input type="text" name="shutter_speed" /></td>
					</tr>
					<tr>
						<th>작동모드</th>
						<td><input type="text" name="record_type" /></td>
					</tr>
					<tr>
						<th>ISO</th>
						<td><input type="text" name="iso" /></td>
					</tr>
					<tr>
						<th>Bluetooth</th>
						<td><input type="text" name="bluetooth" /></td>
					</tr>
				</table>				
				<a href="javascript:history.back();" class="link_list">목록가기</a>         
				<a href="javascript:document.getElementById('infoForm').submit()" class="link_list">등록</a>
			</div>
			<!-- //본문 영역 -->
		</div>	
		<!-- //실제 콘텐츠 영역 -->
	</div>
	</form>
<jsp:include page="footer.jsp" />