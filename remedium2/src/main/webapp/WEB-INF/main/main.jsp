<%@ page contentType="text/html; charset=UTF-8"%>

<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<!DOCTYPE html>


<html lang="ko">

<head>
	<meta charset="UTF-8">
	<title><tiles:getAsString name="title" /></title>
	<link href="/remedium/resources/css/main.css" rel="stylesheet" style="text/css">
</head>

<body>

	<div class="header2">
		<tiles:insertAttribute name="header" />
	</div>

	<div class="main">
	
		<div class="lefter">
			<tiles:insertAttribute name="lefter" />	
		</div>
		
		<div class="right3">
			<tiles:insertAttribute name="body" />
		</div>
	
	</div>

	<div class="footer2">
		<tiles:insertAttribute name="footer" />
	</div>
	

</body>
</html>