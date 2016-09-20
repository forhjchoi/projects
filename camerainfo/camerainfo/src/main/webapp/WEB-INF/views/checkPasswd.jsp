<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="header.jsp" %>

		<!--//Header-->
		
<script type="text/javascript">
function cancel(){
	location.href=".";
}

function goConfirm(){
	if ($("#passwd").val() == "") {
		alert("비밀번호를 입력해 주십시오.");
		$("#passwd").focus();
		return;
	}
 	$('#passwd_checkForm').submit();
}
</script>
	<div id="location">
		<div class="box_960">
			<span>
				<a href="." class="home"><span><img class="" src="img/icon_home.gif" alt="" /> <b>HOME</b></span></a>
				<img class="arrow" src="img/img_arrow_location.gif" alt="" width="12" />
				<span class="stay"><span><b> 회원정보 변경</b></span></span>
			</span>
		</div>
	</div>

	<!-- contents -->
	<div id="contents">
		<!-- 실제 콘텐츠 영역 -->
		<div class="box_960_sub ">
			<h1 class="page_tit" style="letter-spacing:0;">회원정보 변경 <span>Edit personal Information</span></h1>

			<!-- 본문 영역 -->
			<div id="edit_information">
				<h2 class="blind">회원정보 변경</h2>
				
				<form id="passwd_checkForm" name="passwd_checkForm" action="memberModify.do" method="post">
				<div class="pw_confirm_wrap">
					<h3>회원 비밀번호 확인</h3>
					<p>정보 변경 전 비밀번호 확인으로 정보를 보호합니다.</p>
					<ul>
						<li>
							<label for="pw_confirm">비밀번호 확인</label><input type="password" name="passwd" id="passwd" maxlength="12" class="" title="비밀번호" placeholder="비밀번호" />
						</li>
					</ul>
					<div class="pw_confirm_btn_wrap">
						<a href="javascript:;" onclick="javascript:goConfirm();" class="confirm"> 확인 </a>
						<a href="javascript:;" onclick="javascript:cancel();" class="cancel"> 취소 </a>
					</div>
				</div>
			</form>
				
			</div>
			<!-- //본문 영역 -->
		</div>	
		<!-- //실제 콘텐츠 영역 -->
	</div>
	<!-- //contents -->

		
		







<script type="text/javascript">
<!--
function showEmailPolicy(){
	if($('div.email_security_layer_popup').is(':visible')){
		$('div.email_security_layer_popup').hide();
	}else{
		$('div.email_security_layer_popup').show();
	}
}
function cmsPopup(){
	if($('div.cms_layer_popup').is(':visible')){
		$('div.cms_layer_popup').hide();
	}else{
		$('div.cms_layer_popup').show();
	}
}
$(document).ready(function(){
	$("#moresite").change(function(){
		var selectval = $("#moresite option:selected").val();
		if(selectval=="1"){
			window.open('http://www.nikon.com/products/precision/index.htm');
		}if(selectval=="2"){
			window.open('http://www.nikon-inst.co.kr');	
		}
		else if(selectval=="3"){
			window.open('http://www.nikon-inst.co.kr');	
		}
	});
});
//-->

</script>

<!-- <div id="emoticon_div" style="display:none;">
	<input type="button" value="이모티콘이미지로 교체예정입니다. 이벤트 참여하시려면 이 버튼을 클릭해주세요!" onclick="javascript:goRenewEvent();">
	<br/>
	<br/>
	<input type="button" value="오늘 하루 그만보기 이미지 교체예정입니다. 하루 그만보시려면 이 버튼을 클릭해주세요!" onclick="javascript:CloseRenewEvent();">
