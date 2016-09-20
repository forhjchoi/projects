<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form:form modelAttribute="memberDto" method="post" action="aa.ac">
		<form:input path="id" size="50" maxlength="50" /><br />
		<form:errors path="id" cssClass="error" />
		<form:input path="passwd" size="50" maxlength="50" /><br />
		<form:errors path="passwd" cssClass="error" />
		<form:input path="passwd2" size="50" maxlength="50" /><br />
		<form:errors path="passwd2" cssClass="error" />
		<form:input path="name" size="50" maxlength="50" /><br />
		<form:errors path="name" cssClass="error" />
		<form:input path="nickname" size="50" maxlength="50" /><br />
		<form:errors path="nickname" cssClass="error" />
		<form:input path="email" size="50" maxlength="50" /><br />
		<form:errors path="email" cssClass="error" />
		<form:input path="birth" size="50" maxlength="50" /><br/>
		<form:errors path="birth" cssClass="error" />
		<form:checkbox path="sex" value="0" label="0" /><br/>
		<form:errors path="sex" cssClass="error" />
		<form:hidden path="lc" value="1" /><br/>
		<form:errors path="lc" cssClass="error" />		
		
<!-- 		<input type="text" name="id" size="10"> -->
<!-- 		<input type="text" name="passwd" size="10"> -->
<!-- 		<input type="text" name="passwd2" size="10"> -->
<!-- 		<input type="text" name="name" size="10"> -->
<!-- 		<input type="text" name="nickname" size="10"> -->
<!-- 		<input type="text" name="email" size="10"> -->
<!-- 		<input type="date" name="birth" size="10"> -->
<!-- 		<input type="radio" name="sex" value="1"> -->
<!-- 		<input type="hidden" name="lc" value="1"> -->
		<input type="submit" value="submit">
	</form:form>

</body>
</html>