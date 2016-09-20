<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.mycom.camerainfo.service.PageNumberingService" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="header.jsp" %>
<c:set var="current_page" value="${current_page }" />
<c:set var="total_cnt" value="${totalCnt }" />
<c:set var="gal_type" value="${type }" />
<c:set var="adm" value="admin" />

<%
	int c_page = Integer.parseInt((String) (pageContext.getAttribute("current_page")));
	pageContext.setAttribute("c_page", c_page);
%>
<div id="contents">

		<!-- 실제 콘텐츠 영역 -->
		<div class="box_960_sub ">
			<h1 class="page_tit" style="letter-spacing:0;">
				모바일 갤러리<span >	Mobile Gallary</span>
			</h1>

			<!-- 본문 영역 -->
			<div id="product_list">
				
			
				<!-- 탭메뉴 -->
				<ul class="tabMenu menu04">
					<li class="on"><a href="gallary_mobile.do?current_page=1&type=0">풍경</a></li>
					<li class="on"><a href="gallary_mobile.do?current_page=1&type=1">여행</a></li>
					<li class="on"><a href="gallary_mobile.do?current_page=1&type=2">음식</a></li>
					<li class="on"><a href="gallary_mobile.do?current_page=1&type=3">동물</a></li>
				</ul>
				<!-- //탭메뉴 --><!-- 제품 목록 -->
				<div class="prod_list_wrap">
					<div class="prod_list prod_list_dslr">
						﻿<ul>
							<c:forEach var="gall" items="${gallList }">
							<li class="released_1 FX">
								<span class="img"><a href="gallary_mobile_read.do?gallNum=${gall.num }"><img src="upload_gallary/${gall.pic }" alt="" /></a></span>
								<span class="txt">
									<p> </p>
									<p>${gall.title } </p>
									<p>${gall.author }</p>
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
												<a href="gallary_mobile.do?current_page=${i }&type=${type}">
												<c:if test="${i == c_page }" ><b/></c:if>
												${i }
												<c:if test="${i == c_page }" ><b/></c:if>											
												</a>
											</span>
										</c:forEach>
																					
									</div>
									
								</div>											
								<c:if test="${memberInfo.id != null }">
										<a href="gallary_write.do" class="btn yellow" style="float:right;">갤러리 등록</a>
									</c:if>					
						</ul>
						
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