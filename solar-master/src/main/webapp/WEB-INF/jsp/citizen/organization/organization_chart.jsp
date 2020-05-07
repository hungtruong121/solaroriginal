<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String contextPath = request.getContextPath()+"/templates";%>
<%@include file="/WEB-INF/jsp/main/inc/citizen/header.jsp" %>

<div class="content-body">
    <div class="sub-content-head-wrap sub-content1">
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
                        <span>태양광지원센터</span>
                        <img src="<%=contextPath%>/img/ico_small_next.png" alt="small_next">
                    </button>
                    <div class="dropdown-menu">
                        <ul>
                            <li><a href="<%=request.getContextPath()%>/citizen/miniPower.do">태양광 미니 발전소</a></li>
                            <li><a href="<%=request.getContextPath()%>/citizen/service.do">설치 안내</a></li>
                            <li class="alert-pop">온라인 신청</li>
                            <li class="alert-pop">게시판</li>
                        </ul>
                    </div>
                </div>
                <div class="dropdown">
                    <button class="dropdown-button">
                        <span>조직도</span>
                        <img src="<%=contextPath%>/img/ico_small_next.png" alt="small_next">
                    </button>
                    <div class="dropdown-menu">
                        <ul>
                            <li><a href="<%=request.getContextPath()%>/citizen/about.do">인사말</a></li>
                            <li><a href="<%=request.getContextPath()%>/citizen/background.do">설립배경</a></li>
                            <li><a href="<%=request.getContextPath()%>/citizen/introduction.do">소개 및 역할</a></li>
                            <li><a href="<%=request.getContextPath()%>/citizen/map.do">찾아오시는길</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="section chart-content-wrap">
        <div class="section-content chart-content">
            <button class="top-button">up</button>
            <div>
                <img src="<%=contextPath%>/img/organization-chart.png" alt="organization chart">
            </div>
        </div>
    </div>
</div>
<%@include file="/WEB-INF/jsp/main/inc/citizen/footer.jsp" %>