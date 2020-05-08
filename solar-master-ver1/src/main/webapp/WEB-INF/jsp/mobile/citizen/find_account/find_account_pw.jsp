<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String contextPath = request.getContextPath()+"/templates/mobile";%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/jsp/main/inc/citizen/mobile/header_sub.jsp" %>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/templates/mobile/css/custom.css">
<input type="hidden" class="sub-title" id="findAccountPw" value="서울햇빛마루"></input>
<div class="content-body">
    <button class="top-button">up</button>
    <div class="section-main find account">
        <div class="section find-content-wrap">
            <div class="section-content find-content">
                <div class="sub-title-wrap">
                    <h2 class="content-title">회원정보를 입력해주세요.</h2>
                </div>
               <form class="password-wrap apply-wrap" name="findPassForm" action="javascript:void(0);" method="POST">
                    <div class="top-form">
                        <div class="top-top">
                           <div class="top-name">
                               <label for="name">이름</label><br>
                               <input type="text" id="name" name="namePhone" required placeholder="이름을 입력해주세요.">
                               <span id="namePhone-errors" hidden="" class="error"></span>
                            </div>
                           <div class="top-tel">
                                <label for="tel">휴대폰 번호<span>*</span></label><br>
                                <input type="tel" id="tel-number" name = "phone" required placeholder="휴대폰번호를 입력해주세요.">
                            	<span id="phone-errors" hidden="" class="error"></span>
                            </div>
                        </div>
                        <div class="address">
                            <label for="address">인증 번호<span>*</span></label><br>
                            <input type="text" name="verifyPhone" required placeholder="인증번호를 입력해주세요.">
                        </div>
                        <input type="button" id="verifyPhone" value="인증번호 받기" />
                        <div class="clearBoth"></div>
                        <span id="verifyPhone-errors" hidden="" class="error"></span>
                    </div>

                    <div class="button-wrap">
                        <input type="submit" value="비밀번호 찾기 " onclick="submitFindPass()">
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript" src="<%=request.getContextPath()%>/templates/js/validate.js"></script>
<input type="hidden" name="title" value="${title}" />
<input type="hidden" name="message" value="${message}" />
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
		var message = document.querySelector('input[name=message]').value;
	    if (message != "") {
	    	openModel(message);
	    }
	};
</script>
<%@include file="/WEB-INF/jsp/main/inc/citizen/mobileDialog.jsp" %> 
<%@include file="/WEB-INF/jsp/main/inc/citizen/mobile/footer.jsp" %>
  