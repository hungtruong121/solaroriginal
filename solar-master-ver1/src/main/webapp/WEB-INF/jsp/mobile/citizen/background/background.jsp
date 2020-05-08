<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String contextPath = request.getContextPath()+"/templates/mobile";%>
<%@include file="/WEB-INF/jsp/main/inc/citizen/mobile/header_sub.jsp" %>
<style>
<!--
.swiper-button-next, .swiper-button-prev , .swiper-container-horizontal>.swiper-pagination-bullets .swiper-pagination-bullet {
    outline: none;
}
-->
</style>
<input type="hidden" id="background" class="sub-title" value="설립배경"></input>
<div class="content-body">
    <button class="top-button">up</button>
    <div class="section bg-content-wrap">
        <div class="bg-step1">
            <div class="mobile-title-wrap">
                <h2>서울에 적용가능한<br>신재생에너지원, 태양광</h2>
                <span></span>
            </div>
            <div class="bg-content">
                <ul>
                    <li>
                        <img  src="<%=request.getContextPath()%>/templates/mobile/img/mobile-bg-icon1.png" alt="다양한 태양광">
                        <span>건물 옥상, 벽면등</span>
                        <p>다양하게 적용<br>가능한 태양광</p>
                    </li>
                    <li>
                        <img  src="<%=request.getContextPath()%>/templates/mobile/img/mobile-bg-icon2.png" alt="공유하는 태양광">
                        <span>시민이 설치하고</span>
                        <p>이익을 공유하는<br>태양광</p>
                    </li>
                    <li>
                        <img  src="<%=request.getContextPath()%>/templates/mobile/img/mobile-bg-icon3.png" alt="제약이 적은 태양광">
                        <span>부지/환경적 제약적은</span>
                        <p>재생에너지인<br>태양광</p>
                    </li>
                </ul>
            </div>
        </div>
        <div class="bg-step2">
            <div class="mobile-title-wrap">
                <h2>2022년 태양광 보급 목표</h2>
                <span></span>
            </div>
            <div class="bg-content">
                <div class="bdrs-box"><p>1백만 가구 태양광 보급</p></div>
                <ul>
                    <li>
                        <img  src="<%=request.getContextPath()%>/templates/mobile/img/mobile-bg-img1.png" alt="베란다">
                        <span>베란다</span>
                        <p>63만</p>
                    </li>
                    <li>
                        <img  src="<%=request.getContextPath()%>/templates/mobile/img/mobile-bg-img2.png" alt="건물">
                        <span>건물형</span>
                        <p>22만</p>
                    </li>
                    <li>
                        <img  src="<%=request.getContextPath()%>/templates/mobile/img/mobile-bg-img3.png" alt="주택">
                        <span>주택형</span>
                        <p>15만</p>
                    </li>
                </ul>
            </div>
        </div>
        <div class="bg-step3">
            <div class="mobile-title-wrap">
                <h2>「2022 태양의 도시, 서울」종합계획 발표</h2>
                <b>(2017.11. 서울특별시)</b>
                <span></span>
            </div>
            <div class="bg-content swiper-container">
                <ul class="swiper-wrapper">
                    <li class="swiper-slide">
                        <img  src="<%=request.getContextPath()%>/templates/mobile/img/mobile-bg-img4.png" alt="설비용량">
                        <h3>태양광 설비용량</h3>
                        <p>원전 1기 설비용량 1GW</p>
                    </li>
                    <li class="swiper-slide">
                        <img  src="<%=request.getContextPath()%>/templates/mobile/img/mobile-bg-img5.png" alt="참여가구">
                        <h3>태양광 참여가구</h3>
                        <p>서울시 3가구 중 1가구</p>
                    </li>
                    <li class="swiper-slide">
                        <img  src="<%=request.getContextPath()%>/templates/mobile/img/mobile-bg-img6.png" alt="발전비율">
                        <h3>태양광 발전비율</h3>
                        <p>‘16년 태양광 발전비율의 10배’</p>
                    </li>
                </ul>
                <div class="swiper-pagination custom-circle"></div>
                <div class="swiper-button-next"></div>
                <div class="swiper-button-prev"></div>
            </div>
        </div>
        <div class="bg-step4">
            <div class="mobile-title-wrap">
                <h2>「재생에너지 3020」 종합계획 발표</h2>
                <span></span>
            </div>
            <div class="bg-content">
                <div class="bdrs-box"><p>재생에너지 3020 이행계획(안)</p></div>
                <ul class="tabs">
                    <li><a href="#tab1" class="on">2017년</a></li>
                    <li><a href="#tab2">신규 (2018년 ~ 2030년)</a></li>
                    <li><a href="#tab3">2030년</a></li>
                </ul>
                <div class="panels">
                    <div class="panel" id="tab1">
                        <img  src="<%=request.getContextPath()%>/templates/mobile/img/mobile-bg-graph1.png" alt="2017년">
                    </div>
                    <div class="panel" id="tab2">
                        <img  src="<%=request.getContextPath()%>/templates/mobile/img/mobile-bg-graph2.png" alt="(2018년 ~ 2030년)">
                    </div>
                    <div class="panel" id="tab3">
                        <img  src="<%=request.getContextPath()%>/templates/mobile/img/mobile-bg-graph3.png" alt="2030년">
                    </div>
                </div>
            </div>
        </div>
        <div class="bg-step5">
            <div class="mobile-title-wrap">
                <h2>전세계 에너지전환 정책</h2>
                <b>신기후체제에 따른 세계 각 국의 에너지 정책 전환 노력</b>
                <span></span>
            </div>
            <div class="bg-content">
                <ul class="num">
                    <li><a href="#num1" class="on">독일</a></li>
                    <li><a href="#num2">프랑스</a></li>
                    <li><a href="#num3">덴마크</a></li>
                    <li><a href="#num4">중국</a></li>
                </ul>
                <div class="panels">
                    <div class="table" id="num1">
                        <img  src="<%=request.getContextPath()%>/templates/mobile/img/Germany.png" alt="2017년">
                        <table frame="void">
                            <tr>
                                <th>신재생</th>
                                <td>2030년 재생에너지<br>발전비율 50%</td>
                            </tr>
                            <tr>
                                <th>원자력</th>
                                <td>2022년 원전<br>완전 폐쇄</td>
                            </tr>
                            <tr>
                                <th>석탄</th>
                                <td>2020년 이후<br>석탄화력 대폭 축소</td>
                            </tr>
                        </table>
                    </div>
                    <div class="table" id="num2">
                        <img  src="<%=request.getContextPath()%>/templates/mobile/img/France.png" alt="(2018년 ~ 2030년)">
                        <table frame="void">
                            <tr>
                                <th>신재생</th>
                                <td>2030년 재생에너지<br>발전비율 50%</td>
                            </tr>
                            <tr>
                                <th>원자력</th>
                                <td>2025년 원전 비율<br>75% -> 50%</td>
                            </tr>
                            <tr>
                                <th>석탄</th>
                                <td>2030년<br>석탄화력 퇴출</td>
                            </tr>
                        </table>
                    </div>
                    <div class="table" id="num3">
                        <img  src="<%=request.getContextPath()%>/templates/mobile/img/Denmark.png" alt="2030년">
                        <table frame="void">
                            <tr>
                                <th>신재생</th>
                                <td>2035년 전력·열 부문<br>100% 재생에너지</td>
                            </tr>
                            <tr>
                                <th>원자력</th>
                                <td>원전 미도입</td>
                            </tr>
                            <tr>
                                <th>석탄</th>
                                <td>2030년<br>석탄화력 퇴출</td>
                            </tr>
                        </table>
                    </div>
                    <div class="table" id="num4">
                        <img  src="<%=request.getContextPath()%>/templates/mobile/img/China.png" alt="2030년">
                        <table frame="void">
                            <tr>
                                <th>신재생</th>
                                <td>2015년 56GW<br>-> 2020년 100GW</td>
                            </tr>
                            <tr>
                                <th>원자력</th>
                                <td>2015년 26GW<br>-> 2020년 35GW</td>
                            </tr>
                            <tr>
                                <th>석탄</th>
                                <td>석탄발전비율<br>2015년 66% ->2022년 62%</td>
                            </tr>
                        </table>
                    </div>
                    <p>출처: 주요국에너지 자원현황 및 정책 외교뷰 2016</p>
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
   