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
							<h2>${news.title }</h2>
						</th>
					</tr>
					<tr>
						<th>등록일</th>
						<td>${news.regdate }</td>
					</tr>
					<tr>
						<td colspan="2" class="body">
							<p><img title="" style="border: 0px solid currentColor; border-image: none;" alt="" src="upload_news/${news.getPic() }" border="0" vspace="0" hspace="0"><br></p>
							<p>출처링크</p>
							<p><a href="${news.content }">${news.content }</a></p>
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