<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>아이디 찾기</title>
<style type="text/css">
.id
{
text-align: center; 
margin: 1% auto; 
width: 41%;
}
</style>
<link href="/remedium/resources/css/form.css" rel="stylesheet" style="text/css">
<link href="/remedium/resources/css/board.css" rel="stylesheet" style="text/css">
</head>
<SCRIPT type="text/javascript">
	function validation(frm) {

		/* var frm = document.forms(0); */

		if (frm.memberName.value == "") {
			alert("이름을 입력해 주세요.");
			return false;
		}

		else if (frm.birthday.value == "") {
			alert("생년 월일을 입력해 주세요.");
			return false;
		}

		return true;
	}
</SCRIPT>
<!-- <style type="text/css">
.findIdInput{
	cssStyle="width:170px"
}

</style> -->
<body>

<div class="id">
<br/><br/><br/>
	<table width="600" border="0" cellspacing="0" cellpadding="2">

		<tr>
			<!-- <td align="center"> -->
				<h2>아이디 찾기</h2>
				<hr align="center" width="50%" size="1" color="gray">
				<br>
			<!-- </td> -->
		</tr>
	</table>
	<form action="findId" method="post" enctype="multipart/form-data" onsubmit="return validation(this);">
		<center>
		<table width="300">
		
			<tr>
				<td bgcolor="#F4F4F4"><font color="#FF0000">*</font> 이 름</td>
				<td bgcolor="#FFFFFF"><input type="text" name="memberName" Style="width:170px" maxlength="20"/></td>
			</tr>
			
			<tr>
				<td bgcolor="#F4F4F4"><font color="#FF0000">*</font> 생년 월일</td>
				<td bgcolor="#FFFFFF"><input type="text" name="birthday" Style="width:170px" maxlength="20"/></td>
			</tr>
		</table> 
		</center>
		<br/>
		<input class="button" name="submit" type="submit" value="찾기" class="inputb" style="width: 140px;">&nbsp;
		<button class="button" type="button" onclick="location.href='main'" style="width: 140px;">취소</button>
	</form>
	</div>
</body>
</html>