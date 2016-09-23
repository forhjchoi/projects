<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp"	 %>
<div id="contents">
		<!-- 실제 콘텐츠 영역 -->
		<div class="box_960_sub ">

			<!-- 본문 영역 -->
			<div id="offedu_list">
			
				<div class="intro">
				</div>

				<table class="lecture_view">
					<caption></caption>
					<tr>
						<td colspan="2" class="body">
							<p><img title="" style="border: 0px solid currentColor; border-image: none;" alt="" src="upload_info/${lens.pic }" border="0" vspace="0" hspace="0"><br></p>
						</td>
					</tr>
					<tr>
						<th>브랜드</th>
						<td>${lens.brand }</td>
					</tr>
					<tr>
						<th>제품명</th>
						<td>${lens.name }</td>
					</tr>
					<tr>
						<th>무게</th>
						<td>${lens.weight }</td>
					</tr>
					<tr>
						<th>필터 사이즈</th>
						<td>${lens.filter_size }</td>
					</tr>
					<tr>
						<th>최대 촬영 배율</th>
						<td>${lens.max_shot_ratio }</td>
					</tr>
					
				</table>		
					
				<a href="javascript:history.back();" class="link_list">목록가기</a>
			</div>
			<!-- //본문 영역 -->
		</div>	
		<!-- //실제 콘텐츠 영역 -->
	</div>
<jsp:include page="footer.jsp" />