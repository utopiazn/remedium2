<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>아이디 찾기</title>
<style type="text/css">
a{
color: black;
}
.event{
margin : 20px; 
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
</style>


</head>
<body>


<div class="event">
<table width="850" border="0" cellspacing="0" cellpadding="0" align="center">
  	<tr>
  			<td align="center" ><h2>아이디 찾기 결과</h2>
  			<hr align="center" width="50%" size="1" color="gray">
  			<br/>
  			</td>
  			
  	</tr>
  	</table>
  
    <table width="850" border="0" cellspacing="0" cellpadding="2" align="center">
    <tr>

        <tr >
          <td align="center">아이디는 &nbsp; [ ${memberID} ] &nbsp; 입니다.
        </tr>
		
        <tr>
        <td align="center">
          <a href="login"><font size=2><b>로그인</b></font></a>&nbsp;/ 
          <a href="findPw"><font size=2><b>비밀번호찾기</b></font></a>&nbsp;/ 
          <a href="main"><font size=2><b>메인으로</b></font></a>
        </td>
      </tr>

</table>
</div>


</body>
</html>