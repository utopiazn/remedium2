<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
	<title>UP</title>
</head>
<body>
	<form:form action="upload" method="POST" enctype="multipart/form-data">
		<input type="text" name="title"><br/>
		<input type="file" name="f"><br/>
		<input type="submit" value="전송"/>
	</form:form>
</body>
</html>
