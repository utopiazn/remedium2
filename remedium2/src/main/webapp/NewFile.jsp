<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
 <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>   
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

<form:form name="myForm" action="joinAddForm" >

	 <input type="text" name="memberID"  id="memberID" size="40" >
	 
	 <input type="submit">
</form:form>

</body>
</html>