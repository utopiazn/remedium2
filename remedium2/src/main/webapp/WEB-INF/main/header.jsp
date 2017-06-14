<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="com.kh.remedium.util.*" %> 


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8"> 
	<title></title>
	<link href="/remedium/resources/css/header.css" rel="stylesheet" style="text/css">
	
	<style type="text/css">
		a{
			text-decoration: none;
		}
	</style>
	
</head>

<body>

	<div class="top">
	
	<div id="navi">


	<c:choose>
	<c:when test="${memberId != null}"> <!-- 아이디가 null이 아닌 경우 -->
	
	<a href="myPageMain" style="color: white;">마이페이지</a>
	&nbsp;
	<a href="logout" style="color: white;">로그아웃</a>
	&nbsp;
	<br/>
	${memberName} 로그인 하셨습니다.
	<br/>
	Cash point: ${cash}
	</c:when>
	<c:otherwise>
	<a href="joinForm" style="color: white;">회원가입</a>
	&nbsp;
	<a href="login" style="color: white;">로그인</a>
	&nbsp;
	</c:otherwise>
	</c:choose>
	</div>

<div id="logo">
<img alt="호텔로고" src="/remedium/resources/image/logo2.png" width="200" height="100" onclick="location.href='/remedium/main'" >


</div>
<c:choose>
<c:when test="${session.memberId != null}">
<div id="menu" style="padding-left: 275px;">
	<a href="info" style="color: white;">Remedium</a>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <!-- <a href="roomInfoView.action?room_class='1'">객실 소개   </a> -->
    <a href="/remedium/room/roomInfoView?roomClass=1" style="color: white;">Room</a>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="/remedium/facility/list" style="color: white;">Facility</a>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="eventList" style="color: white;">Event</a>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="boardList.action" style="color: white;">QnA</a>
</div>
</c:when>
<c:otherwise>
<div id="menu">
	<a href="/remedium/info" style="color: white;">Remedium</a>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <!-- <a href="roomInfoView.action?room_class='1'">객실 소개   </a> -->
    <a href="roomInfoView.action?roomClass=1" style="color: white;">Room</a>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="/remedium/facility/list" style="color: white;">Facility</a>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="/remedium/eventList" style="color: white;">Event</a>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="boardList.action" style="color: white;">QnA</a>
</div>
</c:otherwise>
</c:choose>
<form action="roomList.action" method="post" enctype="multipart/formdata" onsubmit="return ReservationCH(this);">
<div id="res">
<c:set var="cDate" value="<%=new ProjectUtil()%>"/> 
<input type="hidden" name="curDate" value="${cDate.currentDate}">
체크인:
<input type="date" name="firstDate" value="${session.firstDate}">
~
<input type="date" name="lastDate" value="${session.lastDate}">

고객 수:
<select name="people" class="h">
<option value="9" <c:if test="${session.people==9}">selected="selected"</c:if> >인원수 무관</option>
<option value="1" <c:if test="${session.people==1}">selected="selected"</c:if> >1명</option>
<option value="2" <c:if test="${session.people==2}">selected="selected"</c:if> >2명</option>
<option value="3" <c:if test="${session.people==3}">selected="selected"</c:if> >3명</option>
<option value="4" <c:if test="${session.people==4}">selected="selected"</c:if> >4명</option>
<option value="0" <c:if test="${session.people==0}">selected="selected"</c:if> >단체(5인 이상)</option>
</select>

Room Class:
<select name="rcType" class="h">
<option value="0" <c:if test="${session.rcType==0 && session.rcType==null}">selected="selected"</c:if>>전체</option>

<!-- 이건 룸클래스 필요해서 주석함 -->

<%-- <s:iterator value="%{session.RClist}">

<option value='<s:property value="room_class"/>' 
<s:if test="${session.rcType==room_class}"> 
	selected="selected"
</s:if>
>
  <s:property value="name"/></option>

</s:iterator> --%>

</select>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;


<input type="submit" value="검색">
<c:if test="${ session.userAdmin == '1' }"> <!-- 아이디가 관리자 아이디일 경우 -->
<input type="button" value="전체" name="search" onclick="location.href='roomAllList.action'">
</c:if>


</div>
</form>
</div>

    
   
</body>
<script type="text/javascript">
function ReservationCH(userinput){
	if(userinput.firstDate.value==""){
		alert("입실날짜를 적어주세요!");
		return false;
	}
	
	if(userinput.lastDate.value==""){
		alert("퇴실날짜를 적어주세요!");
		return false;
	}
	
	var fd = userinput.firstDate.value;
	var ld = userinput.lastDate.value;
	var cd = userinput.curDate.value;
	if(fd == ld){
		alert("최소 1박을 해야합니다.");
		return false;
	}
	
	if(fd > ld){
		alert("퇴실날짜가 입실날짜보다 이전입니다.");
		return false;
	}
	
	if(fd < cd){
		alert("이미 지난 날짜입니다.\n 입력하신 검색날짜:"+fd+" / 현재날짜:"+cd);
		
		return false;
	}
	
	if(fd == cd){
		alert("오늘 날짜를 입력하셨습니다.\n입력하신 검색날짜:"+fd+"\n당일 예약은 불가능 합니다.");
		return false;
	}
	
	
}
</script>

</html>