<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    
<% String contextPath = request.getContextPath()+"/templates";%>
<%@include file="/WEB-INF/jsp/main/inc/citizen/header.jsp" %>

<script type="text/javascript">
			function actionLoginMember() {
			    if (document.loginFormMember.uid.value =="") {
			    	openModel("아이디를 입력하세요","오류");
			        return false;
			    } else if (document.loginFormMember.password.value =="") {
			    	openModel("비밀번호를 입력하세요","오류");
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
                if (form.checkId.checked)
                    expdate.setTime(expdate.getTime() + 1000 * 3600 * 24 * 30); // 30일
                else
                    expdate.setTime(expdate.getTime() - 1); // 쿠키 삭제조건
                document.cookie = 'uid' + "=" + escape (form.uid.value) + "; path=/; expires=" + expdate.toGMTString();
            }
</script>

<input type="hidden" name="message" value="${message}" />
<input type="hidden" name="title" value="${title}" />
<input type="hidden" name="reMessage" value="${msg}" />
<div class="content-body">
    <div class="section-main login">
        <div class="section login-content-wrap">
            <div class="section-content login-content">
                <div class="rightBox-wrap">
                    <ul class="tabs">
                        <li>로그인</li>
                    </ul>
                    <div class="login-area">
                        <div class="leftBox-wrap">
                            <h2>환영합니다.</h2>
                            <p>로그인 하시면 태양광 설치 신청 및AS를<br>신청할 수 있습니다.</p>
                        </div>
                        
                          <form:form id="loginFormMember" name="loginFormMember" action="#LINK" method="post">
                            <div class="input-wrap">
                                <input type="tel" placeholder="휴대폰번호를 입력해주세요." id="uid" name="uid" required>
                                <input type="password" placeholder="비밀번호를 입력해주세요." name="password"
                                onkeydown="javascript:if (event.keyCode == 13) { actionLoginMember(); }" required>
                                <input type="checkbox" name="checkId" id="lg-check"><label for="lg-check">로그인 상태 유지</label>
                            </div>
                            <div class="button-wrap">
                                <input type="button" onclick="javascript:actionLoginMember()" value="로그인" class="lg-btn">
                            </div>
                            <div class="sub-button-wrap">
	                            <ul class="sub-button-content">
	                                <li><a href="<%=request.getContextPath()%>/citizen/join.do">회원가입</a></li>
	                                <li><a href="<%=request.getContextPath()%>/citizen/findAccountPw.do">비밀번호 찾기</a></li>
	                            </ul>
                          </div>
                             <div class="call-center"><a href=""><img src="../templates/img/call-center.png" alt="콜센터"></a></div>
                        </form:form>                                             
                    </div>
              
                </div>
            </div>
        </div>
    </div>
</div>
<div class="login-popup">
    <div class="popup-content">
        <div class="content-header">
            <h2>정보 확인</h2>
        </div>
        <div class="content-body">
            <p>휴대폰 번호 또는 비밀번호를 다시 확인해주세요.</p>
        </div>
        <div class="content-footer">
            <input type="button" value="닫기" class="close">
        </div>
    </div>
</div>

<script type="text/javascript">
		$(function(){
			    $(".sub-header-wrap").removeClass("sub-header-wrap");
			    
			   $('.login-popup .popup-content .content-footer input:first-child').click(function () {
				   $('.login-popup').hide();
			    });
		});
	
</script>

<%@include file="/WEB-INF/jsp/main/inc/citizen/dialog.jsp" %> 
<%@include file="/WEB-INF/jsp/main/inc/citizen/footer.jsp" %>