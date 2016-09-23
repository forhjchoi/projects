<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.mycom.camerainfo.service.PageNumberingService" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="header.jsp" %>
<c:set var="current_page" value="${current_page }" />
<c:set var="total_cnt" value="${totalCnt }" />
<c:set var="br" value="${br }" />
<c:set var="adm" value="admin" />

<%
	int c_page = Integer.parseInt((String) (pageContext.getAttribute("current_page")));
	pageContext.setAttribute("c_page", c_page);
%>
<div id="contents">

		<!-- 실제 콘텐츠 영역 -->
		<div class="box_960_sub ">
			<h1 class="page_tit" style="letter-spacing:0;">
				카메라 제품정보<span >	Product Information</span>
			</h1>

			<!-- 본문 영역 -->
			<div id="product_list">
				
			
				<!-- 탭메뉴 -->
				<ul class="tabMenu menu04">
					<li class="on"><a href="info_camera.do?current_page=1&br=0">니콘</a></li>
					<li class="on"><a href="info_camera.do?current_page=1&br=1">캐논</a></li>
					<li class="on"><a href="info_camera.do?current_page=1&br=2">삼성</a></li>
				</ul>
				<div class="prod_list_wrap">
					<div class="prod_list prod_list_dslr">
						﻿<ul>
							<c:forEach var="info" items="${infoList }">
							<li class="released_1 FX">
								<span class="img"><a href="링크주소"><img src="upload_info/${info.pic }" alt="" /></a></span>
								<span class="txt"  onclick=".">
									<p>${info.num } </p>
								</span>
							</li>		
							</c:forEach>
							<%
								int rowsPerPages = 6;
								int total_cnt = ((Integer) (pageContext.getAttribute("total_cnt"))).intValue();
								int total_pages = PageNumberingService.getInstance().getTotalPage(total_cnt, rowsPerPages);
								pageContext.setAttribute("t_pages", total_pages);
							%>
							<div class="pager">
									<div class="page_list">
									<c:forEach var="i" begin="1" end="${t_pages }">
										<span class="selected">
											<a href="info_camera.do?current_page=${i }&br=${br}">
											<c:if test="${i == c_page }" ><b/></c:if>
											${i }
											<c:if test="${i == c_page }" ><b/></c:if>											
											</a>
										</span>
									</c:forEach>										
									</div>
								</div>					
													
						</ul>
						<c:if test="${memberInfo.id != null }">
							<div class="tabMen" style="position:relative;">
							<a href="gallary_write.do" class="details" style="position:absolute; bottom:0; right:0;"><h1>제품 등록</h1></a>
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