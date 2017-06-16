<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
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

</style>
</head>
<body>
 <div class="content">
 <table width="900" border="0" cellspacing="0" cellpadding="0" align="center">
		<tr>
			<td align="center"><h2>호텔 객실 리스트</h2>
			<hr align="center" width="60%" size="1" color="gray">
			<br/>
			</td>
		</tr>

	</table>
	<table width="100%">		
		<c:if test="${ session.userAdmin == '1' }">
		<tr>
			<td align="right">
				<input type="button" value="마이페이지로 이동" class="button"  onClick="javascript:location.href='myPageMain.action'">
			</td>
		</tr>
		</c:if>
		<tr>
		 <td>
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
		<tr class="top" align="center">
			<td><strong>객실번호</strong></td>
			<td><strong>객실이름</strong></td>
			<td><strong>객실테마</strong></td>
			<td><strong>객실구성</strong></td>
			<td><strong>정원</strong></td>
			<td><strong>예약금</strong></td>
		</tr>
		
		
		
		
		
		
		
		
		
		
	<c:choose>
		<c:when test="${list.size() <= 0}">
			<tr>
				<td colspan="6" align="center">예약가능한 객실이 없습니다</td>
			</tr>
			<tr bgcolor="#777777">
				<td height="1" colspan="6"></td>
			</tr>
		</c:when>
		<c:otherwise>
			<c:forEach var="room" items="list">
				<tr>
					<td align="center"><a href="/remedium/roomView.action?num=<s:property value="no"/>&firstDate=<s:property value="firstDate"/>&lastDate=<s:property value="lastDate"/>&people=<s:property value="people"/>">${room.NO}호</a></td>
					<td align="center"><a href="/remedium/roomView.action?num=<s:property value="no"/>&firstDate=<s:property value="firstDate"/>&lastDate=<s:property value="lastDate"/>&people=<s:property value="people"/>">${room.NAME}</a></td>
					<td align="center"><a href="/remedium/roomView.action?num=<s:property value="no"/>&firstDate=<s:property value="firstDate"/>&lastDate=<s:property value="lastDate"/>&people=<s:property value="people"/>">${room.CLASS_NAME}</a></td>
					<td align="left"><a href="/remedium/roomView.action?num=<s:property value="no"/>&firstDate=<s:property value="firstDate"/>&lastDate=<s:property value="lastDate"/>&people=<s:property value="people"/>">${room.CONSTRUCTION}</a></td>
					<td align="center">
					
					<c:choose>
						<c:when test="${room.room_capacity == 0}">
							단체(5~10명 수용가능)	
						</c:when>
						<c:otherwise>
							${room.ROOM_CAPACITY}명<br>
						</c:otherwise>
					</c:choose></td>
					
					<td align="right">1일  ${room.PRICE}Cash</td>
				</tr>
				<tr bgcolor="#777777">
					<td height="1" colspan="6"></td>
				</tr>
			
			</c:forEach>
		
		</c:otherwise>
		
	</c:choose>	
	
	

	<%-- <s:if test="list.size() <= 0">
		<tr>
			<td colspan="6" align="center">예약가능한 객실이 없습니다</td>
		</tr>
		<tr bgcolor="#777777">
			<td height="1" colspan="6"></td>
		</tr>
	</s:if>
	<s:else>
		<s:iterator value="list">
		<tr>
			<td align="center"><a href="/remedium/roomView.action?num=<s:property value="no"/>&firstDate=<s:property value="firstDate"/>&lastDate=<s:property value="lastDate"/>&people=<s:property value="people"/>"><s:property value="no"/>호</a></td>
			<td align="center"><a href="/remedium/roomView.action?num=<s:property value="no"/>&firstDate=<s:property value="firstDate"/>&lastDate=<s:property value="lastDate"/>&people=<s:property value="people"/>"><s:property value="name"/></a></td>
			<td align="center"><a href="/remedium/roomView.action?num=<s:property value="no"/>&firstDate=<s:property value="firstDate"/>&lastDate=<s:property value="lastDate"/>&people=<s:property value="people"/>"><s:property value="class_name"/></a></td>
			<td align="left"><a href="/remedium/roomView.action?num=<s:property value="no"/>&firstDate=<s:property value="firstDate"/>&lastDate=<s:property value="lastDate"/>&people=<s:property value="people"/>"><s:property value="construction"/></a></td>
			<td align="center">
			<s:if test="%{room_capacity == 0}">
			단체(5~10명 수용가능)
			</s:if>
			
			<s:else>
			<s:property value="room_capacity"/>명<br>
			</s:else></td>
			
			<td align="right">1일  <s:property value="price"/>Cash</td>
		</tr>
		<tr bgcolor="#777777">
			<td height="1" colspan="6"></td>
		</tr>
		</s:iterator>
	</s:else> --%>
	
	
	
	
	
	
	</table></td></tr>
	
	<!-- <tr align="center">
			<td><s:property value="pagingHtml" escape="false"/></td>
	</tr> -->
	
	<c:if test="${ session.userAdmin != '1' }">
	<tr><td align="center">
	<strong><b>${ firstDate } ~ ${ lastDate }
	<br> 예약가능 리스트</b></strong>
	</td></tr>
	</c:if>
	
	<c:if test="${ session.userAdmin == '1' }">
	<tr><td align="right">
	<input class="button" type="button" value="객실추가" onclick="location.href='/remedium/roomInsertForm.action'"/>
	</td></tr>
	</c:if>
	</table>
</div>
</body>
</html>