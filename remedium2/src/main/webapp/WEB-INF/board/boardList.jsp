<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>QnA</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
     $("#list").on("click", ".title", function(){ // #list = <div 태그 안에 id> .title은  내가 누를 부분의 클래스 이름
    	$.ajax({url: "boardView",  // 내가 넘겨줄 URL
    		type : "POST", // 넘겨줄 방식
    		data : { // 넘겨줄 데이터 (값)
    			no : $(this).attr("name") // name 안에 ${board.NO} 가 들어가있어 글번호에 해당됨.
    		},
    		success: function(result){ // 정상적으로 처리 될경우 
            	$("#list").html(result); // 가져온 jsp 를 넣어줄 영역을 표시 <div id="list"> 가져온 jsp <div>
    		},error: function(result){ // 실패 할경우
    			alert("실패"); // 실패 alert문구 발생
    		}
    		
        });
    }); 
/*     $("#list").on("click", ".title", function(){
    	var i = $(this).attr("name"); // "name" = 글번호 임과 동시에 contents 의 아이디 명
    	$(".contents").hide();
    	$("#"+i).show();
    }); */
    $(".title").mouseover(function(){
    	$(this).css("cursor","pointer");
    });
});
</script>
<style type="text/css">
.contents{
display: none;
}
a{
color: black;
}
.event{
margin : 20px; 
line-height: 2.5em;
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
.bottom{
  padding-left: 46%;
  padding-top: 3%;
}
.top{
	background-color:#202f58;
	color: white;
}
.h{
height: 22px;
}

</style>
</head>
<body>
<div class="event" id="list">
<table width="1000" border="0" cellspacing="0" cellpadding="0" align="center">
  		<tr>
  			<td align="center" ><h2>QnA</h2>
  			<hr align="center" width="60%" size="1" color="gray">
  			<br/>
  			</td>
  			
  		</tr>
  	</table>
  	
  
	<table width="1000" border="0" cellspacing="0" cellpadding="0" align="center">

	    <tr class="top" align="center" bgcolor="#A2D5FF">
      		<td width="50"><strong>번 호</strong></td>
			<td width="100"><strong>제 목</strong></td>
			<td width="50"><strong>작성자</strong></td>
        	<td width="50"><strong>날 짜</strong></td>
        	<td width="50"><strong>답변 상태</strong></td>
			
      	      </tr>
      	      <tr bgcolor="#777777">
        		<td height="1" colspan="5"></td>
      	      </tr>
      	     <c:choose>
                <c:when test="${fn:length(list) > 0}">
                    <c:forEach items="${list }" var="board">
					<tr bgcolor="#FFFFFF" align="center">
					<td>${board.NO}	</td>
					
				
				<%-- <td align="left"> 
				<c:if test="${board.RE_STEP != 0} ">
					<c:forEach var = "i" begin = "${board.RE_STEP}" end = "0">&nbsp;</c:forEach>→
				</c:if>	 --%>
				<%--  <a href="boardView?no=${board.NO }&ref=${board.REF}" >${board.SUBJECT }</a>  </td> 
				
				<td align="center">
				<a href="boardView?no=${board.NO }&ref=${board.REF}">${board.NAME }</a></td>--%>
				<td align="left" name="${board.NO}" class="title"> 
					<c:if test="${board.RE_STEP != 0} ">
						<c:forEach var = "i" begin = "${board.RE_STEP}" end = "0">&nbsp;</c:forEach>→
					</c:if>	
					${board.SUBJECT}
				</td> 
				
				<td align="center">
					${board.NAME }
				</td>
				<td align="center">${board.REGDATE }</td>
				<td align="center"><%-- <s:property value="type"/> --%>
					<c:choose>
						<c:when test='${board.TYPE eq "0"}'>
							미답변
						</c:when>
						<c:otherwise>
							답변완료
						</c:otherwise>
					</c:choose>				
				</td>
			</tr>
			<tr bgcolor="#777777">
				<td height="1" colspan="7"></td>
			</tr>
			<tr>
				<td id="${board.NO}" class="contents" colspan="7">${board.CONTENT}</td>
			</tr>
			<tr bgcolor="#777777">
				<td height="1" colspan="7"></td>
			</tr>
		  </c:forEach>
                </c:when>
                <c:otherwise>
                    <tr>
                        <td colspan="4">조회된 결과가 없습니다.</td>
                    </tr>
                </c:otherwise>
            </c:choose>
		
		<tr align="center">
			<td colspan="7" ><!-- <s:property value="pagingHtml" escape="false"/></td> -->
		</tr>
		<tr align="right">
			<td colspan="7" >
			<c:if test="${memberId != null}">
				<input class="button" type="button" value="글쓰기" onClick="javascript:location.href='boardWrite'">
			</c:if>
			</td>
		</tr>
		
	</table>
	<table align="center">
		<form action="boardList" class="bottom" method="post">
			<select name="searchNum" class="h">
				<option value="0">제 목</option>
				<option value="1">작성자</option>
			</select>&nbsp;
			<input type="text" name="searchKey" value="" Style="wdith:120px" maxlength="20"/>&nbsp;
			<input class="button" name="submit" type="submit" value="검색" class="inputb">
		</form>
	</table>
	</div>
	
</body>
</html>