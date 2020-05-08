<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String contextPath = request.getContextPath()+"/templates/mobile";%>
<%@include file="/WEB-INF/jsp/main/inc/citizen/mobile/header_sub.jsp" %>
<%@include file="/WEB-INF/jsp/main/inc/citizen/taglib.jsp" %>
<input type="hidden" class="sub-title" id="login" value="서울햇빛마루"></input>
<input type="hidden" name="message" value="${message}" />
<input type="hidden" name="title" value="${title}" />
<input type="hidden" name="reMessage" value="${msg}" />
<div class="content-body">
    <button class="top-button">up</button>
    <div class="section login-content-wrap">
        <div class="section-content login-content">
            <div class="logo-header">
                <h2>로그인</h2>
            </div>
            <div class="logo-body">
                 <form:form id="loginFormMember" name="loginFormMember" action="#LINK" method="post">
                    <input type="tel" placeholder="휴대폰번호를 입력해주세요." id="uid" name="uid" required>
                    <input type="password" placeholder="비밀번호를 입력해주세요." name="password"
                                onkeydown="javascript:if (event.keyCode == 13) { actionLoginMember(); }" required>
                    <div class="check-wrap">
                        <input type="checkbox" id="agree" name="agree" />
                        <label for="agree"><span class="checkbox-custom"></span><span class="checkbox-label">건물 소유자 설치동의 하시겠습니까?</span></label>
                    </div>
                    <input type="submit" onclick="javascript:actionLoginMember()" value="로그인" class="lg-btn">
                 </form:form>  
            </div>
            <div class="logo-footer">
                 <ul class="sub-button-content">
                     <li><a href="<%=request.getContextPath()%>/citizen/join.do">회원가입</a></li>
                     <li><a href="<%=request.getContextPath()%>/citizen/findAccountPw.do">비밀번호 찾기</a></li>
                 </ul>
                <div class="call-center"><a href="tel:1566-0494"><img  src="<%=request.getContextPath()%>/templates/mobile/img/call-center.png" alt="콜센터"></a></div>
            </div>
        </div>
    </div>
</div>


<div class="login-popup mobile">
    <div class="popup-content">
        <div class="content-header">
            <h2>정보 확인</h2>
        </div>
        <div class="content-body">
            <p>설치가 완료된 주문서 정보가 <br> 존재하지 않습니다. <br> 태양광 설치신청을 진행 하시겠습니까?</p>
        </div>
        <div class="content-footer">
            <input type="button" value="닫기" class="close" onClick="window.history.back()">
            <input type="button" value="설치하기" onClick="location.href='${pageContext.request.contextPath}/citizen/install-apply.do'">
        </div>
    </div>
</div>


<%@include file="/WEB-INF/jsp/main/inc/citizen/mobileDialog.jsp" %> 
<script type="text/javascript">
	$(function(){
	   $('.login-popup .popup-content .content-footer input:first-child').click(function () {
		   $('.login-popup').hide();
	   });
	});
</script>

<script type="text/javascript">
	function actionLoginMember() {
	    if (document.loginFormMember.uid.value =="") {
	    	openModel("아이디를 입력하세요");
	        return false;
	    } else if (document.loginFormMember.password.value =="") {
            openModel("비밀번호를 입력하세요");
	        return false;
	    } else {
            rememberMe(document.loginFormMember);
	        document.loginFormMember.action="<c:url value='/citizen/actionLogin.do'/>";
	        document.loginFormMember.submit();
	    }
	}
	function phonenumber(inputtxt)
	{
	  var phoneno = "^[\\d]*$"
	  if(inputtxt.match(phoneno))
	  {
	      return true;
	  }
	  else
	  {
		  openModel("invalid phone number: " + inputtxt);
		  return false;
	  }
	}
	window.onload = function()
	{
		var message = document.querySelector('input[name=message]').value;
	    if (message != "") {
	    	 $('.login-popup').show();
	    }
	    var reMessage = document.querySelector('input[name=reMessage]').value;
	    var title = document.querySelector('input[name=title]').value;
	    if (reMessage != "") {
	    	openModel(reMessage, title);
	    }
	};
    function rememberMe(form) {
        var expdate = new Date();
        // 기본적으로 30일동안 기억하게 함. 일수를 조절하려면 * 30에서 숫자를 조절하면 됨
        if (form.agree.checked)
            expdate.setTime(expdate.getTime() + 1000 * 3600 * 24 * 30); // 30일
        else
            expdate.setTime(expdate.getTime() - 1); // 쿠키 삭제조건
        document.cookie = 'uid' + "=" + escape (form.uid.value) + "; path=/; expires=" + expdate.toGMTString();
    }
</script>
<c:if test="${not empty message}">
	<script>
		$('.login-popup').show();
	</script>
</c:if>
<%@include file="/WEB-INF/jsp/main/inc/citizen/mobile/footer.jsp" %>


   