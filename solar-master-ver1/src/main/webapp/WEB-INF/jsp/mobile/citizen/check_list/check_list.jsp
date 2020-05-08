<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String contextPath = request.getContextPath()+"/templates/mobile";%>
<%@include file="/WEB-INF/jsp/main/inc/citizen/mobile/header_sub.jsp" %>
<input type="hidden" id="checklist" class="sub-title" value="사전 확인 사항"></input>
<div class="content-body">
    <button class="top-button">up</button>
    <div class="section check-content-wrap">
        <div class="section-content check-content">
            <div class="content-item1">
                <img src="<%=request.getContextPath()%>/templates/mobile/img/check-list-icon1.png" alt="">
                <b>01</b>
                <h2>공동주택 관리 주체 동의</h2>
                <p>공동주택에 거주하는 시민이 베란다 난간에<br> 태양광 미니발전소를 설치하고자 하는 경우,<br> 설치 전에 반드시 공동주택 관리 주체의<br>동의를 받아야 합니다. <br><small>(「공동주택관리법 시행령」제19조제2항제5호)</small></p>
            </div>
            <div class="content-item2">
                <img src="<%=request.getContextPath()%>/templates/mobile/img/check-list-icon2.png" alt="">
                <b>02</b>
                <h2>이웃 간 조망·일조권 확인</h2>
                <p>조망권·일조권 침해 등<br> 이웃 간 발생할 수 있는 사항은<br>미리 충분히 검토 후 결정, 설치해야 합니다.</p>
            </div>
            <div class="content-item3">
                <img src="<%=request.getContextPath()%>/templates/mobile/img/check-list-icon4.png" alt="">
                <b>03</b>
                <h2>설치환경 확인</h2>
                <p>우리집 베란다 방향이 남향인지<br> 확인해야 합니다. <br><small>(정서향과 정동향의 경우 발전량이 다소 낮을 수 있습니다.)</small></p>
            </div>
            <div class="content-item4">
                <img src="<%=request.getContextPath()%>/templates/mobile/img/check-list-icon3.png" alt="">
                <b>04</b>
                <h2>음영여부 확인</h2>
                <p>보급업체 및 상품에 따라 가격, 효율 중량 등<br>차이가 발생할 수 있으니, 꼼꼼히 비교하고<br>신청해야 합니다.</p>
            </div>
            <div class="content-item5">
                <img src="<%=request.getContextPath()%>/templates/mobile/img/check-list-icon5.png" alt="">
                <b>05</b>
                <h2>보급업체 및 상품정보 확인</h2>
                <p>보급업체 및 상품에 따라 가격, 효율 중량 등<br>차이가 발생할 수 있으니, 꼼꼼히 비교하고<br>신청해야 합니다.</p>
            </div>
        </div>
    </div>
</div>
<%@include file="/WEB-INF/jsp/main/inc/citizen/mobile/footer.jsp" %>

   