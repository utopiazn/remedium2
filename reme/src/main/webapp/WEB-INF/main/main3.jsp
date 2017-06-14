<%@ page contentType="text/html; charset=UTF-8"%>

<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<!DOCTYPE html>

<html lang="ko">
<head>
	<meta charset="UTF-8"> 
	
	<title><tiles:getAsString name="title" /></title>
	
	<link href="/remedium/resources/css/main.css" rel="stylesheet" style="text/css">
	
	<style type="text/css">
	
		body{
			background-attachment: fixed; 
			background-size: cover; 
			background-image: url("/remedium/resources/image/hotelbg.jpg");
		}
		
	</style>
		
</head>

<body>


	<div class="header">
		<tiles:insertAttribute name="header" />
	</div>
	
	<div class="body">
		<tiles:insertAttribute name="body" />
	</div>

	<div class="footer">
		<tiles:insertAttribute name="footer" />
	</div>
	 
	



</html>