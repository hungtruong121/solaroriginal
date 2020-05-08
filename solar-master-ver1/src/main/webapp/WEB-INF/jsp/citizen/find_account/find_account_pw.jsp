<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<% String contextPath = request.getContextPath()+"/templates";%>
<%@include file="/WEB-INF/jsp/main/inc/citizen/header.jsp" %>
<div class="content-body">
    <div class="section-main account">
        <div class="section account-content-wrap">
            <div class="section-content account-content">
               <button class="top-button">up</button>
                <div class="sub-title-wrap">
                    <h2 class="content-title">비밀번호 찾기</h2>
                    <p class="content-contents">휴대폰 번호를 입력하여 비밀번호를 찾아주세요.</p>
                </div>
                <div class="account-box-wrap">
                    <h3>비밀번호 찾기</h3>
                    <form class="password-wrap" name="findPassForm" action="javascript:void(0);" method="POST">
                        <div class="id-content">
                            <div class="tel-box on">
                                <div class="tel-content">
                                    <label for="name">이름</label><input type="text" id="name" name="namePhone" required placeholder="이름을 입력해주세요.">
                                    <span id="namePhone-errors" hidden="" class="error"></span>
                                    <label for="tel-number">휴대폰 번호</label><br>
                                    <div style="float:left; width: 525px;">
                                    <input type="tel" id="tel-number" name = "phone" required placeholder="휴대폰번호를 입력해주세요.">
                                    <span id="phone-errors" hidden="" class="error"></span>
                                    </div>
                                    <input type="button" id="verifyPhone" value="인증번호 받기">
                                    <input type="text" name="verifyPhone" required placeholder="인증번호를 입력해주세요.">
                                    <span id="verifyPhone-errors" hidden="" class="error"></span>
                                </div>
                            </div>
                        </div>
                        <input type="submit" value="비밀번호 찾기 " onclick="submitFindPass()">
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<input type="hidden" name="title" value="${title}" />
<input type="hidden" name="message" value="${message}" />
<%@include file="/WEB-INF/jsp/main/inc/citizen/dialog.jsp" %> 
<%@include file="/WEB-INF/jsp/main/inc/citizen/footer.jsp" %>
<script type="text/javascript">
$( document ).ready(function() {
	
	$("#verifyPhone").click(function(){
		$("#phone-errors").attr('style','display:none !important; background: unset;');
		var phone = document.findPassForm.phone.value;
		
		var rsCheck = checkPhone(phone);
		if(!rsCheck){
			 $("#phone-errors").html("유효한 값을 입력하십시오 (XXX-XXXX-XXXX, XXXXXXXXXXX)");
			 $("#phone-errors").show();
			 return;
		}		
		$.ajax({
			  method: "POST",
			  data: {
				phone:phone,
			  },
			  url: "<%=request.getContextPath()%>/citizen/verifyPhone.do",
			})
			.done(function( data ) {
		    	if(data.message !== ''){
		    		openModel(data.message, data.title);
		    	}
		  	});
		
	});
});
function submitFindPass(){
	$("#phone-errors").attr('style','display:none !important; background: unset;');
	$("#namePhone-errors").attr('style','display:none !important; background: unset; margin-top: -32px;');
	$("#verifyPhone-errors").attr('style','display:none !important; background: unset; margin-top: -32px;');
	var phone = document.findPassForm.phone.value;
	var isValid = true;
	if(phone === null || "" === phone){
		$("#phone-errors").html("유효한 값을 입력하십시오 (XXX-XXXX-XXXX, XXXXXXXXXXX)");
	 	$("#phone-errors").show();
	 	isValid = false;
	}
	var rsCheck = checkPhone(phone);
	if(!rsCheck){
		$("#phone-errors").html("유효한 값을 입력하십시오 (XXX-XXXX-XXXX, XXXXXXXXXXX)");
		$("#phone-errors").show();
		isValid = false;
	}
	
	var name = document.findPassForm.namePhone.value;
	if(name === null || "" === name){
		$("#namePhone-errors").html("유효한 값을 입력하십시오 ");
	 	$("#namePhone-errors").show();
	 	isValid = false;
	}
	var verifyPhone = $("input[name=verifyPhone]").val();
	if(verifyPhone === null || "" === verifyPhone){
		$("#verifyPhone-errors").html("유효한 값을 입력하십시오 ");
	 	$("#verifyPhone-errors").show();
	 	isValid = false;
	}
	if(!isValid){
		return;
	}
	document.findPassForm.action="<c:url value='/citizen/findPass.do'/>";
    document.findPassForm.submit();
}
window.onload = function()
{
	var title = document.querySelector('input[name=title]').value;
	var message = document.querySelector('input[name=message]').value;
    if (message != "") {
    	openModel(message, title);
    }
};

$(".sub-header-wrap").removeClass("sub-header-wrap");
</script>