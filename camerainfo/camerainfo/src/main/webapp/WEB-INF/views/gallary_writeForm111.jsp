<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form id="gallForm" name="gallForm" action="gallary_write_ok.do" enctype="multipart/form-data" method="post">
	<select name="galltype" form="gallForm">
		<option value="0">작품</option>
		<option value="1">모바일</option>
	</select><br/>
	<select name="type" form="gallForm">
		<option value="0">풍경</option>
		<option value="1">여행</option>
		<option value="2">음식</option>
		<option value="3">동물</option>
	</select><br/>
	제목 : <input name="title" size="100" /><br/>
	내용 : <textarea rows="6" cols="100" name="content" form="gallForm"></textarea><br/>
	파일 : <input name="pic" type="file" /><br/>
	<input type="hidden" name="author" value="${memberInfo.id }"/>
	
	<a href="javascript:document.getElementById('gallForm').submit()">확인</a>
</form>
<%--
<form name="" action="news_camera_write_ok.do" enctype="multipart/form-data" method="post">
	<input type="text" name="type" size="10"/>타입<br/>
	<input type="text" name="title" size="10" />제목<br/>
	<input type="text" name="content" size="10"/>내용 <br/>
	<input type="text" name="regdate" size="10" />날짜 <br/>
	<input type="file" name="file" />파일<br/>
	<input type="submit" value="s"/>
</form>
 --%>
</body>
</html>