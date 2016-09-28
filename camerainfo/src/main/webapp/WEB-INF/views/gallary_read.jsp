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
						<th colspan="2" class="first">
							<h2>${gall.title }</h2>
						</th>
					</tr>
					<tr>
						<th>작성자</th>
						<td>${gall.author }</td>
					</tr>
					<tr>
						<th>제목</th>
						<td>${gall.title }</td>
					</tr>
					<tr>
						<th>조회수</th>
						<td>${gall.hits }</td>
					</tr>
					<tr>
						<td colspan="2" class="body">
							<p><img title="" style="border: 0px solid currentColor; border-image: none;" alt="" src="upload_gallary/${gall.file }" border="0" vspace="0" hspace="0"><br></p>
							<p><br/></p>
							<p align="center">${gall.content }</p>
							<p><br/></p>
						</td>
					</tr>
				</table>		
					
				<a href="javascript:history.back();" class="link_list">목록가기</a>
			</div>
			<!-- //본문 영역 -->
		</div>	
		<!-- //실제 콘텐츠 영역 -->
	</div>
<jsp:include page="footer.jsp" />