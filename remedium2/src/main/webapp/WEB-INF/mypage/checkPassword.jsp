<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">

<link href="/remedium/resources/css/board.css" rel="stylesheet" style="text/css">
<style type="text/css">
.pwch /* 비밀번호 확인 */
{
text-align: center; 
margin: 5% auto; 
width: 19%;
}

</style>
<script type="text/javascript">
function pwd(userinput) {
	
	var p = userinput.password.value;
	var o = userinput.orgpasswd.value
	
	
	if(p != o ){
	alert("비밀번호가 일치하지 않습니다");

	return false;
 }
	else{
	alert("탈퇴가 완료되었습니다.");		
	return true;
	}
}

</script>
</head>
<body>

<div class="pwch">

<h2>&nbsp;&nbsp;&nbsp;&nbsp;비밀번호 확인</h2>
<hr align="center" width="120%" size="1" color="gray">
<br>
  			

<form action="loginDelete.action" method="post" onsubmit="return pwd(this);" enctype="multipart/form-data">

<s:hidden name="no" value="%{no}"/>
<s:hidden name="currentPage" value="%{currentPage}"/>
<s:hidden name="orgpasswd" value="%{resultClass.memberPassword}"/>
<s:hidden name="memberID" value="%{resultClass.memberID}"></s:hidden>

<table width="250" border="0" cellspacing="0" cellpadding="0">

<tr>
<td height="1" colspan="2"></td>
</tr>

<tr>
<td width="150" bgcolor="#F4F4F4" >비밀번호 입력</td>


<td width="150" bgcolor="#FFFFFF" align="center">
<input type="password">
<!-- <s:textfield name="password" theme="simple" cssStyle="width:130px" maxlength="20"/> -->
</td>
</tr>


<tr>
<td align="center" height="1" colspan="2"><br>
<input class="button" name="submit" type="submit" value="확인" class="inputb"  style="width: 75px;"/>
<input type="button" value="취소" class="button" style="width: 75px;" onClick="javascript:location.href='myPageMain.action'">	
</td>
</tr>
</table>
</form>
</div>
</body> 
</html>