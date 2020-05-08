<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/templates/css/jquery-ui.css">
<script type="text/javascript" src="<%=request.getContextPath()%>/templates/js/jquery-ui.js"></script>
<script type="text/javascript">
	$(function(){
	   $('.message-popup').hide();
	   $('.message-popup .popup-content .content-footer input:first-child').click(function () {
		   $('.message-popup').hide();
	    });
	});
    function openModel(msg, title="오류") {
    	if(title === undefined || title == null || title == ""){
			title="오류";
		}
    	$("#messageTitle").html(title);
    	$("#messageContent").html(msg);
        $('.message-popup').show();
    };
</script>
<div class="message-popup mobile">
    <div class="popup-content">
        <div class="content-header">
            <h2 id="messageTitle"></h2>
        </div>
        <div class="content-body">
            <p id="messageContent"></p>
        </div>
        <div class="content-footer">
            <input type="button" value="닫기" class="close">
        </div>
    </div>
</div>