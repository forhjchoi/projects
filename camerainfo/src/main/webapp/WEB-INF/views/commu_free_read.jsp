<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="header.jsp" %>
<c:set var="currPage" value="${current_page }" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<div id="wrap">
	<div id="location">
		<div class="box_960">
			<span>
				<a href="/" class="home"><span><img class="" src="img/icon_home.gif" alt=""> <b>HOME</b></span></a><img class="arrow" src="img/img_arrow_location.gif" alt="" width="12">
				<a href="/photoschool/summary"><span> 커뮤니티</span></a>
				<img class="arrow" src="img/img_arrow_location.gif" alt="" width="12">
				<span class="stay"><span><b> 자유게시판</b></span></span>
			</span>
		</div>
	</div>

	<!-- contents -->
	<div id="contents">
	<form id="phs_form" name="phs_from" action="/photoschool/board/view/3872" method="post">
	<input type="hidden" id="find_flag" name="find_flag" value="review">

		<!-- 실제 콘텐츠 영역 -->
		<div class="box_960_sub ">
			<h1 class="page_tit" style="letter-spacing:0;">자유게시판 </h1>

			<!-- 본문 영역 -->
			<div id="school_board">

				<div class="article">
					<ul class="sub_tit fixed ul01">
						<li class="first bdt1">
							<span class="th">제목</span>
							<span class="td">${article.title }</span>
						</li>
						
						
						<li class="second bdt2">
							<span class="th">작성자</span>
							<span class="td">${article.name }</span>
						</li>
					</ul>	
					
					<ul class="sub_tit fixed ul02">
						<li class="first">
							<span class="th">E-mail</span>
							<span class="td">${article.email }</span>
						</li>
						<li class="second">
							<span class="th">작성일</span>
							<span class="td">${article.wdate }</span>
						</li>
					</ul>					
					
					<ul class="sub_tit">
						<li class="first">
							<span class="th">번호</span>
							<span class="td">${article.idx }</span>
						</li>
						<li class="second">
							<span class="th">조회수</span>
							<span class="td">${article.hits }</span>
						</li>
					</ul>
					<ul class="sub_tit">
						<li class="first">
							<span class="th">첨부파일</span>
							<span class="td">${article.file }</span>
						</li>
					</ul>	
					<div class="body">
						<p>
						${article.content }
						</p>
					</div>
					
					<ul class="paging">
						<li class="pre">
							<span class="marker" style="width:100px;">
							<c:set var="articleCnt" value="${article.idx }" />
							<c:set var="maxCnt" value="${maxCnt }" />
							<c:set var="minCnt" value="${minCnt }" />
							<c:choose>
								<c:when test="${articleCnt < maxCnt }">
									<a href="commu_free_read.do?num=${articleCnt + 1 }" style="margin-left:0px; padding-left:8px;">
										<img src="img/bg_pre.gif" alt="">
										이전 글
									</a>
								</c:when>								
								<c:otherwise>
									<a href="" style="margin-left:0px; padding-left:8px;">
										<img src="img/bg_pre.gif" alt="">
										이전 글
									</a>
								</c:otherwise>
							</c:choose>
															
							</span>
						</li>
						<li class="next">
							<span class="marker">
								<c:choose>
									<c:when test="${articleCnt > minCnt }">
										<a href="commu_free_read.do?num=${articleCnt - 1 }">
											다음 글
											<img src="img/bg_next.gif" alt="">
										</a>		
									</c:when>
									<c:otherwise>
										<a href="">
											다음 글
											<img src="img/bg_next.gif" alt="">
										</a>
									</c:otherwise>
								</c:choose>
								
							</span>
						</li>
					</ul>
					<a href="commu_free.do?current_page=${currPage }" class="link_list" style="border:1px;">목록보기</a>
					<a href="commu_free_edit.do?num=${article.idx }" class="link_list" style="border:1px;">수정</a>
				</div>
			</div>
			<!-- //본문 영역 -->
		</div>	
		<!-- //실제 콘텐츠 영역 -->
	</form></div>
	<!-- //contents -->
	</div>

<jsp:include page="footer.jsp" />