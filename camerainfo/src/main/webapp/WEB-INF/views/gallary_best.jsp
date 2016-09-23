<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.mycom.camerainfo.service.PageNumberingService" %>
<%@ include file="header.jsp" %>
<c:set var="current_page" value="${current_page }" />
<c:set var="total_cnt" value="${totalCnt }" />


<%
	int c_page = Integer.parseInt((String) (pageContext.getAttribute("current_page")));
	pageContext.setAttribute("c_page", c_page);
%>
<div id="contents">

		<!-- 실제 콘텐츠 영역 -->
		<div class="box_960_sub ">
			<h1 class="page_tit" style="letter-spacing:0;">
			베스트 갤러리<span >
			Best Gallary</span></h1>

			<!-- 본문 영역 -->
			<div id="product_list">
				
			
				<!-- 탭메뉴 -->
				<!-- //탭메뉴 --><!-- 제품 목록 -->
				<div class="prod_list_wrap">
					<div class="prod_list prod_list_dslr">
						﻿<ul>
							<c:forEach var="gall" items="${gallList }">
							<li class="released_1 FX">
								<span class="img"><a href="gallary_work_read.do?gallNum=${gall.num }"><img src="upload_gallary/${gall.pic }" alt="" /></a></span>
								<span class="txt"  onclick=".">
									<p>${gall.title } </p>
									<p align="right" margin="1">${gall.author }</p>
								</span>
							</li>		
							</c:forEach>
							<%
		int rowsPerPages = 3;
		int total_cnt = ((Integer) (pageContext.getAttribute("total_cnt"))).intValue();
		int total_pages = PageNumberingService.getInstance().getTotalPage(total_cnt, rowsPerPages);
		pageContext.setAttribute("t_pages", total_pages);
	%>					
													
						</ul>
						<c:if test="${memberInfo.id != null }">
							<div class="tabMen" style="position:relative;">
							<a href="gallary_write.do" class="details" style="position:absolute; bottom:0; right:0"><h1>갤러리 등록</h1></a>							
						</div>
						</c:if>
												
					</div>					
				</div>
				<!-- //제품 목록 -->
			</div>
			<!-- //본문 영역 -->
		</div>	
		<!-- //실제 콘텐츠 영역 -->
	</div>
	<!-- //contents -->
<jsp:include page="footer.jsp"/>