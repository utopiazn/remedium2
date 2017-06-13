<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="com.kh.remedium.util.*" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title></title>

 <style type="text/css">
a{
color: black;
}
.content{
margin-top: 20px;  
line-height: 2em;
color: black;
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
.bottom{
  padding-left: 46%;
  padding-top: 3%;
}
.top{
	background-color:#202f58;
	color: white;
}
.line1{
text-align:right;
}

</style>
<c:set var="cDateR" value="<%=new ProjectUtil()%>"/>
</head>

<body>
	<div class="content">
		<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
			<tr>
				<td align="center"><h2>객실 예약 리스트</h2>
				<hr align="center" width="40%" size="1" color="gray">
				<br/>
				</td>
			</tr>
		</table>
		
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td colspan="8" class="line1" ><input class="button" type="button" value="마이페이지로 이동"onClick="location.href='myPageMain'">
				</td>
			</tr>
			
			<tr class="top" align="center">
				<td><strong>회원 ID</strong></td>
				<td><strong>예약 번호</strong></td>
				<td><strong>객실 번호</strong></td>
				<td><strong>입실 날짜</strong></td>
				<td><strong>퇴실 날짜</strong></td>
				<td><strong>예약 인원</strong></td>
				<td><strong>예약금</strong></td>
				<td><strong>예약완료 여부</strong></td>
			</tr>
			
			<c:choose>
				<c:when test="reslist.size() <= 0">
					<tr>
						<td colspan="8" align="center">예약된 객실이 없습니다</td>
					</tr>
					<tr bgcolor="#777777">
						<td height="1" colspan="8"></td>
					</tr>
				</c:when>
			</c:choose>


			<c:forEach var="reslist" items="${ reslist }" >
				<tr>
					<td><c:set property="reslist" value="memberID" /></td>
					<td><c:set property="reslist" value="reservationNo" /></td>
					<td><c:set property="reslist" value="no" /></td>
					<td><c:set property="reslist" value="firstDate" /></td>
					<td><c:set property="reslist" value="lastDate" /></td>
					<%-- 	
					<td>${ reservationNo }</td>
					<td>${ no }</td>
					<td>${ firstDate }</td>
					<td>${ lastDate }</td>
					 --%>
						
					<c:choose>
						<c:when test='%{people==0}'>
						단체
						</c:when>
								
						<c:when test='%{people==9}'>
						-
						</c:when>
					</c:choose>
				</tr>		
			</c:forEach>
		</table>
	</div>
</body>
</html>

<%-- <s:iterator value="reslist">
<tr>
<td><s:property value="memberID"/></td>
<td><s:property value="reservationNo"/></td>
<td><s:property value="no"/></td>
<td><s:property value="firstDate"/></td>
<td><s:property value="lastDate"/></td>
<td>
<s:if test='%{people==0}'>
단체
</s:if>
<s:elseif test="%{people==9}">
-
</s:elseif>
<s:else>
<s:property value="people"/>
</s:else>
</td>
<td><s:property value="money"/></td>
<td>
<s:if test='${firstDate > cDateR.currentDate}'>
<s:if test='%{reservationCheck.equals("n")}'>
<font color="blue">[예약대기중]</font>
</s:if>
<s:elseif test='%{reservationCheck.equals("y")}'>
<font color="green">[예약완료]</font>
</s:elseif>
</s:if>
<s:else>
<s:if test='%{reservationCheck.equals("n")}'>
<b><font color="red">[환불요망]</font></b>
</s:if>
<s:elseif test='%{reservationCheck.equals("y")}'>
<font color="black">[결제완료]</font>
</s:elseif>
</s:else>

<s:if test='${session.userAdmin=="1"}'>
<form action="roomAdminReservationCancel.action" method="post" encType="multipart/form-data">
<s:hidden name="reservationNo" value="%{reservationNo}" />
<s:hidden name="money" value="%{money}" />
<s:hidden name="memberID" value="%{memberID}" />


<s:if test='${firstDate > cDateR.currentDate}'>
<s:if test='%{reservationCheck.equals("n")}'>
<input class="button" type="button" value="예약확인" onclick="location.href='roomAdminReservation.action?reservationNo=${reservationNo}'">
</s:if>

<input class="button" type="submit" value="예약취소">


</s:if>
<s:else>
<s:if test='%{reservationCheck.equals("n")}'>

<input class="button" type="submit" value="예약환불">
</s:if>
</s:else>

</form>
</s:if>

</td>
</tr>
<tr bgcolor="#777777">
	<td height="1" colspan="8"></td>
</tr>
</s:iterator>
</s:else>
<s:if test='${session.userAdmin!="1"}'>
<tr align="right">
<td colspan="8"><small>※  예약취소·환불 문의 : 1544-9970</small></td>
</tr>
</s:if>
<tr align="center">
	<td colspan="8"><s:property value="pagingHtml" escape="false"/></td>
</tr>
</table>
</div> --%>