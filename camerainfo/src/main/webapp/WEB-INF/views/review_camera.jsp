<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="header.jsp" %>
<%@ page import="com.mycom.camerainfo.service.PageNumberingService" %>
<c:set var="adm" value="admin" />
<c:set var="current_page" value="${current_page }" />
<c:set var="total_cnt" value="${totalCnt }" />

<%
	int c_page = Integer.parseInt((String) (pageContext.getAttribute("current_page")));
	pageContext.setAttribute("c_page", c_page);
%>
<div id="contents">

		<!-- 실제 콘텐츠 영역 -->
		<div class="box_960_sub ">
			<h1 class="page_tit" style="letter-spacing:0;">리뷰 <span>Camera Reviews</span></h1>
		
			<!-- 본문 영역 -->
			<div id="about_school">	

				<h2 class="blind"></h2>

				<div class="table_wrap">
					<h3 class="tit_square"></h2>
					<ul class="lecture_list">					
						
						<c:forEach var="review" items="${reviewList }">
							<li  class="bdb0">
								<div class="txt" style="padding:20px 20px 0 10px;">
									<h3>${review.title }</h3>
									<ul>
										<li><span class="tit"></span> <span class="body"></span></li>
										<li><span class="tit"></span> <span class="body">${review.content }</span></li>
										<li><span class="tit"></span> <span class="body"></span></li>
										<li><span class="tit"></span> <span class="body"></span></li>
										<li><span class="tit"></span> <span class="body"></span></li>		
										<li><span class="tit"></span> <span class="body"></span></li>
									</ul>
								</div>
								<div class="btns">
									<a href="review_read.do?num=${review.getNum() }" class="details">상세보기</a>							
								</div>
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
											<a href="review_camera.do?current_page=${i }">
											<c:if test="${i == c_page }" ><b/></c:if>
											${i }
											<c:if test="${i == c_page }" ><b/></c:if>											
											</a>
										</span>
									</c:forEach>										
									</div>
								</div>
					</ul>
					<c:if test="${memberInfo.id == adm }">
							<div class="tabMen" style="position:relative;">
							<a href="review_write.do" class="details" style="position:absolute; bottom:0; right:0"><h1>리뷰	 등록</h1></a>
						</c:if>
									
				</div>

			</div>
		</div>	

	</div>
	<!-- //contents -->

<jsp:include page="footer.jsp" />