</div> -->

	<div id="emoticon_div" style="display:none;">
	
		
		
		
		
	</div>

		<!-- CMS 팝업 -->
	<div class="cms_layer_popup" style="display: none;">
		<div id="ccmnp_wrap">
			<h2><span>CMS</span></h2>
			<a href="javascript:;" onclick="javascript:cmsPopup();" class="layer_popup_close_btn"><img src="img/img_close.png" width="26" alt="닫기"></a>
			<ul>
				<li>
					<img src="img/commonimg_cmsn1.jpg" alt="CMS 인증 마크 (주) 니콘 이미징 코리아" />
				</li>
				<li class="tit_txt">
					<h3>CMS:2008 (KS Q ISO 9001:2009/ISO 9001:2008/CMS:2008)<br/>인증 <span>3회 연속</span> 획득</h3>
					<b>항상 니콘 제품을 이용해 주셔서 진심으로 감사드립니다. <br/>
					니콘이미징코리아에서는 2009년 2월부터 한국능률협회인증원으로부터 <br/>
					CMS:2008(KS Q ISO9001:2009/ISO9001:2008/CMS:2008)인증을 획득하였습니다.</b>
				</li>
				<li>
					<h4><img src="img/commonimg_cmsn3.gif"> Contact Management System Certification / 컨택센터 운영관리 시스템이란?</h4>
					<p>
					고객관계관리(CRM) 서비스를 제공하는 전문기업 및 단체들의 품질 경영 시스템, 운영 프로세스 및 운영성과를 국제표준인 품질경영시스템 요구사항 (ISO 9001:2008)과 컨택센터 글로벌기준 요구사항(CMS : 2008)으로 평가하여 객관적인 제3자 공인 인증기관이 인증해주는 제도입니다.
					</p>
					<ul>
						<li>
						고객관계관리 서비스(콜센터)를 대상으로 CMS:2008 인증을 신청한 기업 및 단체에 대하여 해당분야 전문가로 구성된 한국능률협회인증원의 심사단이 공정하고 객관적인 방법으로 평가를 실시함.
						</li>
						<li>
						인증희망기업(사업장)또는 기관의 전반적인 콜센터 운영시스템 및 품질수준을 진단하고, 개선 방향을 제시함
						</li>
						<li>
						운영시스템이 국제표준 품질경영시스템에 적합하고, 품질이 우수한 기업 또는 기관에 대하여 한국능률협회인증원에서 인증서를 교부하고, 우수업체로 공표하는 제도
						</li>
					</ul>
				</li>
				<li>
					<h4><img src="img/commonimg_cmsn3.gif"> 운영기구</h4>
					<p>
					- 인정기관 : 한국산업경영시스템학회<br />
					- 인증기관 : 한국능률협회인증원 
					</p>
				</li>
				<li>
					<h4><img src="img/commonimg_cmsn3.gif"> 인증효과</h4>
					<p>
					- 컨택센터(콜센터)업무표준화를 통한 업무정확도 향상 및 고객 신뢰도 제고<br />
					- 컨택센터(콜센터) 운영환경 변화의 신속,정확한 대응
					</p>
				</li>
				<li>
					<img src="img/commonimg_cmsn5.jpg" alt="(좌)컨택경영시스템 인증서 (우)품질경영시스템 인증서" />
				</li>
				<li>
					앞으로도 니콘이미징코리아에서는 CMS:2008 (KS Q ISO9001:2009/ISO9001:2008/CMS:2008)<br/>
					인증 3회 연속 획득을 계기로 고객 감동을 실천하기 위해 더욱 최선을 다하겠습니다.
				</li>
			</ul>
		</div>
	</div>
	<!-- // CMS 팝업 -->

	<div class="email_security_layer_popup" style="display: none;">
		<div id="email_security">
			<h2><span>전자우편 무단수집거부</span></h2>
			<a href="javascript:;" onclick="javascript:showEmailPolicy();" class="layer_popup_close_btn"><img src="img/img_close.png" alt="닫기" width="26"></a>
			<div class="email_security_txt">
				본 웹사이트는 게시된 이메일 주소가 <strong>전자우편 수집 프로그램이나 그 밖의 기술적 장치를 이용하여 무단 수집되는 것을 거부</strong>합니다.
				이를 위반시 <strong>『정보통신망이용촉진및정보보호등에관한법률』등에 의해 처벌</strong> 받을 수 있습니다.
			</div>
		</div>
	</div>
	
<!-- footer -->
	<jsp:include page="footer.jsp" />