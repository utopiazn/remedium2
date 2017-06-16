<%@ page contentType="text/html; charset=UTF-8"%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko" >
<head>
	<meta charset="UTF-8">
	<title></title>
	
	<style type="text/css">
	
	

	
	/*초기화와 메뉴폭 지정*/
	 #navi2{
	 	padding: 0;
	 	margin: 40PX;
	 	width: 80%;	 	
	 	text-align: center;	 
	 }
	 
	  
	 #navi2 h2{
	 	margin: 0;
	 	padding:0;		
	}
	
	/*메인메뉴 스타일 지정*/	
	 #navi2 h2 a{
	 	display: block;
	 	font-weight: bold;
	 	text-decoration: none;
	 	margin: 0;
	 	padding: 10px;
	 	font-family: '돋음', sans-serif;
	 	font-size: 14px;
	 	color: #ffffff;
	 	text-shadow: 0 1px 1px #000;	 	
	 	
	 	background: #1d4ab3; 
	 	background: linear-gradient(#1d4ab3 0%, #163887 100%);
	 
	 	
	}
	
	  /*메인 메뉴에 대한 마우스 이벤트에 대한 효과 지정*/
	 #navi2 h2 a,
	 #navi2 h2 a:focus,
	 #navi2 h2 a:hover,
	 #navi2 he a:active{
	 
	 	background: #202f58;	 	 
	 	background: linear-gradient(#1a1a1a 0%,#202f58 100%);
	 	color:#ffffff;
	 	text-shadow: 0 1px 1px #000;
	 
	}	
	
	
	</style>
	
</head>
<!-- <body style="background-color: black;" > -->
<body>

<c:choose>

	<c:when test="${list == null}"> 
			
		객실 클래스 정보가 없습니다		
	</c:when>
	
	<c:when test="${sessionScope.userAdmin eq  '1' }"> <!-- 아이디가 null이 아닌 경우 -->
			
		<div id="navi2">
			<h2>
				 <a href="/remedium/roomInfo/roomInfoList?roomClass=0" >객실 소개  관리 </a>
			</h2>
		</div>
	</c:when>
	
		
		
		
</c:choose>


    <c:forEach items="${list }" var="row">
    
       	<div id="navi2">
			<h2>
				 <a href='/remedium/roomInfo/roomInfoView?roomClass=${row.ROOM_CLASS }'>${row.NAME }</a>
			</h2>
		</div>
	
    </c:forEach>

</body>
</html>