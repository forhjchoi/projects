<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="header.jsp" %>

   <form name="notice_frm" id="notice_frm" method="get" action="">
	<div id="location">
		<div class="box_960">
			<span>
				<a href="/" class="home"><span><img class="" src="img/icon_home.gif" alt="" /> <b>HOME</b></span></a>
				<img class="arrow" src="img/img_arrow_location.gif" alt="" width="12" />
				<span class="stay"><span><b> 커뮤니티</b></span></span>
				<img class="arrow" src="img/img_arrow_location.gif" alt="" width="12" />
				<span class="stay"><span><b> 자유게시판</b></span></span>
			</span>
		</div>
	</div>
    
<div id="contents">
		<!-- 실제 콘텐츠 영역 -->
		<div class="box_960_sub ">
			<h1 class="page_tit" style="letter-spacing:0;">자유게시판 <span></span></h1>
			<!-- 본문 영역 -->
			<div id="press_list">			
				<div class="search">
					<select name="find_type" id="find_type" title="검색분류">
						<option value="all"selected>전체</option>
						<option value="subject">제목</option>
						<option value="content">내용</option>
					</select>
					<input type="text" name="find_txt" id="find_txt" value="" maxlength="100" class="" title="검색어" style="width:155px;" />
					<a href="javascript:;" onclick="javascript:goSearch();" class="searching">검색</a>
				</div>
				
				<table class="press">
					<colgroup>
						<col style="width:15%;" />
						<col style="width:60%;" />
						<col style="width:15%;" />
						<col style="width:10%;" />
					</colgroup>
					<tr>
						<th scope="col">번호</th>
						<th scope="col">제목</th>
						<th scope="col">작성자</th>
						<th scope="col" class="bg0 bdr0">조회수</th>
					</tr>
					<c:forEach var="free" items="${freeList }">					
					<tr>
						<td>${free.idx }</td>
						<td class="align_l" style="text-align:center;">
							<a href="commu_free_read.do?num=${free.idx }">${free.title }</a>
						</td>
						<td>${free.name }</td>
						<td class="bdr0">${free.hits }</td>
					</tr>
					</c:forEach>	  
				</table>
				
				<div class="pager">
					<div class="page_list">
							<span class="disabled"><a>〈</a></span>
								<span class="selected"><a>1</a></span>
							<span><a href="javascript:movePage('2');">2</a></span>
							<span><a href="javascript:movePage('3');">3</a></span>
							<span><a href="javascript:movePage('4');">4</a></span>
							<span><a href="javascript:movePage('5');">5</a></span>
							<span><a href="javascript:movePage('6');">6</a></span>
							<span><a href="javascript:movePage('7');">7</a></span>
							<span><a href="javascript:movePage('8');">8</a></span>
							<span><a href="javascript:movePage('9');">9</a></span>
							<span><a href="javascript:movePage('10');">10</a></span>
							<span><a href="javascript:movePage('11');">〉</a></span>
						
					</div>
					
					<div class="page_move">
						<c:if test="${memberInfo.id != null }">
							<span><a href="#">&lt;</a></span>
							<div class="search">
								<a href="commu_free_write.do" class="searching">등록</a>	
							</div>
						</c:if>					 
					</div>
				</div>
				
			</div>
			<!-- //본문 영역 -->
		</div>	
		<!-- //실제 콘텐츠 영역 -->
	</div>
	<!-- //contents -->
	</form>
<jsp:include page="footer.jsp" />