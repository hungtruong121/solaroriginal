<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String contextPath = request.getContextPath()+"/templates";%>
<%@include file="/WEB-INF/jsp/main/inc/citizen/header.jsp" %>

<div class="content-body">
    <div class="section-main deep02 account">
        <div class="section deep02-content-wrap">
            <div class="section-content deep02-content">
                <div class="sub-title-wrap">
                    <h2 class="content-title">아이디/비밀번호 찾기</h2>
                    <p class="content-contents">아이디/비밀번호를 찾을 방법을 선택해주세요.</p>
                </div>
                <div class="account-box-wrap">
                    <ul class="tabs">
                        <li><a href="#tab1"></a></li>
                        <li><a href="#tab2" class="on"></a></li>
                    </ul>
                    <form class="panel id-wrap" id="tab1">
                        <div class="id-content">
                            <div class="tel-box on">
                                <div class="tel-button"><span></span>휴대폰 번호로 찾기</div>
                                <div class="tel-content">
                                    <label for="name">이름</label><input type="text" id="name" required placeholder="이름을 입력해주세요.">
                                    <label for="tel-number">휴대폰 번호</label><br><input type="tel" id="tel-number" required placeholder="휴대폰번호를 입력해주세요.">
                                    <input type="button" value="인증번호 받기">
                                    <input type="text" required placeholder="인증번호를 입력해주세요.">
                                </div>
                            </div>
                            <div class="mail-box">
                                <div class="mail-button"><span></span>이메일로 찾기</div>
                                <div class="mail-content">
                                    <label for="name">이름</label><input type="text" id="name" required placeholder="이름을 입력해주세요.">
                                    <label for="email">이메일</label><br><input type="email" id="email" required placeholder="이메일을 입력해주세요.">
                                    <input type="button" value="인증번호 받기">
                                    <input type="text" required placeholder="인증번호를 입력해주세요.">
                                </div>
                            </div>
                        </div>
                        <input type="submit" value="아이디 찾기" onClick="location.href='<%=request.getContextPath()%>/citizen/deep/account_01.do'">
                    </form>
                    <form class="panel password-wrap" id="tab2" name="formChangePassword" action="#" method="POST">
                        <div class="id-content">
                            <h3>비밀번호 재설정</h3>
                            <label for="new-pw">새 비밀번호</label>
                            <input type="password" id="new-pw" maxlength="20" name="newPassword" onkeyup="inputPass(this)" onchange="validPassword()" required placeholder="새 비밀번호를 입력해주세요.">
                            <p id="new-pw-err" style="margin-top: -25px;text-align: right;color: red;" hidden="">
                            </p>
                            <label for="check-pw">새 비밀번호 확인</label>
                            <input type="password" id="check-pw" maxlength="20" name="checkPassword" onkeyup="inputPass(this)" onchange="validPassword()" required placeholder="새 비밀번호를 입력해주세요.">
                            <p id="check-pw-err" style="margin-top: 6px;text-align: right;color: red;" hidden="">
                            </p>
                        </div>
                        <input type="hidden" id="uid" name="uid" value="${uid}"/>
                        <input type="hidden" id="token" name="token" value="${token}"/>
                        <input type="submit" value="재설정 완료" id="submitForm">
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<%@include file="/WEB-INF/jsp/main/inc/citizen/footer.jsp" %>
<script type="text/javascript">
function validPassword(){
	var newPass = $("#new-pw").val();
	var checkPass = $("#check-pw").val();
	$("#new-pw-err").html("");
	$("#check-pw-err").html("");
	$("#new-pw-err").hide();
	$("#check-pw-err").hide();
	
	var checkInput = true;
	if(newPass !== null && newPass !== ""){
		if((newPass.length < 8) || (newPass.length > 20)){
			$("#new-pw-err").html("유효한 값을 입력하십시오 (최소 8자~최대 20자 입력 가능)");
			$("#new-pw-err").show();
			return false;
		}
		checkInput = checkPassword(newPass);
		if(!checkInput){
			$("#new-pw-err").html("유효한 값을 입력하십시오 (최소 8자~최대 20자 입력 가능)");
			$("#new-pw-err").show();
			return false;
		}
	}
	if(checkPass !== null && checkPass !== ""){
		if((checkPass.length < 8) || (checkPass.length > 20)){
			$("#check-pw-err").html("유효한 값을 입력하십시오 (최소 8자~최대 20자 입력 가능)");
			$("#check-pw-err").show();
			return false;
		}
		checkInput = checkPassword(checkPass);
		if(!checkInput){
			$("#check-pw-err").html("유효한 값을 입력하십시오 (최소 8자~최대 20자 입력 가능)");
			$("#check-pw-err").show();
			return false;
		}
	}
	if(newPass !== null && newPass !== "" &&
			checkPass !== null && checkPass !== ""){
		if(newPass != checkPass){
			$("#check-pw-err").html("위의 비밀번호와 다릅니다.");
			$("#check-pw-err").show();
			return false;
		}
	}
	return true;
}

function inputPass(ob){
	var val = $(ob).val();
	var idErr = $(ob).attr("id");
	$("#"+idErr+"-err").html("");
	$("#"+idErr+"-err").hide();
	if(val.length < 8){
		return;
	}
	var checkInput = checkPassword(val);
	if(!checkInput){
		$("#"+idErr+"-err").html("영숫자와 특수 문자 만 입력 할 수 있습니다.");
		$("#"+idErr+"-err").show();
	}
	return;
}
function submitChangePass(){
	if(!validPassword()){
		return;
	}
	document.formChangePassword.action="<c:url value='/citizen/deep/changePassword.do'/>";
    document.formChangePassword.submit();
}
$(function(){
    $(".sub-header-wrap").removeClass("sub-header-wrap");
});
$(document).ready(function(){
	$("#submitForm").click(function(e){
		e.preventDefault();
		var newPass = $("#new-pw").val();
		var checkPass = $("#check-pw").val();
		if(newPass == null || newPass == ""){
			$("#new-pw-err").html("이 필드를 입력하십시오.");
			$("#new-pw-err").show();
			return false;
		}
		if(checkPass == null || checkPass == ""){
			$("#check-pw-err").html("이 필드를 입력하십시오.");
			$("#check-pw-err").show();
			return false;
		}
		submitChangePass();
	});
});
</script>