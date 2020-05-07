<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String contextPath = request.getContextPath()+"/templates";%>
<%@include file="/WEB-INF/jsp/main/inc/citizen/header.jsp" %>
<%@include file="/WEB-INF/jsp/main/inc/citizen/taglib.jsp" %>
<%@ taglib prefix="validator" uri="http://www.springmodules.org/tags/commons-validator" %>
<input type="hidden" name="title" value="${title}" />
<input type="hidden" name="message" value="${msg}" />
<div class="content-body">
    <div class="section-main member account">
        <div class="section member-content-wrap">
            <div class="section-content member-content">
               <button class="top-button">up</button>
                <div class="sub-title-wrap">
                    <h2 class="content-title">회원정보입력</h2>
                    <p class="content-contents">서울에너지공사 태양광 미니발전소 서비스 가입을 환영합니다.</p>
                </div>
                <form:form class="apply-wrap" action="#" method="POST" name="joinMemberForm" id="registerForm" commandName="registerMember">
                <h2>회원정보</h2>
                <div class="top-form">
                    <div class="top-top">
                       <div class="top-tel">
                            <label for="tel">휴대폰 번호<span>*</span></label><br>
                            <input type="tel" id="tel" name="user_id" required placeholder="휴대폰 번호를 입력해주세요.">
                            <form:errors path="user_id" cssClass="error" />
                            <span id="tel-errors" hidden="" class="error"></span>
                        </div>
                        <div class="top-name">
                            <label for="name">이름<span></span></label><br>
                            <input type="text" id="name" name="name" required placeholder="이름을 입력해주세요.">
                            <form:errors path="name" cssClass="error" />
                        </div>                        
                    </div>                    
                    <div class="address">
                        <label for="number">인증 번호<span>*</span></label><br>
                        <input type="text" name="number" id="number" style="margin-bottom: 0px;" required placeholder="인증 번호를 입력해주세요.">
                        <form:errors path="number" cssClass="error" />
                    </div>
                    <button class="button" type="button" id="sendNumberCode">인증 번호 전송</button>
                    <div class="top-top" style="clear: both;">
                    <label for="password">비밀 번호<span>*</span></label><br>
                    <input type="password" name="password" id="password" required placeholder="비밀 번호를 입력해주세요.">
                    <form:errors path="password" style="width:auto;" cssClass="error" />
                    </div>
                    
                </div>
                
                <div class="button-wrap">
                    <input class="complete" id="joinMember" type="button" value="가입" >
                </div>
            </form:form>
            </div>
        </div>
    </div>
</div>
<%@include file="/WEB-INF/jsp/main/inc/citizen/dialog.jsp" %> 
<%@include file="/WEB-INF/jsp/main/inc/citizen/footer.jsp" %>
<script>
	$("header").removeClass("sub-header-wrap");
	window.onload = function()
	{
		var message = document.querySelector('input[name=message]').value;
		var title = document.querySelector('input[name=title]').value;
	    if (message != "") {
	    	 openModel(message, title);
	    }
	};
	$(document).ready(function(){
		$("#joinMember").click(function(){
			document.joinMemberForm.action="<c:url value='/citizen/register-member.do'/>";
	        document.joinMemberForm.submit();
		});
		
		$("#sendNumberCode").click(function() {
			var tel = $("#tel").val();
			var $errorTel = $('#tel-errors');
			if($('#user_id\\.errors').html() !== undefined && $('#user_id\\.errors').html() !== ""){
				$errorTel = $('#user_id\\.errors');
			}
			$errorTel.attr('style','display:none !important');
			if(tel == null || tel == "" || tel == undefined){
				$errorTel.html("유효한 값을 입력하십시오 (XXX-XXXX-XXXX, XXXXXXXXXXX)");
				$errorTel.show();
				return;
			}
			var rsCheck = checkPhone(tel);
			if(!rsCheck){
				$errorTel.html("유효한 값을 입력하십시오 (XXX-XXXX-XXXX, XXXXXXXXXXX)");
				$errorTel.show();
	        	return;
			}
			$.ajax({
				type: "POST",
				url : "<%=request.getContextPath()%>/citizen/ajax/code-number-phone.do",
				data : {"phone": tel},
				success : function(data) {
					 openModel(data.message, data.title);
				}
			});
		});
	});
</script>