<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>QnA</title>
<style type="text/css">
a{
color: black;
}
.event{
margin : 20px; 
line-height: 2.5em;
color: black;
text-align: center;
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
.h{
height: 22px;
}
</style>
</head>
<body>
<div class="event">
<table width="1000" border="0" cellspacing="0" cellpadding="0" align="center">
  		<tr>
  			<td align="center" ><h2>QnA</h2>
  			<hr align="center" width="60%" size="1" color="gray">
  			<br/>
  			</td>
  			
  		</tr>
  	</table>
  	
  
	<table width="1000" border="0" cellspacing="0" cellpadding="0" align="center">

	    <tr class="top" align="center" bgcolor="#A2D5FF">
      		<td width="50"><strong>번 호</strong></td>
			<td width="100"><strong>제 목</strong></td>
			<td width="50"><strong>작성자</strong></td>
        	<td width="50"><strong>날 짜</strong></td>
        	<td width="50"><strong>답변 상태</strong></td>
			
      	      </tr>
      	      <tr bgcolor="#777777">
        		<td height="1" colspan="5"></td>
      	      </tr>
      	     <c:choose>
                <c:when test="${fn:length(list) > 0}">
                    <c:forEach items="${list }" var="board">
					<tr bgcolor="#FFFFFF" align="center">
					<td>${board.NO}	</td>
					
			
				<td align="left"> 
				<c:if test="${board.RE_STEP != 0} ">
					<c:forEach var = "i" begin = "${board.RE_STEP}" end = "0">&nbsp;</c:forEach>→
				</c:if>	
				 <a href="boardView?no=${board.NO }&ref=${board.REF}" >${board.SUBJECT }</a>  </td>
				<td align="center">
				<a href="boardView?no=${board.NO }&ref=${board.REF}">${board.NAME }</a></td>
				<td align="center">${board.REGDATE }</td>
				<td align="center"><%-- <s:property value="type"/> --%>
					<c:choose>
						<c:when test='${board.TYPE eq "0"}'>
							미답변
						</c:when>
						<c:otherwise>
							답변완료
						</c:otherwise>
					</c:choose>				
				</td>
			</tr>
			<tr bgcolor="#777777">
				<td height="1" colspan="7"></td>
			</tr>
		  </c:forEach>
                </c:when>
                <c:otherwise>
                    <tr>
                        <td colspan="4">조회된 결과가 없습니다.</td>
                    </tr>
                </c:otherwise>
            </c:choose>
		
		<tr align="center">
			<td colspan="7" ><!-- <s:property value="pagingHtml" escape="false"/></td> -->
		</tr>
		<tr align="right">
			<td colspan="7" >
			<c:if test="${memberId != null}">
				<input class="button" type="button" value="글쓰기" onClick="javascript:location.href='boardWrite'">
			</c:if>
			</td>
		</tr>
		
	</table>
	</div>
	<table align="center">
	<form action="boardList" class="bottom" method="post">
		<select name="searchNum" class="h">
			<option value="0">제 목</option>
			<option value="1">작성자</option>
		</select>&nbsp;
		<input type="text" name="searchKey" value="" Style="wdith:120px" maxlength="20"/>&nbsp;
		<input class="button" name="submit" type="submit" value="검색" class="inputb">
	</form>
	</table>
	
</body>
</html>