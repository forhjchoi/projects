<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="info_write_ok.do" method="post" enctype="multipart/form-data" name="infoForm" id="infoForm">
	브랜드 : <select name="brand" form="infoForm">
				<option value="Nikon">니콘</option>
				<option value="Canon">캐논</option>
				<option value="Samsung">삼성</option>
			</select><br/>
	제품명 : <input type="text" name="name" /><br/>
	상품사진 : <input type="file" name="pic" /><br/>
	필터사이즈 : <input type="text" name="filter_size" /><br/>
	무게 : <input type="text" name="weight" /><br/>
	최대 촬영 비율 : <input type="text" name="max_shot_ratio" /><br/>
	<input type="submit" value="submit" />
</form>
</body>
</html>