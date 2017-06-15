<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
a{
color: black;
}
.event{
margin : 20px; 
line-height: 2em;
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
.top{
	background-color:#202f58;
	color: white;
}

.td{
	padding-top: 10px;
}
</style>
<SCRIPT type="text/javascript">
		function validation(frm) {
		
			
			
			if(frm.subject.value == "") {
				alert("제목을 입력해주세요.");
				return false;
			} 
			
			else if(frm.content.value == "") {
				alert("내용을 입력해주세요.");
				return false;			
			} 
			
			return true;
		}
	</SCRIPT>
</head>

<body>
<div class="event">

	<table width="700" border="0" cellspacing="0" cellpadding="2" align="center">
<c:choose>
	 <c:when test="${fn:length(board) == 0}" > 
		 
		<tr>
  			<td align="center" ><h2>문의 글 쓰기</h2>
  			<hr align="center" width="50%" size="1" color="gray">
  			<br/>
  			</td>
  			
  		</tr>
	</table>
	

		<form action="boardWrite" method="post"  onsubmit="return validation(this);">
			<input type="hidden" name="memberId" value="${memberId }"/>
			<input type="hidden" name="memberName" value="${memberName }"/>
 	 </c:when> 
	
	 <c:when test="${board.CONTENT eq null}">
		<tr>
  			<td align="center" ><h2>문의 글 답변</h2>
  			<hr align="center" width="50%" size="1" color="gray">
  			<br/>
  			</td>
  			
  		</tr>
	</table>
		<form action="boardReply.action" method="post" enctype="multipart/form-data" onsubmit="return validation(this);">
			<input type="hidden" name="ref" value="${board.REF }" />
			<input type="hidden" name="re_step" value="${board.RE_STEP }" />
			<input type="hidden" name="memberId" value="${memberId }"/>
			<input type="hidden" name="memberName" value="${memberName }"/>
	</c:when>
	
	<c:otherwise> <%-- test="${fn:length(board) > 3}"  --%> 
		<tr>
  			<td align="center" ><h2>문의 글 수정</h2>
  			<hr align="center" width="50%" size="1" color="gray">
  			<br/>
  			</td> 			
  		</tr>
	</table>
		<form action="boardModify.action" method="post" enctype="multipart/form-data">
			<input type="hidden" name="no" value="${board.NO }"/>
			
	</c:otherwise>  
</c:choose>	
	<table width="700" border="0" cellspacing="0" cellpadding="0" align="center" style="width: 523px;">
		
		
		<tr bgcolor="#777777">
			<td height="1" colspan="2"></td>
		</tr>
		<tr>
			<td width="100" bgcolor="#202f58"><font color="white">작성자</font></td>
			<td align="left" width="300" bgcolor="#FFFFFF">  &nbsp; ${memberName}</td>
		</tr>
		<tr bgcolor="#777777">
			<td height="1" colspan="2"></td>
		</tr>
		
		<tr>
			<td width="100" bgcolor="#202f58"><font color="white">제 목</font></td>
			<td align="left" width="500" bgcolor="#FFFFFF">
			  &nbsp; <input type="text" name="subject"  value="${board.SUBJECT }" Style="width:372px" maxlength="50"/>
			</td>
		</tr>
		
		<tr bgcolor="#777777">
			<td height="1" colspan="2"></td>
		</tr>
		<tr>
			<td bgcolor="#202f58"><font color="white">내 용</font></td>
			<td class="td" align="left" bgcolor="#FFFFFF">
			&nbsp; <textarea name="content" cols="60" rows="15">${board.CONTENT }</textarea>
			</td>	
		</tr>
		<tr bgcolor="#777777">
			<td height="1" colspan="2"></td>
		</tr>
		
		<tr>
        	<td height="10" colspan="2"></td>
        </tr>
			
		<tr>
     		<td align="right" colspan="2">
     		   <input type="submit" value="작성완료" class="button">
     		    <input name="list" type="button" value="글목록" class="button" onClick="javascript:location.href='boardList'">
      		</td>
        </tr>	
	</table>
	</form>
	</div>
</body>
</html>