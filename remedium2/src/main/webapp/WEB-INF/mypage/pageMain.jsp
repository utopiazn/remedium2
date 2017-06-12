<%@ page contentType="text/html; charset=UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title></title>
	<link href="/remedium/resources/css/mypage.css" rel="stylesheet" style="text/css">

<script type="text/javascript">
function open_win_noresizable(url, name) {
	var oWin = window.open(url, name,"scrollbars=no, status=no, resizable=no, width=300, height=150");
	
	
}
</script>

</head>
<body>

<div id="mainBox">
	<div id="modify">
	
		<c:choose>
			<c:when test="${userAdmin == '1' }"> <!-- 아이디가 관리자 아이디일 경우 -->
		  		<img alt="회원정보 수정" src="/remedium/resources/image/modify2.png" width="100%" height="100%"  onclick="location.href='memberAdminList'" > 
			</c:when>
		
			<c:otherwise>
		 		<img alt="회원정보 수정" src="/remedium/resources/image/modify.png" width="100%" height="100%"  onclick="location.href='loginModifyForm?memberID=${memberId}'" > 
			</c:otherwise>
		
		</c:choose> 
	 </div>
 
   	<div id="out">
 		<img alt="회원 탈퇴" src="/remedium/resources/image/out.png" width="100%" height="100%"  onClick="location.href='loginDeleteForm?memberID=${memberId}'">
   	</div>
   	
</div>


 	

 <div id="mainBox">	
 	<div id="reslist">
	 	<c:choose>
		 	<c:when test="${userAdmin == '1' }"> <!-- 아이디가 관리자 아이디일 경우 -->
		 		<img alt="나의 예약 페이지" src="/remedium/resources/image/reslist.png" width="100%" height="100%"  onclick="location.href='roomAdminList'" > 
		 	</c:when>
		 	
		 	<c:otherwise>
		 		<img alt="나의 예약 페이지" src="/remedium/resources/image/reslist.png" width="100%" height="100%"  onclick="location.href='myPageList?memberID=${memberId}'" > 
		  	</c:otherwise>
		  	
		</c:choose>
	 </div>
  
	 	<c:choose>
		 	<c:when test="${userAdmin != '1'}"><!-- 관리자일 경우 보이지 않음 -->
		  		<div id="cash">
			  		<img alt="캐쉬 충전" src="/remedium/resources/image/cash.png" width="100%" height="100%"  onclick="location.href='myPageCashForm'" > 
				</div>
			</c:when>
			
			<c:when test="${userAdmin == '1'}">
				<div id="cash">
			  		<img alt="객실 리스트" src="/remedium/resources/image/roomlist.png" width="100%" height="100%"  onclick="location.href='roomAllList'" > 
				</div>
			</c:when>
		</c:choose>
		
	
</div>

</body>

</html>