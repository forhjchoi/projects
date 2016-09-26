<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!-- <html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko" lang="ko"> -->
<head>
<META HTTP-EQUIV="Expires" CONTENT="0">
<META HTTP-EQUIV="Pragma" CONTENT="no-cache">
<META HTTP-EQUIV="Cache-Control" CONTENT="no-cache">
<meta name="robots" content="" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />
<meta name="format-detection" content="telephone=no,address=no,email=no" />
<link rel="shortcut icon" href="img/favicon.ico" />

<link rel="stylesheet" href="css/product.css" />
<link rel="stylesheet" href="css/company.css" />
<link rel="stylesheet" href="css/company_hy.css" />
<link rel="stylesheet" href="css/membership.css" />
<link rel="stylesheet" href="css/event.css" />
<link rel="stylesheet" href="css/school.css" />
<link rel="stylesheet" href="css/common.css" />
<link rel="stylesheet" href="css/reset.css" />
<link rel="stylesheet" href="css/main.css" />
<link rel="stylesheet" href="css/layout.css" />
<link rel="stylesheet" href="css/mynikon.css" />
<script type="text/javascript" src="js/jquery-1.11.3.js"></script>
<script type="text/javascript" src="js/index.js"></script>
<script type="text/javascript" src="js/common.js"></script>

<title>Camera Info</title>
<!--[if lt IE 9]>
 <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->
