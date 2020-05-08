<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String contextPath = request.getContextPath()+"/templates/mobile";%>
<%@include file="/WEB-INF/jsp/main/inc/citizen/mobile/header_sub.jsp" %>
<input type="hidden" class="sub-title" id="introduction" value="소개 및 역할"></input>
<div class="content-body">
    <button class="top-button">up</button>
    <div class="section intro-content-wrap">
        <div class="section-content intro-content">
            <div class="intro-step1">
                <div class="mobile-title-wrap">
                    <h2>태양광 지원 센터별 관할구역</h2>
                    <span></span>
                </div>
                <div class="intro-content">
                    <img src="<%=request.getContextPath()%>/templates/mobile/img/mobile-house.png" alt="센터별 관할구역">
                    <ul>
                        <li><strong>도심권 센터</strong>성북. 용산. 종로. 중구</li>
                        <li><strong>동남권 센터</strong>강남. 강동. 서초. 송파</li>
                        <li><strong>동북권 센터</strong>광진. 노원. 동대문. 성동. 중랑</li>
                        <li><strong>서남권 센터</strong>강서. 관악. 구로. 금천. 양천. 영등포. 동작</li>
                        <li><strong>서북권 센터</strong>강북. 도봉. 마포. 서대문. 은평</li>
                    </ul>
                    <div class="call-center">
                        <img src="<%=request.getContextPath()%>/templates/mobile/img/call-center-icon.png" alt="태양광 콜센터">
                        <strong>1566-0494</strong>
                    </div>
                </div>
            </div>
            <div class="intro-step2">
                <div class="mobile-title-wrap">
                    <h2>센터별 주소 및 전화번호</h2>
                    <span></span>
                </div>
                <div class="map-slide swiper-container">
                    <ul class="swiper-wrapper">
                        <li class="swiper-slide">
                            <img src="<%=request.getContextPath()%>/templates/mobile/img/map-yc.png" alt="양천구">
                            <h3><span>양천구</span>태양광지원센터 본부</h3>
                            <p><img src="<%=request.getContextPath()%>/templates/mobile/img/mobile-map-icon.png" alt="좌표">서울시 양천구 목동서로 20 (신목동역 2번출구)</p>
                            <p><img src="<%=request.getContextPath()%>/templates/mobile/img/mobile-call-icon.png" alt="전화번호">02-2640-5114</p>
                        </li>
                        <li class="swiper-slide">
                            <img src="<%=request.getContextPath()%>/templates/mobile/img/map-jr.png" alt="종로구">
                            <h3><span>종로구</span>태양광지원센터 본부</h3>
                            <p><img src="<%=request.getContextPath()%>/templates/mobile/img/mobile-map-icon.png" alt="좌표">서울시 종로구 적선동 광화문 플래티넘 1512호<br> (광화문역 1번 출구)</p>
                            <p><img src="<%=request.getContextPath()%>/templates/mobile/img/mobile-call-icon.png" alt="전화번호">02-739-7061~4</p>
                        </li>
                        <li class="swiper-slide">
                            <img src="<%=request.getContextPath()%>/templates/mobile/img/map-sp.png" alt="송파구">
                            <h3><span>송파구</span>태양광지원센터 본부</h3>
                            <p><img src="<%=request.getContextPath()%>/templates/mobile/img/mobile-map-icon.png" alt="좌표">서울시 송파구 가락동 가락몰 업무동 13층 18호<br> (가락시장역 2번 출구)</p>
                            <p><img src="<%=request.getContextPath()%>/templates/mobile/img/mobile-call-icon.png" alt="전화번호">02-6978-3081~4</p>
                        </li>
                        <li class="swiper-slide">
                            <img src="<%=request.getContextPath()%>/templates/mobile/img/map-nw.png" alt="노원구">
                            <h3><span>노원구</span>태양광지원센터 본부</h3>
                            <p><img src="<%=request.getContextPath()%>/templates/mobile/img/mobile-map-icon.png" alt="좌표">서울시 노원구 하계동 제로에너지주택 101동<br> 106호 (하계역 2번 출구)</p>
                            <p><img src="<%=request.getContextPath()%>/templates/mobile/img/mobile-call-icon.png" alt="전화번호">02-976-8871~4</p>
                        </li>
                        <li class="swiper-slide">
                            <img src="<%=request.getContextPath()%>/templates/mobile/img/map-dz.png" alt="동작구">
                            <h3><span>동작구</span>태양광지원센터 본부</h3>
                            <p><img src="<%=request.getContextPath()%>/templates/mobile/img/mobile-map-icon.png" alt="좌표">서울시 동작구 상도동 연심(경성)빌딩 3층<br> (신대방역 1번 출구)</p>
                            <p><img src="<%=request.getContextPath()%>/templates/mobile/img/mobile-call-icon.png" alt="전화번호">02-826-8961~4</p>
                        </li>
                        <li class="swiper-slide">
                            <img src="<%=request.getContextPath()%>/templates/mobile/img/map-ep.png" alt="은평구">
                            <h3><span>은평구</span>태양광지원센터 본부</h3>
                            <p><img src="<%=request.getContextPath()%>/templates/mobile/img/mobile-map-icon.png" alt="좌표">서울시 은평구 녹번동 서울혁신파크 상상청<br> 404호, 405호 (불광역 2번 출구)</p>
                            <p><img src="<%=request.getContextPath()%>/templates/mobile/img/mobile-call-icon.png" alt="전화번호">02-388-7081~5</p>
                        </li>
                    </ul>
                    <div class="swiper-pagination custom-circle"></div>
                    <div class="swiper-button-next"></div>
                    <div class="swiper-button-prev"></div>
                </div>
            </div>
            <div class="intro-step3">
                <div class="mobile-title-wrap">
                    <h2>태양광 지원센터 역할</h2>
                    <span></span>
                </div>
                <div class="intro-content">
                    <div class="bdrs-box">
                        <p>1.태양광 원스톱 서비스</p>
                    </div>
                    <img src="<%=request.getContextPath()%>/templates/mobile/img/mind-map.png" alt="원스톱 서비스 마인드맵">
                    <div class="bdrs-box">
                        <p>2.태양광 콜센터</p>
                    </div>
                    <div class="intro-sub-content">
                        <img src="<%=request.getContextPath()%>/templates/mobile/img/call-girl.png" alt="상담원 아이콘">
                        <div class="text-box">
                            <h3>시민을 위한 햇빛 도우미</h3>
                            <ul>
                                <li><img src="<%=request.getContextPath()%>/templates/mobile/img/check-icon.png" alt="체크아이콘">미니태양광 일반 상담</li>
                                <li><img src="<%=request.getContextPath()%>/templates/mobile/img/check-icon.png" alt="체크아이콘">접수, 설치, A/S신청, 처리형황 (통합플랫폼과 연동)</li>
                                <li><img src="<%=request.getContextPath()%>/templates/mobile/img/check-icon.png" alt="체크아이콘">상담 데이터베이스 구축</li>
                            </ul>
                        </div>
                        <div class="footer-text">
                            <p><img src="<%=request.getContextPath()%>/templates/mobile/img/call-icon.png" alt="전화번호">1566-0494</p>
                            <p><img src="<%=request.getContextPath()%>/templates/mobile/img/watch-icon.png" alt="운영시간">월~금(공휴일 제외) 09:00 ~ 21:00</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    var swiper = new Swiper('.swiper-container', {
      slidesPerView: 1,
      loop: false,
      loopFillGroupWithBlank: false,
      pagination: {
        el: '.swiper-pagination',
        clickable: true,
      },
      navigation: {
        nextEl: '.swiper-button-next',
        prevEl: '.swiper-button-prev',
      },
    });
</script>
<%@include file="/WEB-INF/jsp/main/inc/citizen/mobile/footer.jsp" %>
    