<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String contextPath = request.getContextPath()+"/templates/mobile";%>
<%@include file="/WEB-INF/jsp/main/inc/citizen/mobile/header_sub.jsp" %>
<input type="hidden" class="sub-title" value="서울햇빛마루"></input>
<div class="content-body">
    <div class="section-main find account">
        <div class="section find-content-wrap">
            <div class="section-content find-content">
                <div class="sub-title-wrap">
                    <h2 class="content-title">비밀번호 찾기</h2>
                    <p class="content-contents">새로운 비밀번호를 입력해주세요.</p>
                </div>
                <form class="apply-wrap" name="formChangePassword" action="#" method="POST">
                    <div class="top-form">
                        <div class="top-top">
                           <div class="top-name">
                                <label for="password">새 비밀번호</label><br>
                                <input type="password" id="new-pw" maxlength="20" name="newPassword" onkeyup="inputPass(this)" onchange="validPassword()"  placeholder="새 비밀번호를 입력해주세요.">
                            	<p id="new-pw-err" style="margin-top: -12px;;text-align: right;color: red;" hidden="">
                            </div>
                           <div class="top-tel">
                                <label for="password">새 비밀번호 확인<span>*</span></label><br>
                                <input type="password" id="check-pw" maxlength="20" name="checkPassword" onkeyup="inputPass(this)" onchange="validPassword()"  placeholder="새 비밀번호를 입력해주세요.">
                           	    <p id="check-pw-err" style="margin-top: 6px;text-align: right;color: red;" hidden="">
                            </div>
                        </div>
                    </div>

                    <div class="button-wrap mt-plus">
                    	<input type="hidden" id="uid" name="uid" value="${uid}"/>
                        <input type="hidden" id="token" name="token" value="${token}"/>
                        <input class="complete" type="submit" value="재설정 완료" id="submitForm">
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript" src="<%=request.getContextPath()%>/templates/js/common.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/templates/js/validate.js"></script>
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
<%@include file="/WEB-INF/jsp/main/inc/citizen/mobile/footer.jsp" %>
