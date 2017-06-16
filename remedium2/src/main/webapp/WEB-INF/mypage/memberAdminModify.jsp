<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko"  xmlns="http://www.w3.org/1999/xhtml" >
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="css/board.css" rel="stylesheet" style="text/css">
<style type="text/css">
a{
color: black;
}
.event{
margin : 20px; 
line-height: 2.5em; 
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
	<script type="text/javascript">		
	
		function setChildValue(name){	
		     document.getElementById("memberID").value = name;	
		}
		
	</script>	
	<script type="text/javascript">	
		function validation2(userinput){

		
			if(userinput.memberID.value==""){
				alert("아이디를 입력하세요");
				return false;
			}
				
		 	if(userinput.memberPassword.value== ""){
				alert("비밀번호를 입력하세요");
				return false;
			}
			
			else if (userinput.memberPassword2.value==""){
				alert("비밀번호 확인을 입력하세요");
				return false;
			}
			
			if(userinput.memberName.value==""){
				alert("이름을 확인을 입력하세요");
				return false;
			}
			
			if(userinput.birthday.value==""){
				alert("생년월일을 입력하세요");
				return false;
			}
			
			if(userinput.birthday.value==""){
				alert("생년월일을 입력하세요");
				return false;
			}
			
			if(userinput.email.value==""){
				alert("이메일을 입력하세요");
				return false;
			}
			
			if(userinput.zipcode.value==""){
				alert("우편번호 입력하세요");
				return false;
			}
			
			
			if(userinput.addr1.value==""){
				alert("주소를 입력하세요");
				return false;
			}
			
			if(userinput.addr2.value==""){
				alert("상세주소를 입력하세요");
				return false;
			}
			
			return true;
		}
		</script>	
	 	<script type="text/javascript">	

		//아이디 중복 여부를 판다
		function openConfirmid(userinput){
			//아이디를 입력했는지 검사
			if(userinput.memberID.value==""){
				alert("아이디를 입력하세요");
				return;
			}
	
			
			//url과 사용자 입력 id를 조합합니다.			
			url="idCheck.action?memberID="+userinput.memberID.value;
			
			//새로운 윈도우를 엽니다.
			open(url,"confirm",
			 "toolbar=no, location=no,status=no,menubar=no,scrollbars=no,resizable=no,width=400, height=200");
	
		}
		
	
	</script>
	
	
	
	
</head>
<body>
<div class="event">
	
	<table width="600" border="0" cellspacing="0" cellpadding="2" align="center">
	
		<tr>
			<td align="center">
				<h2>회원 수정</h2>
				<hr align="center" width="50%" size="1" color="gray">
			</td>
		</tr>	
		
		<tr>
			<td align="right">
				<font color="#FF0000">* </font>는 필수 입력 사항입니다.
			</td>
		</tr>
	
	</table>


	<!-- 로그인폼으로 이동 -->
	<form name="myForm" action="memberAdminModify"  method="post" enctype="multipart/form-data" onsubmit="return validation2(this);">
			<input type="hidden" name="memberId" value="${member.MEMBERID }"/>
			<input type="hidden" name="zipcode" value="${member.ZIPCODE}" />
			<input type="hidden" name="addr1" value="${member.ADDR1}" />
			<input type="hidden" name="addr2" value="${member.ADDR2}" />

		<table width="600" border="0" cellspacing="0" cellpadding="0" align="center">
			<tr bgcolor="#777777">
          <td height="1" colspan="2"></td>	
        </tr>
			<tr>
				<td width="100" bgcolor="#202f58"><font color="white">* 아이디
				</td>
			
				<td align="left"width="50" bgcolor="#FFFFFF">
				
					&nbsp; ${member.MEMBERID }
					<%-- <s:textfield name="memberID" theme="simple"  cssStyle="width:270px" maxlength="50"/> --%>				
					<!-- <input type="text" name="memberID" size="40" > -->		
					
				</td>
			</tr>
			<tr bgcolor="#777777">
          <td height="1" colspan="2"></td>	
        </tr>
			
			<tr>
				<td width="100" bgcolor="#202f58"><font color="white">* 비밀번호</font>
				</td>
			
				<td align="left" width="50" bgcolor="#FFFFFF">
					&nbsp; <input type="password" name="memberPassword" value="${member.MEMBERPASSWORD}" Style="width:270px" maxlength="50"/>					 

				</td>
			</tr>
			<tr bgcolor="#777777">
          <td height="1" colspan="2"></td>	
        </tr>
			<tr>
				<td width="100" bgcolor="#202f58"><font color="white">* 이름</font>
				</td>
			
				<td align="left" width="50" bgcolor="#FFFFFF">
					&nbsp; <input type="text" name="memberName" value="${member.MEMBERNAME}" Style="width:270px" maxlength="50"/>					
				</td>
			</tr>
			<tr bgcolor="#777777">
          <td height="1" colspan="2"></td>	
        </tr>
			<tr>
				<td width="100" bgcolor="#202f58"><font color="white">* 성별</font>
				</td>		
				<td align="left" width="50" bgcolor="#FFFFFF">
									
					&nbsp; <input type="radio" name="gender" value="M"  checked="checked" />남자
					<input type="radio" name="gender" value="W"/>여자

				</td>
			</tr>
			<tr bgcolor="#777777">
          <td height="1" colspan="2"></td>	
        </tr>
			
			<tr>
				<td width="100" bgcolor="#202f58"><font color="white">* 생년 월일</font>
				</td>
			
				<td align="left" width="50" bgcolor="#FFFFFF">
					&nbsp; <input type="text" name="birthday" value="${member.BIRTHDAY}" Style="width:270px" maxlength="50"/> 예)20140407					
				</td>
			</tr>
			<tr bgcolor="#777777">
          <td height="1" colspan="2"></td>	
        </tr>
			
			<tr>
				<td width="100" bgcolor="#202f58"><font color="white">* 전화 번호</font>
				</td>
			
				<td align="left" width="50" bgcolor="#FFFFFF">
					&nbsp; <input type="text" name="phone" value="${member.PHONE}" Style="width:270px" maxlength="50"/> 	'-' 제외				
				</td>
			</tr>
			<tr bgcolor="#777777">
          <td height="1" colspan="2"></td>	
        </tr>
			
			<tr>
				<td width="100" bgcolor="#202f58"><font color="white">* 이메일</font>
				</td>
			
				<td align="left" width="50" bgcolor="#FFFFFF">
					&nbsp; <input type="text" name="email" value="${member.EMAIL}" Style="width:270px" maxlength="50"/> 					
				</td>
			</tr>
			<tr bgcolor="#777777">
          <td height="1" colspan="2"></td>	
        </tr>
			<tr>
				<td width="100" bgcolor="#202f58"><font color="white">* 주 소</font>
				</td>
			
			
				<td align="left" width="50" bgcolor="#FFFFFF">
				
					&nbsp;<input type="text" id="sample6_postcode" name="zipcode1" placeholder="${member.ZIPCODE}">

