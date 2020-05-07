<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String contextPath = request.getContextPath()+"/templates";%>
<%@include file="/WEB-INF/jsp/main/inc/citizen/header.jsp" %>
<div class="content-body">
    <div class="sub-content-head-wrap sub-content4">
        <div class="sub-content-head">
    <div class="sub-content-title-wrap">
        <h2 class="sub-content-title">
            인사말
        </h2>
    </div>
</div>

        <div class="sub-navigation-wrap">
            <div class="sub-navigation">
                <div class="dropdown">
                    <button class="dropdown-button">
                        <span>온라인신청</span>
                        <img src="<%=contextPath%>/img/ico_small_next.png" alt="small_next">
                    </button>
                    <div class="dropdown-menu">
                        <ul>
                           <li><a href="<%=request.getContextPath()%>/citizen/about.do">태양광 지원 센터</a></li>
                            <li><a href="<%=request.getContextPath()%>/citizen/miniPower.do">태양광 미니 발전소</a></li>
                            <li><a href="<%=request.getContextPath()%>/citizen/install.do">온라인 신청</a></li>
                            <li><a href="">게시판</a></li>
                        </ul>
                    </div>
                </div>
                <div class="dropdown">
                    <button class="dropdown-button">
                        <span>설치신청</span>
                        <img src="<%=contextPath%>/img/ico_small_next.png" alt="small_next">
                    </button>
                    <div class="dropdown-menu">
                        <ul>
                            <li><a href="<%=request.getContextPath()%>/citizen/install.do">설치신청</a></li>
                            <li class="alert-pop"><a href="">AS 신청</a></li>
                            <li class="alert-pop"><a href="">진행 상황 조회</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="section install-content-wrap">
        <div class="section-content install-content">
            <div class="sub-title-wrap">
                <h2 class="content-title">태양광 미니발전소 설치신청</h2>
                <p class="content-contents">서울에너지공사 태양광 미니발전소 설치 신청을 위해 아래 정보를 입력해주세요.</p>
                <span class="black-bar"></span>
            </div>
            <div class="order-info-wrap">
                <h2>주문정보</h2>
                <form></form>
            </div>
        </div>
    </div>
</div>
<%@include file="/WEB-INF/jsp/main/inc/citizen/footer.jsp" %>