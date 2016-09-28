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
				<div id="press_list">
				<ul class="tabMenu menu04" style="margin:0 0 20px 188px;">
					<li class="on"><a href="gallary_mobile.do?current_page=1&type=0">풍경</a></li>
					<li class="on"><a href="gallary_mobile.do?current_page=1&type=1">여행</a></li>
					<li class="on"><a href="gallary_mobile.do?current_page=1&type=2">음식</a></li>
					<li class="on"><a href="gallary_mobile.do?current_page=1&type=3">동물</a></li>
									
				</ul>
				
				<div class="search">
					<select name="find_type" id="find_type" title="검색분류">
						<option value="all"selected>전체</option>
						<option value="subject">제목</option>
						<option value="content">내용</option>
					</select>
					<input type="text" name="find_txt" id="find_txt" value="" maxlength="100" class="" title="검색어" style="width:155px;" />
					<a href="javascript:;" onclick="javascript:goSearch();" class="searching">검색</a>
				</div>
				
				<!-- //탭메뉴 --><!-- 제품 목록 -->
				<div class="prod_list_wrap">
					<div class="prod_list prod_list_dslr">
						﻿<ul>
							<c:forEach var="gall" items="${gallList }">
							<li class="released_1 FX">
								<span class="img"><a href="gallary_mobile_read.do?gallNum=${gall.num }"><img src="upload_gallary/${gall.file }" alt="" /></a></span>
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
									<c:if test="${memberInfo.id != null }">
										<div class="page_move">
											<span><a href="#">&lt;</a></span>
											<div class="search">
												<a href="gallary_write.do"class="searching">등록</a>	
											</div>							 
										</div>
									</c:if>	
								</div>											
													
						</ul>
						
					</div>
				</div>
				<!-- //제품 목록 -->
			</div>
			<!-- //본문 영역 -->
			</div>
		</div>	
		<!-- //실제 콘텐츠 영역 -->
	</div>
	<!-- //contents -->
<jsp:include page="footer.jsp"/>