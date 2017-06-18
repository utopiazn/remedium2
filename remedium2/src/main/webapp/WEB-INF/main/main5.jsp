<%@ page contentType="text/html; charset=UTF-8"%>

<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<!DOCTYPE html>


<html lang="ko">
<head>
	<meta charset="UTF-8">
	<!-- <title>Remedium Hotel[당신만을 위한 오리엔탈 프리미엄 에디션]</title> -->
 	<title><tiles:getAsString name="title" /></title>	
	
	<link href="/remedium/resources/css/main.css" rel="stylesheet" style="text/css">
	

</head>
<body>


<div class="right2">
<tiles:insertAttribute name="body" />
</div>



				

</body>
</html>