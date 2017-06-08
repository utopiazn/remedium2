<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="css/form.css" rel="stylesheet" style="text/css">
<link href="css/board.css" rel="stylesheet" style="text/css">
<SCRIPT type="text/javascript">
		
		function validation(userinput) {
			
			//var frm = document.forms(0);
			
			if(userinput.memberId.value == "") {
				alert("아이디 입력해주세요.");
				return false;
			} 
			
			else if(userinput.memberPasswd.value == "") {
				alert("비밀번호를 입력해주세요.");
				return false;
			}
			
			
			return true;
		}
</SCRIPT>

</head>

<body>
<div class="login">
<h2> 로 그 인 </h2>
<hr align="center" width="50%" size="1" color="gray">
<br>

<center>
<form action="login" method="post" onsubmit="return validation(this);">
	
	<table cellpadding="4">
		<tr>
			<td ><font color="#FF0000">* </font>아이디</td>
			<td bgcolor="#FFFFFF">
				<input type="text" name="memberID" id="memberID"/>
				<br>
			</td>
		</tr>
		<tr>
			<td><font color="#FF0000">* </font>비밀번호</td>
			<td bgcolor="#FFFFFF">
				<input type="password" name="memberPassword" id="memberPassword"/>
			</td>
			
		</tr>
	
		<tr align="center">
			<td colspan="3">
				 <input class="button" name="submit" type="submit" value="로그인" style="width: 263.2px;" >
			</td>
		</tr>
	</table>	
	<br>
		 <a href="joinForm.action"><font size=2>회원 가입</font></a>&nbsp;/
       	 <a href="findIDForm.action"><font size=2>아이디 찾기</font></a>&nbsp;/
       	 <a href="findPwForm.action"><font size=2>비밀번호 찾기</font></a>
</form>
</center>
</div>
<%-- <center>
<form action="loginAction.action" method="post" enctype="multipart/form-data" onsubmit="return validation(this);">
		<table width="600" border="0" cellspacing="0" cellpadding="2">
	
		<tr>
			<td align="center">
				<h2> 로 그 인 </h2>
			</td>
		</tr>		
	</table>
	<table>
		<tr>
			<td bgcolor="#F4F4F4"><font color="#FF0000">* </font>아이디</td>
			<td bgcolor="#FFFFFF">
				<s:textfield name="memberId" theme="simple" cssStyle="width:100px" maxlength="20"/>
			</td>
			<td rowspan="3">
				 <input name="submit" type="submit" value="로그인" class="inputb" >
			</td>
		</tr>
		<tr>
			<td bgcolor="#F4F4F4"><font color="#FF0000">* </font>비밀번호</td>
			<td bgcolor="#FFFFFF">
				<s:password name="memberPasswd"  theme="simple" cssStyle="width:100px" maxlength="20"/>
			</td>
			
		</tr>
	</table>	
		 <a href="joinForm.action"><font size=2>회원 가입</font></a>&nbsp;/
       	 <a href="findIDForm.action"><font size=2>아이디 찾기</font></a>&nbsp;/
       	 <a href="findPwForm.action"><font size=2>비밀번호 찾기</font></a>
</form>
</center> --%>


</body>
</html>