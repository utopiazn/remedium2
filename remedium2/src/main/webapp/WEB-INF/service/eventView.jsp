<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>이벤트 상세보기</title>
<link href="/remedium/resources/css/board.css" rel="stylesheet"
	style="text/css">
<style type="text/css">
a {
	color: black;
}

.event {
	margin: 5% auto;
	line-height: 2em;
	color: black;
}

.button {
	border: 3px solid #202f58;
	background-color: #202f58;
	display: inline-block;
	cursor: pointer;
	font-size: 13px;
	text-decoration: none;
	color: white;
}

.top {
	background-color: #202f58;
	color: white;
}
</style>
<script type="text/javascript">
	function open_win_noresizable(url, name) {
		var oWin = window.open(url, name,
				"scrollbars=no,status=no,resizable=no,width=300,height=150");
	}
</script>
</head>
<body>
	<div class="event">
		<table width="600" border="0" cellspacing="0" cellpadding="2"
			align="center">
			<tr>
				<td align="center"><h2>EVENT * PROMOTION</h2></td>
			</tr>
			<tr>
				<td height="20"></td>
			</tr>
		</table>

		<table width="600" border="0" cellspacing="0" cellpadding="0"
			align="center">

			<tr bgcolor="#777777">
				<td height="1" colspan="4"></td>
			</tr>

			<tr>
				<td bgcolor="#202f58"><font color="white"> 번호 </font></td>
				<td bgcolor="#FFFFFF">&nbsp;&nbsp;${list.NO}</td>
			</tr>
			<tr bgcolor="#777777">
				<td height="1" colspan="4"></td>
			</tr>

			<tr>
				<td width="100" bgcolor="#202f58"><font color="white">
						이벤트 종류</font></td>
				<td width="500" bgcolor="#FFFFFF">&nbsp;&nbsp;${list.NAME}</td>
			</tr>

			<tr bgcolor="#777777">
				<td height="1" colspan="4"></td>
			</tr>

			<tr>
				<td bgcolor="#202f58"><font color="white"> 내용</font></td>
				<td bgcolor="#FFFFFF">&nbsp;&nbsp;${list.CONTENT}</td>
			</tr>

			<tr bgcolor="#777777">
				<td height="1" colspan="4"></td>
			</tr>

			<tr>
				<td bgcolor="#202f58"><font color="white"> 이벤트 시작</font></td>
				<td bgcolor="#FFFFFF">&nbsp;&nbsp;${list.FIRSTDATE}</td>
			</tr>
			<tr bgcolor="#777777">
				<td height="1" colspan="4"></td>
			</tr>

			<tr>
				<td bgcolor="#202f58"><font color="white"> 이벤트 종료 </font></td>
				<td bgcolor="#FFFFFF">&nbsp;&nbsp;${list.LASTDATE}</td>
			</tr>
			<tr bgcolor="#777777">
				<td height="1" colspan="4"></td>
			</tr>


			<tr bgcolor="#777777">
				<td height="1" colspan="4"></td>
			</tr>

			<tr>
				<td height="10" colspan="4"></td>
			</tr>


			<tr>
				<td align="right" colspan="4"></td>
			</tr>
			<img height="400" width="600" alt="이벤트사진"
				src="/remedium/resources/image/eventImage/${list.IMAGE}">

			<tr>
				<td align="right" colspan="2"><input class="button" name="list"
					type="button" value="목록" class="inputb"
					onClick="javascript:location.href='eventList?currentPage=${list.CURRENTPAGE}'">
				</td>
			</tr>

		</table>
	</div>
</body>
</html>