<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp"	 %>
<div id="contents">
		<!-- 실제 콘텐츠 영역 -->
		<div class="box_960_sub ">

			<!-- 본문 영역 -->
			<div id="offedu_list">
			
				<div class="intro">
				</div>

				<table class="lecture_view">
					<caption></caption>
					<tr>
						<td colspan="2" class="body">
							<p><img title="" style="border: 0px solid currentColor; border-image: none;" alt="" src="upload_info/${camera.pic }" border="0" vspace="0" hspace="0"><br></p>
						</td>
					</tr>
					<tr>
						<th>브랜드</th>
						<td>${camera.brand }</td>
					</tr>
					<tr>
						<th>제품명</th>
						<td>${camera.name }</td>
					</tr>
					<tr>
						<th>화소</th>
						<td>${camera.pixel }</td>
					</tr>
					<tr>
						<th>렌즈</th>
						<td>${camera.lens }</td>
					</tr>
					<tr>
						<th>셔터</th>
						<td>${camera.shutter }</td>
					</tr>
					<tr>
						<th>셔터스피드</th>
						<td>${camera.shutter_speed }</td>
					</tr>
					<tr>
						<th>촬영모드</th>
						<td>${camera.record_type }</td>
					</tr>
					<tr>
						<th>ISO</th>
						<td>${camera.iso }</td>
					</tr>
					<tr>
						<th>Bluetooth</th>
						<td>${camera.bluetooth }</td>
					</tr>
					
				</table>		
					
				<a href="javascript:history.back();" class="link_list">목록가기</a>
			</div>
			<!-- //본문 영역 -->
		</div>	
		<!-- //실제 콘텐츠 영역 -->
	</div>
<jsp:include page="footer.jsp" />