</head>
<body>
	<div id="wrap">
		<!--Header-->

		<!-- header -->
		<header>
			<div id="header">
				<div class="box_960">
					<a href="." class="logo"><img
						src="img/logo.png" alt="" /></a> <span
						class="top_area"> 
					<span class="member_link">
						<c:choose>
							<c:when test="${memberInfo == null }">
								<a href="login.do">로그인</a> &nbsp; | &nbsp;<a href="join.do">회원가입</a>
							</c:when>
							<c:otherwise>
								<a href="logout.do">로그아웃</a>  | <a href="checkPasswd.do">회원정보수정</a>
							</c:otherwise>
						</c:choose>
					</span>
					</span>
					<!-- 모바일 메뉴버튼 -->
					<span id="btn_menu"> <a href="#" id="menu"
						class="mobile_menu"><img src="img/btn_menu.png" alt="메뉴" /></a> <a
						href="#" id="close" class="hidden"><img
							src="img/btn_close.png" alt="닫기" /></a>
					</span>
					<!-- //모바일 메뉴버튼 -->
				</div>

				<div class="gnb_area">
					<div class="box_960">
					
						<h2 class="blind">주요메뉴</h2>
						<%--
						<a href="." class="go_home  stay">HOME</a>
						--%> 
						<ul class="mobile_open_menu" style="margin-left:0px;">
							<li><a href="login.do"><img
									src="img/icon_login.png" alt="" width="17" /> 로그인</a></li>
							<li><a href="join.do"><img src="img/icon_join.png"
									alt="" width="18" /> 회원가입</a></li>

						</ul>
						
						 
						<ul class="mobile_general_menu" style="margin-left:0px;">
							<li class="general_sub" style="width:137px;"><a
								href="." class="depth1"><h3>제품정보</h3></a>
								<ul>
									<li><a href="info_camera.do?current_page=1&br=0">카메라</a></li>
									<li><a href="info_lens.do?current_page=1&br=0">렌즈	</a></li>
								</ul>
							</li>
							<li class="general_sub" style="width:137px;"><a
								href="" class="depth1"><h3>뉴스</h3></a>
								<ul>
									<li><a href="news_camera.do?current_page=1">카메라</a></li>
									<li><a href="news_lens.do?current_page=1">렌즈</a></li>
								</ul>
							</li>
							<li class="general_sub" style="width:137px;"><a
								href="" class="depth1"><h3>리뷰</h3></a>
								<ul>
									<li><a href="review_camera.do?current_page=1">카메라</a></li>
									<li><a href="review_lens.do?current_page=1">렌즈</a></li>
								</ul>
							</li>
							<li class="general_sub" style="width:137px;"><a
								href="commu_free.do" class="depth1"><h3>커뮤니티</h3></a>
								<ul>
									<li><a href="commu_free.do">자유게시판</a></li>
									<li><a href="commu_qna.do">질문답변</a></li>
									<li><a href="commu_data.do">자료실</a></li>
									<li><a href="commu_tips.do">유저팁</a></li>
								</ul>
							</li>
							<li class="general_sub" style="width:137px;"><a
								href="" class="depth1"><h3>갤러리</h3></a>
								<ul>
									<li><a href="gallary_best.do?current_page=1">베스트 갤러리</a></li>
									<li><a href="gallary_work.do?current_page=1&type=0">작품 갤러리</a></li>
									<li><a href="gallary_mobile.do?current_page=1&type=0">모바일 갤러리</a></li>
								</ul>
							</li>
							<li class="general_sub" style="width:137px;"><a
								href="." class="depth1"><h3>브랜드별</h3></a>
								<ul>
									<li><a href=".">니콘</a></li>
									<li><a href=".">캐논</a></li>
									<li><a href=".">삼성</a></li>
								</ul>
							</li>
							<li class="general_sub" style="width:137px;"><a
								href="." class="depth1"><h3>이벤트</h3></a>
								<ul>
									<li><a href=".">공모전</a></li>
									<li><a href=".">info 이벤트</a></li>
								</ul>
							</li>
						</ul>
					</div>
				</div>

				<!-- 모바일 메뉴 -->
				<div class="gnb_area_m nav" id="gnb_menu">
					<div class="box_960">
						<h2 class="blind">주요메뉴</h2>
						<a href="." class="go_home stay">HOME</a>
						<ul class="mobile_open_menu">
							<li><a href="login.do"><img
									src="img/icon_login.png" alt="" width="17" /> 로그인</a></li>
							<li class="join.do"><a href="/join/age"><img
									src="img/icon_join.png" alt="" width="18" /> 회원가입</a></li>

						</ul>
						<ul class="mobile_general_menu">
							<li class="menu01"><a href="javascript:void(0)"><h3>제품정보</h3></a>
								<div class="sub_menu_960">
									<div>
										<ul class="icon_menu">
											<li><a href="http://www.nikon-image.co.kr/product"
												class="bdr">제품정보 메인</a></li>
											<li><a href="http://www.nikon-image.co.kr/product/dslr">SLR
													카메라</a></li>
											<li><a
												href="http://www.nikon-image.co.kr/product/mirrorless"
												class="bdr">미러리스 카메라</a></li>
											<li><a
												href="http://www.nikon-image.co.kr/product/compact">콤팩트
													카메라</a></li>
											<li><a
												href="http://www.nikon-image.co.kr/product/nikkor"
												class="bdr">렌즈</a></li>
											<li><a
												href="http://www.nikon-image.co.kr/product/speedlight">스피드라이트</a></li>
											<li><a
												href="http://www.nikon-image.co.kr/product/binoculars"
												class="bdr">쌍안경 / etc</a></li>
											<li><a
												href="http://www.nikon-image.co.kr/product/accessary">액세서리</a></li>
											<!-- li><a href="/product/actioncam" class="bdr">액션캠</a></li -->
											<li><a
												href="http://www.nikon-image.co.kr/product/software"
												class="bdr">소프트웨어</a></li>
											<li><a href="http://www.nikon-image.co.kr/catalog/list/">카탈로그</a></li>
											<li><a
												href="http://www.nikon-image.co.kr/specialcontents/video"
												class="bdr">스페셜 콘텐츠</a></li>
											<li><a href="http://www.nikon-image.co.kr/nikonshop">판매점</a></li>
										</ul>
										<div class="img_details">
											<span><img src="img/icon_menu01.png" class="small"
												alt="" /> DSLR 카메라</span> <i><img src="img/img_menu01.png"
												alt="" /></i>
											<p>
												전문가를 위한 FX 포맷부터 입문자를 위한 DX 포맷까지! 니콘 최고의 기술이 집약된 다양한 라인업의 SLR
												카메라, <b>D Series</b>
											</p>
										</div>
									</div>
								</div></li>
							<li class="general_sub"><a href="javascript:void(0)"><h3>이벤트</h3></a>
								<ul>
									<li><a href="http://www.nikon-image.co.kr/event/ing/list">진행
											중인 이벤트</a></li>
									<li><a href="http://www.nikon-image.co.kr/event/end/list">종료
											이벤트 & 당첨자 발표</a></li>
								</ul></li>
							<li class="general_sub"><a href="javascript:void(0)"><h3>고객지원</h3></a>
								<ul>
									<li><a href="http://support.nikon-image.co.kr">고객지원 메인</a></li>
									<li><a
										href="http://support.nikon-image.co.kr/genuine/info/regist">정품등록</a></li>
									<li><a
										href="http://support.nikon-image.co.kr/afterservice/target">A/S
											안내</a></li>
									<li><a href="http://support.nikon-image.co.kr/faq">제품
											활용정보</a></li>
									<li><a
										href="http://downloadcenter.nikonimglib.com/ko/index.html"
										target="_blank">다운로드</a></li>
									<li><a href="http://support.nikon-image.co.kr/qna/write">고객의
											소리</a></li>
								</ul></li>
							<li class="general_sub"><a href="javascript:void(0)"><h3>E
										Shop</h3></a>
								<ul>
									<li><a href="http://eshop.nikon-image.co.kr">E Shop 메인</a></li>

									<li><a href="http://eshop.nikon-image.co.kr/outlet">아웃렛</a></li>
									<li><a href="http://eshop.nikon-image.co.kr/timesale">타임세일</a></li>
									<li><a href="http://eshop.nikon-image.co.kr/event/list">이벤트</a></li>
								</ul></li>
							<li class="general_sub"><a href="javascript:void(0)"><h3>포토스쿨</h3></a>
								<ul>
									<li><a
										href="http://www.nikon-image.co.kr/photoschool/summary">포토스쿨
											안내</a></li>
									<li><a
										href="http://www.nikon-image.co.kr/photoschool/notice/list/">공지사항</a></li>
									<li><a
										href="http://www.nikon-image.co.kr/photoschool/offline/list/">오프라인
											강의</a></li>
									<!-- li><a href="https://www.nikon-image.co.kr/photoschool/online/">온라인 강의</a></li -->
									<li><a
										href="http://www.nikon-image.co.kr/photoschool/board/list">포토스쿨
											게시판</a></li>
									<li><a
										href="http://www.nikon-image.co.kr/photoschool/mypage">My
											포토스쿨</a></li>
								</ul></li>
						</ul>
					</div>
				</div>
			</div>
		</header>