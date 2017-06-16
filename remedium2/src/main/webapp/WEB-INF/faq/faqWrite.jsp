<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 

<!DOCTYPE html>
<?xml version="1.0" encoding="UTF-8" ?>
<html lang="ko"  xmlns="http://www.w3.org/1999/xhtml" >
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
					
			if(frm.type.value == "") {
				alert("유형을 입력해주세요.");
				return false;
			} 
			
			else if(frm.subject.value == "") {
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
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	
</head>
<body>
<div class="event">

<table width="700" border="0" cellspacing="0" cellpadding="2" align="center">
	<c:if test="${fn:length(faq) == 0}" > 
	<tr>
  			<td align="center" ><h2>자주 묻는 글 쓰기</h2>
  			<hr align="center" width="50%" size="1" color="gray">
  			<br/>
  			</td>
  			
  		</tr>	
</table>
		<form action="faqWrite.action" method="post" enctype="multipart/form-data" onsubmit="return validation(this);">
	</c:if>
	
	<c:if test="${fn:length(faq) > 0}" > 
		<tr>
  			<td align="center" ><h2>자주 묻는 글 수정</h2>
  			<hr align="center" width="50%" size="1" color="gray">
  			<br/>
  			</td>
  			
  		</tr>	
</table>
		<form action="faqModify.action" method="post" enctype="multipart/form-data">
				<input type="hidden" name="faqId" value="${faq.FAQID }"/>
			
	</c:if> 
	
	
	
<table width="700" border="0" cellspacing="0" cellpadding="0" align="center" >
		<tr>
			  <th align="right" colspan="2" class="info"><font color="#FF0000">*</font>는 필수 입력사항입니다.</th>
		</tr>
		
		<tr bgcolor="#777777">
			<td height="1" colspan="2"></td>
		</tr>
		<tr>
			<td width="100" bgcolor="#202f58"><font color="white">* 질문유형</font></td>
			<td align="left" width="500" bgcolor="#FFFFFF">
			&nbsp; <input type="text" name="type" value="${faq.TYPE }" Style="width:470px" maxlength="50"/>
			</td>
		</tr>
		<tr bgcolor="#777777">
			<td height="1" colspan="2"></td>
		</tr>
		
		<tr>
			<td width="100" bgcolor="#202f58"><font color="white">* 제 목</font></td>
			<td align="left" width="500" bgcolor="#FFFFFF">
			&nbsp; <input type="text" name="subject" value="${faq.SUBJECT }" Style="width:470px" maxlength="50"/>
			</td>
		</tr>
		
		<tr bgcolor="#777777">
			<td height="1" colspan="2"></td>
		</tr>
		<tr>
			<td bgcolor="#202f58"><font color="white">* 내 용</font></td>
			<td align="left" class="td" bgcolor="#FFFFFF">
			&nbsp; <textarea name="content" theme="simple"  cols="71" rows="10">${faq.CONTENT }</textarea>
			</td>
		</tr>
		<tr bgcolor="#777777">
			<td height="1" colspan="2"></td>
		</tr>
		
		<tr>
        	<td height="10" colspan="2"></td>
        </tr>
			
	</table>
	<center>
		<input class="button" type="submit" value="작성 완료">
    	<input name="modify" type="button" value="목록" class="button" onClick="javascript:location.href='faqList'"> 	
	</center>
</form>
</div>
</body>
</html>