&nbsp; <input type="button" onclick="sample6_execDaumPostcode()"  value="우편번호 찾기"><br>

&nbsp;<input type="text" id="sample6_address" name="addr11"  placeholder="${member.ADDR1}">
 
&nbsp;<input type="text" id="sample6_address2" name="addr22" placeholder="${member.ADDR2}">
				</td>
				<tr bgcolor="#777777">
          <td height="1" colspan="2"></td>	
        </tr>
			</tr>
		
		</table>	
		
		<br/>
		
		<input class="button" type="submit" value="수 정" >	
		<input class="button" type="button" value="취 소" onclick="location.href='memberAdminView?memberId=${member.MEMBERID}'">
	</form> 
	
	


<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
            	
            	
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullAddr = ''; // 최종 주소 변수
                var extraAddr = ''; // 조합형 주소 변수

                // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    fullAddr = data.roadAddress;

                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    fullAddr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
                if(data.userSelectedType === 'R'){
                    //법정동명이 있을 경우 추가한다.
                    if(data.bname !== ''){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있을 경우 추가한다.
                    if(data.buildingName !== ''){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('sample6_address').value = fullAddr;

                // 커서를 상세주소 필드로 이동한다.
                document.getElementById('sample6_address2').focus();
            }
        }).open();
    }
</script>
	
	
	<br/><br/><br/><br/><br/><br/>
	&nbsp;
	
	
	
</div>
</body>
</html>