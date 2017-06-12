<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">

<link href="css/main.css" rel="stylesheet" style="text/css">
<style type="text/css">
.subject{
margin-top: 40px; 
line-height: 2em;
color: black;
}
.content{
padding-top:5px; padding-bottom:5px;
		display: block;
	 	font-weight: bold;
	 	text-decoration: none;
	 	margin: 5px;
	 	padding: 10px;
	 	font-family: '돋음', sans-serif;
	 	font-size: 14px;
	 	color: #ffffff;
	 	text-shadow: 0 1px 1px #000;	 	
	 	
	 	background: #202f58;	 	 
	 	background: linear-gradient(#1a1a1a 0%,#202f58 100%); 
}

.line1{
width:25%; float:left; background-size: cover;
}
.line2{
width:70%; float:left; margin:5px;
}
.line3{
width:95%; float:left; clear: left; text-align: right; margin: 5px; 
}
.button{
    border: 3px solid #202f58;
    background-color : #202f58;
    display: inline-block;
    cursor: pointer;
    font-size: 13px;
    text-decoration: none;
    color: white;
 
}
 
.content b a{
color: white;
}

</style>


</head>
<body>
	<div class="subject">
	<h2 align="center" >편의시설</h2>
	<hr align="center" width="40%" size="1" color="gray">
	</div>
	<div class="line3">
	<c:if test="${session.userAdmin == 1 }">	
	<input class="button" type="button" value="시설추가"onClick="location.href='facilitiesInsertForm.action'">
	
	</c:if>
	</div>
	<c:forEach var="i" items="${list}" begin="0" varStatus="status">
		<div class="line1">
		<div class="content"><strong>시설이름</strong></div>
		<div class="content">
			<b><a href='/remedium/facilitiesView.action?no=<s:property value="no" />'>${name}</a></b>
		</div>
		<div class="content"><strong>운영시간</strong></div>
		<div class="content">${time}</div>
		</div>
		
		<div class="line2">
		<div><a href='/remedium/facilitiesView.action?no=${no}'></a>
		<img width="100%" height="600" alt="시설사진" src="/remedium/image/facImage/${image}" ></div>
		</div>
		<div class="line3">&nbsp;</div>
	</c:forEach>

</body>
</html>


