<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>


<script src="http://code.jquery.com/jquery-1.7.js"></script>
<script type="text/javascript">

$(function () {

    $(".tab_content").hide();
    $(".tab_content:first").show();

    $("ul.tabs li").click(function () {
    	
        $("ul.tabs li").removeClass("active").css("color", "#333");
        $(this).addClass("active").css({"color": "pink","font-weight": "bolder"});
        
       
        $(".tab_content").hide()
        var activeTab = $(this).attr("rel");
        $("#" + activeTab).fadeIn()
    });
});

$(document).ready(function(){
    $("#container").on("click", ".test", function(){ // #list = <div �±� �ȿ� id> .title��  ���� ���� �κ��� Ŭ���� �̸�
   	$.ajax({url: "test",  // ���� �Ѱ��� URL
   		type : "POST", // �Ѱ��� ���
   		data : { // �Ѱ��� ������ (��)
   			no : $(this).attr("name") // name �ȿ� ${board.NO} �� ���־� �۹�ȣ�� �ش��.
   		},
   		success: function(result){ // ���������� ó�� �ɰ�� 
           	$("#tab2").html(result); // ������ jsp �� �־��� ������ ǥ�� <div id="list"> ������ jsp <div>
   		},
   		error: function(result){ // ���� �Ұ��
   			alert("����"); // ���� alert���� �߻�
   		}   		
       });
   }); 
});
</script>

<style type="text/css">
ul.tabs {
    margin: 0;
    padding: 0;
    float: left;
    list-style: none;
    height: 32px;
    border-bottom: 1px solid #eee;
    border-left: 1px solid #eee;
    width: 100%;
    font-family:"dotum";
    font-size:12px;
}
ul.tabs li {
    float: left;
    text-align:center;
    cursor: pointer;
    width:82px;
    height: 31px;
    line-height: 31px;
    border: 1px solid #eee;
    border-left: none;
    font-weight: bold;
    background: #fafafa;
    overflow: hidden;
    position: relative;
}
ul.tabs li.active {
    background: #FFFFFF;
    border-bottom: 1px solid #FFFFFF;
}
.tab_container {
    border: 1px solid #eee;
    border-top: none;
    clear: both;
    float: left;
    width: 248px;
    background: #FFFFFF;
}
.tab_content {
    padding: 5px;
    font-size: 12px;
    display: none;
}
.tab_container .tab_content ul {
    width:100%;
    margin:0px;
    padding:0px;
}
.tab_container .tab_content ul li {
    padding:5px;
    list-style:none
}
;
 #container {
    width: 249px;
    margin: 0 auto;
}
</style>

<div id="container">
    <ul class="tabs">
        <li class="active" rel="tab1">��������</li>
        <li class="test" name=3 rel="tab2" >���ŷ�ŷ</li>
        <li rel="tab3">�̺�Ʈ</li>
    </ul>
    <div class="tab_container">
        <div id="tab1" class="tab_content">
            <ul>
                1111
                111
            </ul>
        </div>
        <!-- #tab1 -->
        <div id="tab2" class="tab_content">

	

		</div>
        <!-- #tab2 -->
        <div id="tab3" class="tab_content">
        
        asdg<br/>
        asdfasdf<br/>
        </div>
        <!-- #tab3 -->
    </div>
    <!-- .tab_container -->
</div>
<!-- #container -->
