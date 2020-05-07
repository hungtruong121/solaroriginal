<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String contextPath = request.getContextPath()+"/templates";%>
<%@include file="/WEB-INF/jsp/main/inc/citizen/header.jsp" %>
<div class="content-body">
    <div class="sub-content-head-wrap sub-content3">
        <div class="sub-content-head">
    <div class="sub-content-title-wrap">
        <h2 class="sub-content-title">
            서비스 소개
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
                        <span>서비스 소개</span>
                        <img src="<%=contextPath%>/img/ico_small_next.png" alt="small_next">
                    </button>
                    <div class="dropdown-menu">
                         <%@include file="/WEB-INF/jsp/main/inc/citizen/side/right-checklist.jsp"%>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="section service-content-wrap">
        <div class="section-content service-content">
           <button class="top-button">up</button>
            <div class="sub-title-wrap">
                <h2 class="content-title">Sunny Seoul 소개</h2>
                <span class="black-bar"></span>
            </div>
            <div class="main-content">
                <img src="<%=contextPath%>/img/service.png" alt="service icon">
                <p>Sunny Seoul은 서울에너지공사가 제공하는 베란다형 태양광 미니 발전소 온라인 플랫폼입니다. <br><br>기존에는 태양광 미니 발전소를 설치하기 위해 시민들이 직접 보급업체에 연락해 설치를 요청했기 <br>때문에 불편한 점이 있었습니다. <br><br>이러한 불편함을 해소하기 위해 서울에너지공사의 온라인 플랫폼 ‘Sunny Seoul’은 태양광 미니 <br>발전소에 대한 정보와 18개 보급업체의 다양한 상품 정보를 한눈에 볼 수 있도록 제공하고, 시간과 <br>장소의 제약 없이 태양광 미니 발전소 설치 및 A/S를 온라인으로 편리하게 신청 할 수 있습니다. <br>또한, 필요 서류들의 전산화를 통해 행정절차를 간소화하여 더욱 빠르게 태양광 미니 발전소를 <br>설치 할 수 있습니다.</p>
            </div>
        </div>
    </div>
</div>
<%@include file="/WEB-INF/jsp/main/inc/citizen/footer.jsp" %>