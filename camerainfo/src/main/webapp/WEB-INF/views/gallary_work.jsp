<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.mycom.camerainfo.service.PageNumberingService" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
				작품 갤러리<span >Work Gallary</span>
			</h1>

			<!-- 본문 영역 -->
			<div id="product_list">
				<div id="press_list">
			
				<!-- 탭메뉴 -->
				<ul class="tabMenu menu04" style="margin:0 0 20px 188px;">
					<li class="on"><a href="gallary_work.do?current_page=1&type=0">풍경</a></li>
					<li class="on"><a href="gallary_work.do?current_page=1&type=1">여행</a></li>
					<li class="on"><a href="gallary_work.do?current_page=1&type=2">음식</a></li>
					<li class="on"><a href="gallary_work.do?current_page=1&type=3">동물</a></li>
				</ul>
				<div class="search">
					<form id="searchForm" action="gallary_search.do" method="post">
					<select name="find_type" id="find_type" title="검색분류">
						<option value="0" selected>전체</option>
						<option value="1">제목</option>
						<option value="2">내용</option>
					</select>
					<input type="text" name="find_txt" id="find_txt" value="" maxlength="100" class="" title="검색어" style="width:155px;" />
					<input type="hidden" name="current_page" value="1" />
					<input type="hidden" name="type" value="type" />
					<a href="javascript:document.getElementById('searchForm').submit()" class="searching">검색</a>
					</form>
				</div>
				<!-- //탭메뉴 --><!-- 제품 목록 -->
				<div class="prod_list_wrap">
					<div class="prod_list prod_list_dslr">
						﻿<ul>
							<c:forEach var="gall" items="${gallList }">
							<li class="released_1 FX">
								<span class="img"><a href="gallary_work_read.do?gallNum=${gall.num }"><img src="upload_gallary/${gall.file }" alt="" /></a></span>
								<a href="gallary_work_read.do?gallNum=${gall.num }">
									<span class="txt">
										<p>${gall.title } </p>
										<p align="right" margin="1">${gall.author }</p>
									</span>
								</a>
							</li>		
							</c:forEach>
							<%
								int rowsPerPages = 3;
								int total_cnt = ((Integer) (pageContext.getAttribute("total_cnt"))).intValue();
								int total_pages = PageNumberingService.getInstance().getTotalPage(total_cnt, rowsPerPages);
								pageContext.setAttribute("t_pages", total_pages);
							%>
							<div class="pager">
								<div class="page_list">
									<c:forEach var="i" begin="1" end="${t_pages }">
										<span class="selected">
											<a href="gallary_work.do?current_page=${i }&type=0">
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
							<div class="page_move">
								<span><a href="#"></a></span>
								<div class="search">
									<a href="gallary_write.do" class="searching">등록</a>	
								</div>							 
							</div>
						</c:if>
												
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