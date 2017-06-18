<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<?xml version="1.0" encoding="UTF-8" ?>
<html lang="ko"  xmlns="http://www.w3.org/1999/xhtml" >
	<script type="text/javascript">
	  
	function button_event(url){
		var del = confirm("이 글을 정말로 삭제 하시겠습니까??");
		
		if(del == true){
			alert("삭제하였습니다.");			
			document.location.href=url;
		}
		else{
			alert("취소하였습니다.");
			return
		}
		
	}
	</script>
<head>
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
    font-size: 15px;
    text-decoration: none;
    color: white;
 
}  
.top{
	background-color:#202f58;
	color: white;
}
</style>

	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	
</head>
<body>
<div class="event">
	<table width="700" border="0" cellspacing="0" cellpadding="2" align="center">
	<tr>
  			<td align="center" ><h2>문의 글 보기</h2>
  			<hr align="center" width="50%" size="1" color="gray">
  			<br/>
  			</td>
  			
  	</tr>
	</table>

 
	
		<table width="700" border="1" cellspacing="0" cellpadding="3" align="center">	
			<tr>
				<td width="100" bgcolor="#202f58"><font color="white">* 글번호</font></td>
			
				<td align="left" width="100" bgcolor="#FFFFFF">
				&nbsp; ${board.NO }
				</td>
				
				<td width="40" bgcolor="#202f58"><font color="white">* 작성자</font></td>

				<td align="left" width="100" bgcolor="#FFFFFF">
				&nbsp; ${board.NAME }
				</td>
			</tr>
			
			<tr>
				<td width="100" bgcolor="#202f58"><font color="white">* 제 목</font></td>
				<td colspan="3" align="left" width="500" bgcolor="#FFFFFF">
				&nbsp; ${board.SUBJECT }				 
				</td>
			</tr>		
		
			<tr>
				<td width="100" bgcolor="#202f58"><font color="white">* 내 용</font>
				</td>
			
				<td colspan="3" align="left" height="300" width="500" bgcolor="#FFFFFF" style="vertical-align: top;">
				&nbsp; ${board.CONTENT }				
				</td>
			</tr>
		
		</table><br/>
		
		<center>
		<input name="list" type="button" value="목록" class="button" onClick="javascript:location.href='boardList'">
		<c:if test="${board.NAME eq memberName || userAdmin eq '1'}">
    	&nbsp;<input type="button" value="수정" class="button" onClick="javascript:location.href='boardModify?no=${board.NO }'"> 
		&nbsp;<input type="button" value="삭제" class="button" onClick="javascript:button_event('boardDelete?no=${board.NO }&ref=${board.REF }&re_step=${board.RE_STEP }')">
		</c:if>
		<c:if test="${userAdmin eq '1' }">
		&nbsp;<input type="button" value="답변" class="button" onClick="javascript:location.href='boardReply?no=${board.NO }'"> 
		</c:if>
		</center>
</div>
</body>
</html>