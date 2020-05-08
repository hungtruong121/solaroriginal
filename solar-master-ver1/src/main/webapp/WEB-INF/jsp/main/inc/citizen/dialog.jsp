<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jsp/main/inc/citizen/taglib.jsp" %>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/templates/css/jquery-ui.css">
<style type="text/css">
   .ui-dialog-buttonset .btn-active {
       border: 1px solid #cccccc !important;
       background: #ededed !important;
       color: #333333 !important;
   }
</style>
<script type="text/javascript" src="<%=request.getContextPath()%>/templates/js/jquery-ui.js"></script>
<script type="text/javascript">
	$(function(){
	   $('#message-popup').hide();
	   $('.message-popup .popup-content .content-footer input:first-child').click(function () {
		   $('.message-popup').hide();
	    });
	});
	function openModel(msg, title) {
		if(title === undefined || title == null || title == ""){
			title="오류";
		}
    	$("#messageTitle").html(title);
    	$("#messageContent").html(msg);
        $('.message-popup').show();
    };
</script>
<div class="message-popup">
    <div class="popup-content">
        <div class="content-header">
            <h2 id="messageTitle"></h2>
        </div>
        <div class="content-body">
            <p id="messageContent"></p>
        </div>
        <c:choose>
        	<c:when test="${not empty msg}">
        		<div class="content-footer">
		            <input type="button" value="확인" class="close">
		        </div>
        	</c:when>
        	<c:otherwise>
        		<div class="content-footer">
		            <input type="button" value="닫기" class="close">
		        </div>
        	</c:otherwise>
        </c:choose>
        
    </div>
</div>