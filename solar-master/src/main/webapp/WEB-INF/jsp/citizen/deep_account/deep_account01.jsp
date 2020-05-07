<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String contextPath = request.getContextPath()+"/templates";%>
<%@include file="/WEB-INF/jsp/main/inc/citizen/header.jsp" %>

<div class="content-body">
    <div class="section-main account">
        <div class="section account-content-wrap">
            <div class="section-content account-content">
               <button class="top-button">up</button>
                <div class="sub-title-wrap">
                    <h2 class="content-title">아이디/비밀번호 찾기</h2>
                    <p class="content-contents">아이디/비밀번호를 찾을 방법을 선택해주세요.</p>
                </div>
                <div class="account-box-wrap">
                    <ul class="tabs">
                        <li><a href="#tab1" class="on">아이디 찾기</a></li>
                        <li><a href="#tab2">비밀번호 찾기</a></li>
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
                        <input type="submit" value="아이디 찾기">
                    </form>
                    <form class="panel password-wrap" id="tab2">
                        <div class="id-content">
                            <div class="tel-box on">
                                <div class="tel-button"><span></span>휴대폰 번호로 찾기</div>
                                <div class="tel-content">
                                   <label for="id-name">아이디</label>
                                   <input type="text" id="id-name" placeholder="아이디를 입력해주세요." required>
                                    <label for="name">이름</label><input type="text" id="name" required placeholder="이름을 입력해주세요.">
                                    <label for="tel-number">휴대폰 번호</label><br><input type="tel" id="tel-number" required placeholder="휴대폰번호를 입력해주세요.">
                                    <input type="button" value="인증번호 받기">
                                    <input type="text" required placeholder="인증번호를 입력해주세요.">
                                </div>
                            </div>
                            <div class="mail-box">
                                <div class="mail-button"><span></span>이메일로 찾기</div>
                                <div class="mail-content">
                                   <label for="id-name">아이디</label>
                                   <input type="text" id="id-name" placeholder="아이디를 입력해주세요." required>
                                    <label for="name">이름</label><input type="text" id="name" required placeholder="이름을 입력해주세요.">
                                    <label for="email">이메일</label><br><input type="email" id="email" required placeholder="이메일을 입력해주세요.">
                                    <input type="button" value="인증번호 받기">
                                    <input type="text" required placeholder="인증번호를 입력해주세요.">
                                </div>
                            </div>
                        </div>
                        <input type="submit" value="비밀번호 찾기">
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<%@include file="/WEB-INF/jsp/main/inc/citizen/footer.jsp" %>