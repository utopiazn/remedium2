<%@ page contentType="text/html; charset=UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">


	<style type="text/css">
	
	
		.roomInfoViewTitle{
		
			margin-top : 20px; 
			line-height: 2em;
			color: black;
		}
		
		#MainImag img{
		
			width: 70%;
			text-align: center;	 	
			/*  clear: both; */
		}
		
			
	

		#InfoImage img{
		
			width: 10%;
			text-align: center;	 	
			clear: both;
		}
		
		.container{
			display: table;
			width:100%;
			height: 5%;			
			margin: 5px auto;
		}
		
		.outer{
			display: table;
			width:100%;
			height: 100%;
			
		}
	
		.inner{
			display: table-cell;
			vertical-align: middle;
			text-align:center;
		
			
		}
	
		.inner a img{		
						
			width: 10%;
			height: 10%;			
			margin: 1PX;			
			
		}
			
		
		.info2 img{		
		
			width: 60%;
			height: 80%;	
			text-align: center;	 	
			/*  clear: both; */
			
			
		}
		
		
		
		
		
		
		.content1 p{
			padding: 0px 18%;
			text-align: left;	
		}
		
	</style>

</head>
<body>

 <a href='roomInfoView3?roomClass=2'>DDDDD</a>


뷰

<%-- 

<div class="roomInfoViewTitle">

	<table width="900" border="0" cellspacing="0" cellpadding="0" align="center">
  		<tr>
  		
  			<td align="center"><h2>${resultClass.name}</h2>
 			<hr align="center" width="60%" size="1" color="gray">
  			<br/>
  			</td>
  			
  		</tr>
  		
  	</table>
  	

</div>

 <div id="MainImage">

	<img alt="메인 이미지" src="/remedium/resource/image/roomClassImage/${imageMain}" >

</div>


<div class="container">
<div class="outer">
<div class="inner">

<c:choose>

	<c:when test=${!image_01.equals("")}> 
		
		<a href="roomInfoView.action?roomClass=${roomClass}&imageNum=1">
			<img  alt="메인 이미지1" src="/remedium/resource/image/roomClassImage/${image_01}">
		</a>	
	</c:when>
	
	<c:when test=${!image_02.equals("")}> 
		
		<a href="roomInfoView.action?roomClass=${roomClass}&imageNum=2">
			<img  alt="메인 이미지2" src="/remedium/resource/image/roomClassImage/${image_02}">
		</a>	
	</c:when>
	
	
	<c:when test=${!image_03.equals("")}> 
		
		<a href="roomInfoView.action?roomClass=${roomClass}&imageNum=3">
			<img  alt="메인 이미지3" src="/remedium/resource/image/roomClassImage/${image_03}">
		</a>	
	</c:when>
	
	
	<c:when test=${!image_04.equals("")}> 
		
		<a href="roomInfoView.action?roomClass=${roomClass}&imageNum=4">
			<img  alt="메인 이미지4" src="/remedium/resource/image/roomClassImage/${image_04}">
		</a>	
	</c:when>
	
	
	<c:when test=${!image_05.equals("")}> 
		
		<a href="roomInfoView.action?roomClass=${roomClass}&imageNum=5">
			<img  alt="메인 이미지5" src="/remedium/resource/image/roomClassImage/${image_05}">
		</a>	
	</c:when>

	
</c:choose>	
</div>
</div>
</div>



<div class="content1">
	
	<p>
	${resultClass.content}
	</p>
	
	
</div>




<br/><br/>

<div class="info2">

	<img  alt="시설 정보" src="/remedium/image/roomClassImage/${resultClass.image2}" >

</div>

 --%>
</body>
</html>