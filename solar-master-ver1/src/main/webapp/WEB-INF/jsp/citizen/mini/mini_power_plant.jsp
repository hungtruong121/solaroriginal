<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <% String contextPath = request.getContextPath()+"/templates";%>
<%@include file="/WEB-INF/jsp/main/inc/citizen/header.jsp" %>
<div class="content-body">
    <div class="sub-content-head-wrap sub-content2">
        <div class="sub-content-head">
    <div class="sub-content-title-wrap">
        <h2 class="sub-content-title">
           미니태양광이란?
        </h2>
    </div>
</div>

        <div class="sub-navigation-wrap">
            <div class="sub-navigation">
                <div class="dropdown">
                    <button class="dropdown-button">
                        <span>태양광미니발전소</span>
                        <img src="<%=contextPath%>/img/ico_small_next.png" alt="small_next">
                    </button>
                    <div class="dropdown-menu">
                        <%@include file="/WEB-INF/jsp/main/inc/citizen/side/left.jsp"%>
                    </div>
                </div>
                <div class="dropdown">
                    <button class="dropdown-button">
                        <span>미니태양광이란?</span>
                        <img src="<%=contextPath%>/img/ico_small_next.png" alt="small_next">
                    </button>
                    <div class="dropdown-menu">
                        <%@include file="/WEB-INF/jsp/main/inc/citizen/side/right-miniPower.jsp"%>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="section about-content-wrap">
       <button class="top-button">up</button>
        <div class="sub-title-wrap">
            <h2 class="content-title">태양에너지란?</h2>
            <span class="black-bar"></span>
        </div>
        <div class="section-content about-content">
            <div>
                <h3>태양에너지</h3>
                <p>・태양으로부터 전자기파의 형태로 방출되는 에너지 <br>・태양광발전이란 태양에너지를 변환시켜 전기를 생산하는 발전 기술</p>
            </div>
            <div>
                <h3>전기는 어디에서 오는가?</h3>
                <img src="<%=request.getContextPath()%>/templates/img/energy_chart.png" alt="">
            </div>
        </div>
    </div>
    <div class="section intro-content-wrap">
        <div class="sub-title-wrap">
            <h2 class="content-title">태양광 미니 발전소 유형</h2>
            <span class="black-bar"></span>
        </div>
        <div class="section-content intro-content">
            <div>
                <h3>베란다형</h3>
                <p>발전용량: 50kW~1kW 미만 <br> 연결형태: 콘센트 연결형</p> <!-- 2019-06-05 -->
            </div>
            <div>
                <h3>주택형</h3>
               <p>발전용량: 1kW~3kW<br>연결형태: 계량기 연결형</p> <!-- 2019-06-05 -->
            </div>
            <div>
                <h3>건물형</h3>
                <p>발전용량: 3kW이상<br>연결형태: 계량기 연결형</p> <!-- 2019-06-05 -->
            </div>
        </div>
        <p>‘서울햇빛마루‘는 베란다형 태양광 미니발전소의 온라인 통합 서비스를 제공합니다.</p>
    </div>
    <div class="section type-content-wrap">
        <div class="section-content type-content">
            <div class="sub-title-wrap">
                <h2 class="content-title">태양광 미니 발전소 설비구성</h2>
                <span class="black-bar"></span>
            </div>
             <div class="type-icon">
               <div>
                    <h3>태양광 전지</h3>
                    <p><strong>햇빛 &gt; DC전류</strong><br>햇빛과 태양광셀이 만드는 광전효과를 <br>통해 직류전기(DC)를 만들어냄</p>
                </div>
                <div>
                    <h3>마이크로 인버터</h3>
                    <p><strong>DC전류 > AC전류</strong><br>작은 양의 직류전기도 우리가 사용하는 <br>교류전기(AC)로 바꾸어 줌</p>
                </div>
                <div>
                    <h3>전력량 계측기</h3>
                    <p><strong>실시간 W > 누적 wh 측정</strong><br>변환된 교류전기의 실시간발전량(W)과 <br>누적발전량(kWh)을 보여줌</p>
                </div>
            </div>

        </div>
    </div>
    <div class="section effect1-content-wrap">
        <div class="section-content effcet1-content">
            <div class="sub-title-wrap">
                <h2 class="content-title">태양광 미니 발전소 효과</h2>
                <span class="black-bar"></span>
            </div>
          
            <div class="effect-radius-wrap">
                <h3>전기 요금 절감액</h3>
                <div class="effect-radius-content">
                    <div class="item1">
                        <h4>설치전</h4>
                        <p>300kWh<strong><br>44,390원</strong></p>
                    </div>
                    <div class="item2"></div>
                    <div class="item3">
                        <h4>설치후</h4>
                         <p>276kWh<strong><br>38,200원</strong></p>
                    </div>
                    <div class="item4">
                        <p>월 절감액<strong><br>6,190원</strong></p>
                    </div>
                    <div class="item5">
                        <p>연간 절감액<strong><br>74,280원</strong></p>
                    </div>
                </div>
                <p class="sources">자료: 서울시 기후환경본부</p>
            </div>
            
            <div class="text">
                <h3>1kWh란?</h3>
                <p><span>5W LED 전구를 200시간 켤 수 있고, 100W TV를 10시간 볼 수 있고, 600W 전자레인지를 1시간 40분 동안 돌릴 수 있는 전력량.</span><br>(태양광 미니발전소의 월평균 발전량은 냉장고 월평균 전기 소비량과 비슷합니다.)</p>
            </div>
            <div class="effect-icon">
                <div>
                    <p>5W LED 전구<br><strong>200시간</strong></p>
                </div>
                <div>
                    <p>100W 텔레비전<br><strong>10시간</strong></p>
                </div>
                <div>
                    <p>600W 전자레인지<br><strong>1시간 40분</strong></p>
                </div>
            </div>
            <div class="text-box">
                <p><strong>300W 설치 시 ｜ 300W 월평균 태양광 발전량</strong><br>300(태양광 모듈 용량) x 3.2(평균일조시간) x 365(일) / 12(개월) = 약 29.2kWh</p>
            </div>
        </div>
    </div>
    <div class="section effect2-content-wrap">
        <div class="section-content effect2-content">
            <div class="sub-title-wrap">
                <h2 class="content-title">태양광 미니 발전소 환경효과</h2>
                <span class="black-bar"></span>
            </div>
            <div class="effect-iconBox">
                <div>
                    <p>300W 1가구 설치시<strong><br>소나무 2.5그루 식재효과</strong></p>
                    <p>산림청 주요산림수종 표준탄소흡수량 기준, 30년산 소나무 6.6kg/년</p>
                </div>
                <div>
                     <p>300W 14가구 설치시<strong><br>경유차 1대분 초미세먼지 저감효과</strong></p>
                    <p>경유차 1대당 연간 초미세먼지 배송량 0.602kg, 그린피스</p>
                </div>
            </div>
        </div>
    </div>
</div>
<%@include file="/WEB-INF/jsp/main/inc/citizen/footer.jsp" %>