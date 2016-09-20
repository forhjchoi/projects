<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
			<h1 class="page_tit" style="letter-spacing:0;">포토스쿨 공지사항 <span></span></h1>
			<!-- 본문 영역 -->
			<div id="press_list">
			
				<h2 class="blind">공지사항</h2>
				
				<p class="intro">니콘이미징코리아에서 진행하는 포토스쿨의 다양한 소식을 전합니다.<br />니콘 포토스쿨의
				입체적인 교육시스템을 통해 보다 윤택한 사진 생활에 도움이 되시길 바랍니다.</p>
				
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
					<caption>포토스쿨 공지사항 목록</caption>
					<colgroup>
						<col style="width:15%;" />
						<col style="width:65%;" />
						<col style="width:20%;" />
					</colgroup>
					<tr>
						<th scope="col">번호</th>
						<th scope="col">제목</th>
						<th scope="col" class="bg0 bdr0">등록일</th>
					</tr>
					
					
					
						  
				  		  
						  <tr>
							<td>329</td>
							<td class="align_l">
								<a href="javascript:viewnotice('329');">포토스쿨 8월 특설반 개설 안내</a>
							</td>
							<td class="bdr0">2016-08-01</td>
						  </tr>
						  
						  <tr>
							<td>328</td>
							<td class="align_l">
								<a href="javascript:viewnotice('328');">포토스쿨 8월 강좌 등록 안내</a>
							</td>
							<td class="bdr0">2016-07-26</td>
						  </tr>
						  
						  <tr>
							<td>327</td>
							<td class="align_l">
								<a href="javascript:viewnotice('327');">포토스쿨 7월 강좌 등록 안내</a>
							</td>
							<td class="bdr0">2016-06-28</td>
						  </tr>
						  
						  <tr>
							<td>326</td>
							<td class="align_l">
								<a href="javascript:viewnotice('326');">포토스쿨 6월 강좌 및 제 38회 정기출사 안내</a>
							</td>
							<td class="bdr0">2016-05-24</td>
						  </tr>
						  
						  <tr>
							<td>325</td>
							<td class="align_l">
								<a href="javascript:viewnotice('325');">포토스쿨 5월 강좌 등록 안내</a>
							</td>
							<td class="bdr0">2016-04-29</td>
						  </tr>
						  
						  <tr>
							<td>324</td>
							<td class="align_l">
								<a href="javascript:viewnotice('324');">포토스쿨 4월 강좌 등록 안내</a>
							</td>
							<td class="bdr0">2016-03-30</td>
						  </tr>
						  
						  <tr>
							<td>323</td>
							<td class="align_l">
								<a href="javascript:viewnotice('323');">포토스쿨 3월 강좌 및 제 37회 정기출사 안내</a>
							</td>
							<td class="bdr0">2016-02-26</td>
						  </tr>
						  
						  <tr>
							<td>322</td>
							<td class="align_l">
								<a href="javascript:viewnotice('322');">포토스쿨 2월 강좌 등록 안내</a>
							</td>
							<td class="bdr0">2016-01-25</td>
						  </tr>
						  
						  <tr>
							<td>321</td>
							<td class="align_l">
								<a href="javascript:viewnotice('321');">포토스쿨 2016년 1월 강좌 등록 안내</a>
							</td>
							<td class="bdr0">2015-12-22</td>
						  </tr>
						  
						  <tr>
							<td>320</td>
							<td class="align_l">
								<a href="javascript:viewnotice('320');">포토스쿨 12월 강좌 등록 안내</a>
							</td>
							<td class="bdr0">2015-11-24</td>
						  </tr>
						  
						
						
					
					
				</table>
				
				<div class="pager">
					<div class="page_list">
						<!-- PC 이전블럭  -->
						
							<span class="disabled"><a>〈</a></span>
						
						
						
						<!-- page -->
						
							
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
							
						
						<!-- page -->
	
						<!-- PC 다음블럭 -->
							
						
							<span><a href="javascript:movePage('11');">〉</a></span>
						
					</div>
					
					<div class="page_move">
						<!-- mobile 이전 -->
						
							<span><a href="#">&lt;</a></span> 
						
						
						<!--mobile  이전 -->
					
						<!-- page input 입력 -->
							<input type="number"  id="page" name="page" title="이동 페이지 입력"  value="1" onkeyup="javascript:onlyDigit(this);" class="input"  maxlength="4" min="1" max="31" > / 31
						<!-- mobile 다음  -->
						
						
							<span><a href="javascript:movePage('2');">&gt;</a></span>
						
						<!-- mobile 다음 -->
		           			<a href="javascript:movePage1();" class="submit">이동</a>
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