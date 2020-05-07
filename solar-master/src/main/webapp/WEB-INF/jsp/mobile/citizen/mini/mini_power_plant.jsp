<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String contextPath = request.getContextPath()+"/templates/mobile";%>
<%@include file="/WEB-INF/jsp/main/inc/citizen/mobile/header_sub.jsp" %>
<input type="hidden" class="sub-title" id="miniPower" value="미니태양광이란?"></input>
<div class="content-body">
    <button class="top-button">up</button>
    <div class="section mini-content-wrap">
        <div class="section-content mini-content">
            <div class="mini-step1">
                <div class="mobile-title-wrap">
                    <h2 class="content-title">태양에너지란?</h2>
                    <span class="black-bar"></span>
                </div>
                <div class="step1-content">
                    <div class="content-item1">
                        <img src="<%=request.getContextPath()%>/templates/mobile/img/mini-house.png" alt="태양에너지 아이콘">
                        <h3>태양에너지</h3>
                        <p>태양으로부터 전자기파의 형태로 방출되는 에너지이며<br> 태양광발전이란 태양에너지를 변환시켜 전기를 <br> 생산하는 발전 기술</p>
                    </div>
                    <div class="content-item2">
                        <h3>전기는 어디에서 오는가?</h3>
                        <img src="<%=request.getContextPath()%>/templates/mobile/img/energy_chart.png" alt="전기 그래프">
                    </div>
                </div>
            </div>
            <div class="mini-step2">
                <div class="mobile-title-wrap">
                    <h2 class="content-title">태양광 미니 발전소 유형</h2>
                    <span class="black-bar"></span>
                </div>
                <div class="step2-content swiper-container">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <img src="<%=request.getContextPath()%>/templates/mobile/img/mini-slide1.png" alt="베란다형">
                            <div class="slide-tBox">
                                <h3>베란다형</h3>
                                <p><span>발전용량</span> 50kW~1kW미만<br><span>연결형태</span> 콘센트 연결형</p>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <img src="<%=request.getContextPath()%>/templates/mobile/img/mini-slide3.png" alt="주택형">
                            <div class="slide-tBox">
                                <h3>주택형</h3>
                                <p><span>발전용량</span> 1kW~3kW<br><span>연결형태</span> 계량기 연결형</p>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <img src="<%=request.getContextPath()%>/templates/mobile/img/mini-slide2.png" alt="건물형">
                            <div class="slide-tBox">
                                <h3>건물형</h3>
                                <p><span>발전용량</span> 3kW이상<br><span>연결형태</span> 계량기 연결형</p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-pagination custom-circle"></div>
                    <div class="swiper-button-next"></div>
                    <div class="swiper-button-prev"></div>
                </div>
            </div>
            <div class="mini-step3">
                <div class="mobile-title-wrap">
                    <h2 class="content-title">태양광 미니 발전소 설비구성</h2>
                    <span class="black-bar"></span>
                </div>
                <div class="step3-content">
                    <ul class="tabs">
                        <li><a href="#tab1" class="on">태양광 전지</a></li>
                        <li><a href="#tab2">마이크로 인버터</a></li>
                        <li><a href="#tab3">전력량 계측기</a></li>
                    </ul>
                    <div class="panels">
                        <div class="panel" id="tab1">
                            <img src="<%=request.getContextPath()%>/templates/mobile/img/mini-tab1.png" alt="태양광 전지">
                            <div class="tab-tBox">
                                <h3>햇빛 > DC전류</h3>
                                <p>햇빛과 태양광셀이 만드는 광전효과를 통해 직류전기(DC)를 만들어냄</p>
                            </div>
                        </div>
                        <div class="panel" id="tab2">
                            <img src="<%=request.getContextPath()%>/templates/mobile/img/mini-tab2.png" alt="마이크로 인버터">
                            <div class="tab-tBox">
                                <h3>DC전류 > AC전류</h3>
                                <p>작은 양의 직류전기도 우리가 사용하는 교류전기(AC)로 바꾸어 줌</p>
                            </div>
                        </div>
                        <div class="panel" id="tab3">
                            <img src="<%=request.getContextPath()%>/templates/mobile/img/mini-tab3.png" alt="전력량 계측기">
                            <div class="tab-tBox">
                                <h3>실시간 W > 누적 wh 측정</h3>
                                <p>변환된 교류전기의 실시간발전량(W)과 누적발전량(kWh)을 보여줌</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="mini-step4">
                <div class="mobile-title-wrap">
                    <h2 class="content-title">태양광 미니 발전소 효과</h2>
                    <span class="black-bar"></span>
                </div>
                <div class="step4-sub-content">
                    <h2>전기 요금 절감액</h2>
                    <div class="sub-content-items">
                        <div class="clear">
                            <div class="item1">
                                <img src="<%=request.getContextPath()%>/templates/mobile/img/money-long.png" alt="동전아이콘">
                                <h4>설치전</h4>
                                <p>300kWh<strong><br>44,390원</strong></p>
                            </div>
                            <div class="item2">
                                <img src="<%=request.getContextPath()%>/templates/mobile/img/money-arrow.png" alt="화살표">
                            </div>
                            <div class="item3">
                                <img src="<%=request.getContextPath()%>/templates/mobile/img/money-short.png" alt="동전아이콘">
                                <h4>설치후</h4>
                                <p>276kWh<strong><br>38,200원</strong></p>
                            </div>
                        </div>
                        <div class="clear">
                            <div class="item4">
                                <img src="<%=request.getContextPath()%>/templates/mobile/img/mini-4-4.png" alt="월절감액">
                                <p>월 절감액<strong><br>6,190원</strong></p>
                            </div>
                            <div class="item5">
                                <img src="<%=request.getContextPath()%>/templates/mobile/img/mini-4-5.png" alt="연간절감액">
                                <p>연간 절감액<strong><br>74,280원</strong></p>
                            </div>
                        </div>
                    </div>
                    <p class="sources">자료: 서울시 기후환경본부</p>
                </div>
                <div class="step4-content">
                    <div class="text-tBox">
                        <h2>1KWh란?</h2>
                        <p>5W LED 전구를 200시간 켤 수 있고, 100W TV를 10시간 볼 수 있고, 600W 전자레인지를 1시간 40분 동안 돌릴 수 있는 전력량. <br><small>(태양광 미니발전소의 월평균 발전량은 냉장고 월평균 전기 소비량과 비슷합니다.)</small></p>
                    </div>
                    <div class="icon-wrap">
                        <img src="<%=request.getContextPath()%>/templates/mobile/img/mini-4-1.png" alt="전구">
                        <p>5W LED 전구<br><strong>200시간</strong></p>
                    </div>
                    <div class="icon-wrap">
                        <img src="<%=request.getContextPath()%>/templates/mobile/img/mini-4-2.png" alt="텔레비전">
                        <p>100W 텔레비전<br><strong>10시간</strong></p>
                    </div>
                    <div class="icon-wrap">
                        <img src="<%=request.getContextPath()%>/templates/mobile/img/mini-4-3.png" alt="전자레인지">
                        <p>600W 전자레인지<br><strong>1시간 40분</strong></p>
                    </div>
                </div>
                <div class="step4-textBox">
                    <p><strong>300W 설치 시 ｜ 300W 월평균<br> 태양광 발전량</strong><br>300(태양광 모듈 용량) x 3.2(평균일조시간) x 365(일) / 12(개월) = 약 29.2kWh</p>
                </div>
            </div>
            <div class="mini-step5">
                <div class="mobile-title-wrap">
                    <h2 class="content-title">태양광 미니 발전소 환경효과</h2>
                    <span class="black-bar"></span>
                </div>
                <div class="step5-content">
                    <div>
                        <img src="<%=request.getContextPath()%>/templates/mobile/img/tree.png" alt="나무">
                        <p>300W 1가구 설치시<strong><br>소나무 2.5그루 식재효과</strong></p>
                        <small>산림청 주요산림수종 표준탄소흡수량 기준, 30년산 소나무 6.6kg/년</small>
                    </div>
                    <div>
                        <img src="<%=request.getContextPath()%>/templates/mobile/img/car.png" alt="자동차">
                        <p>300W 14가구 설치시<strong><br>경유차 1대분 초미세먼지 저감효과</strong></p>
                        <small>경유차 1대당 연간 초미세먼지 배송량 0.602kg, 그린피스</small>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    var swiper = new Swiper('.swiper-container', {
      slidesPerView: 'auto',
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

 