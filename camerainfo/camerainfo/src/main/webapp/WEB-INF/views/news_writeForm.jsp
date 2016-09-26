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
<form  id="newsForm" name="newsForm" action="news_write_ok.do" enctype="multipart/form-data" method="post">
	<select name="type" form="newsForm">
		<option value="0">카메라</option>
		<option value="1">렌즈</option>
	</select><br/>
	제목 : <input name="title" size="100" /><br/>
	내용 : <textarea rows="6" cols="100" name="content" form="newsForm"></textarea><br/>
	등록일 : <input type="date" name="regdate" /><br/>
	파일 : <input name="pic" type="file" /><br/>
	
	<a href="javascript:document.getElementById('newsForm').submit()">확인</a>
</form>
<%--
<form name="newsForm" action="news_camera_write_ok.do" enctype="multipart/form-data" method="post">
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