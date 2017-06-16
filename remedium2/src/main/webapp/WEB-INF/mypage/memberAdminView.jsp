<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 

<!DOCTYPE html>
<?xml version="1.0" encoding="UTF-8" ?>
<html lang="ko"  xmlns="http://www.w3.org/1999/xhtml" >
	<script type="text/javascript">
	  
	function button_event(url){
		var del = confirm("이 회원을 정말로 삭제 하시겠습니까??");
		
		if(del == true){
			alert("삭제하였습니다.");			
			document.location.href=url;
		}
		else{
			alert("취소하셧습니다.");
			return
		}
		
	}
	</script>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link href="css/board.css" rel="stylesheet" style="text/css">
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


</style>
</head>
<body>
<div class="event">
	
	<table align="center" width="600" border="0" cellspacing="0" cellpadding="0">
	
		<tr>
			<td align="center">
				<h2>회원 상세 보기</h2>
				<hr align="center" width="50%" size="1" color="gray">
				<br>
			</td>
		</tr>	
		
	
	</table>


	<!-- 로그인폼으로 이동 -->
		<table align="center" width="600" border="1" cellspacing="0" cellpadding="0">	
			<tr>
				<td width="50" bgcolor="#202f58"><font color="white">* 아이디</font>
				</td>
			
				<td  bgcolor="#FFFFFF" >
					${admin.MEMBERID }
				</td>
				<td width="100" bgcolor="#202f58"><font color="white">* 가입일</font>
				</td>
				<td bgcolor="#FFFFFF" >
					${admin.REGDATE }					 
				</td>
			</tr>
			
			<tr>
				<td width="100" bgcolor="#202f58"><font color="white">* 비밀 번호</font>
				</td>
			
				<td width="50" bgcolor="#FFFFFF" colspan="0">
					${admin.MEMBERPASSWORD }				 
				</td>
				<td width="100" bgcolor="#202f58"><font color="white">* 탈퇴일</font>
				</td>
				<td bgcolor="#FFFFFF" >
					${admin.DELDATE }					 
				</td>
			</tr>
			
			<tr>
				<td width="100" bgcolor="#202f58"><font color="white">* 이 름</font>
				</td>
			
				<td width="50" bgcolor="#FFFFFF" >
					${admin.MEMBERNAME }				
				</td>
					<td width="100" bgcolor="#202f58"><font color="white">* 보유 Cash</font>
				</td>
				<td bgcolor="#FFFFFF" >
					${admin.CASH }					 
				</td>
			</tr>
			
			<tr>
				<td width="100" bgcolor="#202f58"><font color="white">* 성 별</font>
				</td>
				<td width="50" bgcolor="#FFFFFF">
					
					<c:if test="${admin.GENDER eq 'M' }">
						남자
					</c:if>
					<c:if test="${admin.GENDER eq 'W' }">
						여자
					</c:if>	
								
				</td>
					<td width="100" bgcolor="#202f58"><font color="white">* 사용 여부</font>
				</td>
				<td bgcolor="#FFFFFF" >
					${admin.USERCHECK }				 
				</td>
			</tr>
			
			<tr>
				<td width="100" bgcolor="#202f58"><font color="white">* 생년 월일</font>
				</td>
			
				<td width="50" bgcolor="#FFFFFF" colspan="3">
					${admin.BIRTHDAY }				
				</td>
			</tr>
			
			
			<tr>
				<td width="100" bgcolor="#202f58"><font color="white">* 전화 번호</font>
				</td>
			
				<td width="50" bgcolor="#FFFFFF" colspan="3">
					${admin.PHONE }			
				</td>
			</tr>
			
			
			<tr>
				<td width="100" bgcolor="#202f58"><font color="white">* 이메일</font>
				</td>
			
				<td width="50" bgcolor="#FFFFFF" colspan="3">
					${admin.EMAIL }					
				</td>
			</tr>
			
			<tr>
				<td width="100" bgcolor="#202f58"><font color="white">* 우편 번호</font>
				</td>
				<td width="50" bgcolor="#FFFFFF" colspan="3">
				${admin.ZIPCODE }	
				</td>
			</tr> 
			<tr>
				<td width="100" bgcolor="#202f58"><font color="white">* 주 소</font>
				</td>
				<td width="200"bgcolor="#FFFFFF">
				${admin.ADDR1 }
				</td>
				<td colspan="2">
				${admin.ADDR2 }
				</td>
			</tr>
		
		</table>
		<br>
		<br>
		<input class="button" name="list" type="button" value="회원 목록" class="inputb" onClick="javascript:location.href='memberAdminList'"/>
   
    	<input class="button" name="modify" type="button" value="회원 수정" class="inputb" onClick="javascript:location.href='memberAdminModify?memberId=${admin.MEMBERID }'"/> 
		<c:if test="${memberName != admin.MEMBERNAME}">
		<input class="button" type="button" value="회원 삭제" class="inputb" onClick="javascript:button_event('memberAdminDelete?memberId=${admin.MEMBERID }')"/>
		</c:if>
</div>	


</body>
</html>