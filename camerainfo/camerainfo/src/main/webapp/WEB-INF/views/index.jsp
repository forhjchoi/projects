<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<jsp:include page="header.jsp" />




		<link rel="stylesheet" href="css/main.css" />
		
		<!-- contents -->
<div id="contents">
		<div class="main_bnr_area">
			<div class="banner_960" style="background-image: url('img/main_banner.png');">
			</div>
			
			<div class="bnr_wrap">
				<br/><br/>
			</div>
		</div>

		<div class="box_960">

		<div class="box_basic">
				<div class="box_notice">
					<h2 style="cursor: pointer;" onclick="javascript:viewnoticelst();">자유게시판</h2>
						<ul class="notice_list">						
						<li>
							<span class="list_date">2016-08-24</span>
							<a href="javascript:viewnotice('649');">게시글1</a>
						</li>
						<li>
							<span class="list_date">2016-08-22</span>
							<a href="javascript:viewnotice('649');">게시글2</a>
						</li>
						</ul>
					<a href="javascript:viewnoticelst();" class="view_more" style="margin-left:3px;text-decoration:underline;">더 보기</a>
				</div>
				
				<div class="box_event">
					<h2 style="cursor: pointer;" onclick="javascript:goeventlst();">베스트 갤러리</h2>
					
						<dl id="image_event_0" class="event_list" >
							<dt class="event_image" style="cursor: pointer;" onclick="javascript:openEvent(337);">
								<img src="img/풍경1.jpg" alt=""/>
							</dt>
							<dd>
								<span class="event_title">
									풍경사진 
								</span>
								<span class="event_text">
									풍경사진입니다
								</span>
							</dd>
						</dl>
					<span class="paging" id="event_paging">						
						<a href="gallary_best.do?current_page=1"  style="margin-left:3px;text-decoration:underline;">더 보기</a>
					</span>
					
				</div>
			</div>
			<div class="box_basic goods_wrap">
				
					<div class="main_goods box_goods" onclick="javascript:location.href='/product/nikkor/AF-S_NIKKOR_105mm_f/1.4E_ED'">					
					<span class="img">
						<img class="shadow" src="img/SLR카메라4.png" alt="" />						
					</span>
					<p>
						<span class="goods_tit"></span>
						<a href="http://www.nikon-image.co.kr/product/nikkor/AF-S_NIKKOR_105mm_f/1.4E_ED" class="goods_name">카메라</a>
							<span class="txt"></span>
							<a href="http://www.nikon-image.co.kr/product/nikkor/AF-S_NIKKOR_105mm_f/1.4E_ED" class="go">자세히 보기</a>
					</p>
					</div>
				
					<div class="small_goods box_goods mr_0 mb_0" onclick="javascript:location.href='/product/dslr/D810'">
					<span class="img">
						<img class="no_shadow" src="img/미러리스카메라2.png" alt="" />
					</span>
					<p>
						<span class="goods_tit">카메라</span>
						<a href="http://www.nikon-image.co.kr/product/dslr/D810" class="goods_name">미러리스</a>
					</p>
					</div>
				
					<div class="small_goods box_goods mb_0" onclick="javascript:location.href='/product/compact/COOLPIX_A100'">
					<span class="img">
						<img class="no_shadow" src="img/줌렌즈4.PNG" alt="" />
					</span>
					<p>
						<span class="goods_tit">렌즈</span>
						<a href="http://www.nikon-image.co.kr/product/compact/COOLPIX_A100" class="goods_name">줌렌즈</a>
					</p>
					</div>
				
					<div class="small_goods box_goods last_goods mr_0" onclick="javascript:location.href='/product/software/SnapBridge'">
					
					
					<span class="img">
						
						<img class="no_shadow" src="img/SLR카메라4.png" alt="" />
					</span>
					<p>
						<span class="goods_tit">카메라</span>
						<a href="http://www.nikon-image.co.kr/product/software/SnapBridge" class="goods_name">SLR	</a>
						
					</p>
					</div>
			</div>
		</div>	

	</div>
	
<jsp:include page="footer.jsp" />