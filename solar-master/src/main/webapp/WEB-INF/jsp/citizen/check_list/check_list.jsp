<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String contextPath = request.getContextPath()+"/templates";%>
<%@include file="/WEB-INF/jsp/main/inc/citizen/header.jsp" %>

<div class="content-body">
    <div class="sub-content-head-wrap sub-content3">
        <div class="sub-content-head">
    <div class="sub-content-title-wrap">
        <h2 class="sub-content-title">
            사전 확인 사항
        </h2>
    </div>
</div>

        <div class="sub-navigation-wrap">
            <div class="sub-navigation">
                <div class="dropdown">
                    <button class="dropdown-button">
                        <span>설치안내</span>
                        <img src="<%=contextPath%>/img/ico_small_next.png" alt="small_next">
                    </button>
                    <div class="dropdown-menu">
                        <%@include file="/WEB-INF/jsp/main/inc/citizen/side/left.jsp"%>
                    </div>
                </div>
                <div class="dropdown">
                    <button class="dropdown-button">
                        <span>사전 확인 사항</span>
                        <img src="<%=contextPath%>/img/ico_small_next.png" alt="small_next">
                    </button>
                    <div class="dropdown-menu">
                        <%@include file="/WEB-INF/jsp/main/inc/citizen/side/right-checklist.jsp"%>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <div class="section baseCheck-content-wrap">
        <div class="section strategy-content-wrap">
            <div class="section-content strategy-content">
                <div class="sub-title-wrap">
                    <h2 class="content-title">사전 확인 사항</h2>
                    <span class="black-bar"></span>
                </div>
                <div class="content1">
                    <h3><span>01</span><br>공동주택 관리 주체 동의</h3>
                    <ul>
                        <img src="<%=contextPath%>/img/intro-icon1.png" alt="Communication">
                      	<li>
                            공동주택에 거주하는 시민이 베란다 난간에 태양광 미니발전소를 설치하고자 하는 경우, 설치 전에 반드시 공동주택 관리 주체의 동의를 받아야 합니다.(「공동주택관리법 시행령」제19조제2항제5호)
                        </li> <!-- 2019-06-05 -->
                    </ul>
                </div>
                <div class="content2">
                     <h3><span>02</span><br>이웃 간 조망권·일조권 확인</h3> <!-- 2019-06-05 -->
                    <ul>
                        <img src="<%=contextPath%>/img/intro-icon2.png" alt="Efficiency">
                        <li>조망권·일조권 침해 등 이웃 간 발생할 수 있는 사항은 미리 충분히 검토 후 결정, 설치해야 합니다.</li> <!-- 2019-06-05 -->
                    </ul>
                </div>
                <div class="content3">
                    <h3><span>03</span><br>설치환경 확인</h3> <!-- 2019-06-05 -->
                    <ul>
                        <img src="<%=contextPath%>/img/intro-icon3.png" alt="Reduction">
                        <li>우리집 베란다 방향이 남향인지 확인해야 합니다. (정서향과 정동향의 경우 발전량이 다소 낮을 수 있습니다.)</li> <!-- 2019-06-05 -->
                    </ul>
                </div>
                <div class="content4">
                    <h3><span>04</span><br>음영여부 확인</h3> <!-- 2019-06-05 -->
                    <ul>
                        <img src="<%=contextPath%>/img/intro-icon4.png" alt="Activation">
                        <li>저층의 아파트나 주변에 건물·수목 등이 있을 경우 햇빛이 가려져 음영이 발생하는지 확인해야 합니다.</li> <!-- 2019-06-05 -->
                    </ul>
                </div>
                <div class="content5">
                    <h3><span>05</span><br>보급업체 및 상품정보 확인</h3>
                    <ul>
                        <img src="<%=contextPath%>/img/intro-icon5.png" alt="Activation">
                        <li>보급업체 및 상품에 따라 가격, 효율 중량 등 차이가 발생할 수 있으니, 꼼꼼히 비교하고 신청해야 합니다.</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    
<%@include file="/WEB-INF/jsp/main/inc/citizen/footer.jsp" %>