<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 

<%@ page import = "java.util.HashMap" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원 리스트</title>
<link href="/remedium/resource/css/board.css" rel="stylesheet" style="text/css">
<style type="text/css">
a{
color: black;
}
.event{
margin : 5% auto; 
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
.top{
	background-color:#202f58;
	color: white;
}
.h{
 height: 22px;
}


</style>
</head>
<body>


 <div class="event">
	<table align="center" width="900" border="0" cellspacing="0" cellpadding="0">
		<tr>
			<td align="center"><h2>회원 리스트</h2>
			<hr align="center" width="50%" size="1" color="gray">
			</td>
		</tr>
		<tr>
			<td height="20"></td>
		</tr> 
	</table>
	 
	<table align="center" width="900" border="0" cellspacing="0" cellpadding="0">
		<tr align="center" bgcolor="#202f58" class="top">
			<td width="80"><strong>가입일</strong></td>
			<td width="50"><strong>아이디</strong></td>
			<td width="50"><strong>이 름</strong></td>
			<td width="60"><strong>생년 월일</strong></td>
			<td width="50"><strong>핸드폰</strong></td>
			<td width="50"><strong>캐 쉬</strong></td>
			<td width="50"><strong>권한여부</strong></td>
		</tr>
		<tr bgcolor="#777777">
			<td height="1" colspan="7"></td>
		</tr>
	<c:choose>
         <c:when test="${fn:length(list) > 0}">
               <c:forEach items="${list }" var="list">
					<tr bgcolor="#FFFFFF" align="center">
		
			<c:if test="${list.USERADMIN eq '1'}">
			<tr bgcolor="#DCDCDC" align="center">
			</c:if>
			<c:if test="${list.USERADMIN eq '0'}">
			<tr bgcolor="#FFFFFF" align="center">
			</c:if>
				<td>${list.REGDATE }</td>
				<td align="center"> 
				<a href="memberAdminView?memberId=${list.MEMBERID }" >${list.MEMBERID }</a></td>
				<td align="center">
				<a href="memberAdminView?memberName=${list.MEMBERNAME }">${list.MEMBERNAME }</a></td>
				<td align="center">${list.BIRTHDAY }</td>
				<td align="center">${list.PHONE }</td>
				<td align="center">${list.CASH }</td>
				<c:if test="${list.USERADMIN eq '1'}">
				<td align="center">관계자</td>
				</c:if>
				<c:if test="${list.USERADMIN eq '0'}">
				<td align="center">고객</td>
				</c:if>
			</tr>
			<tr bgcolor="#777777">
				<td height="1" colspan="7"></td>
			</tr>
		</c:forEach>
		</c:when>
		<c:otherwise>
			<tr bgcolor="#FFFFFF" align="center">
				<td colspan="7">등록된 게시글이 없습니다.</td>
			</tr>
			<tr bgcolor="#777777">
				<td height="1" colspan="7"></td>
			</tr> 
		</c:otherwise>
		</c:choose>
		
		<tr>
	</table>
	
	<center>
	<form action="memberAdminList">
		<select name="searchNum" class="h">
			<option value="0">아이디</option>
			<option value="1">이름</option>
			<option value="2">핸드폰</option>
		</select>
		<input type="text" name="searchKey" value="" Style="wdith:120px" maxlength="20"/>
		<input class="button" name="submit" type="submit" value="검색" class="inputb">
		</form>
	</center>
	</div> 
</body>
</html>