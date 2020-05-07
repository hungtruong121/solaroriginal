<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String contextPath = request.getContextPath()+"/templates/mobile";%>
<%@include file="/WEB-INF/jsp/main/inc/citizen/mobile/header_sub.jsp" %>
<input type="hidden" class="sub-title" id="fund" value="보조금 정보"></input>
<div class="content-body">
    <button class="top-button">up</button>
    <div class="section fund-content-wrap">
        <div class="section-content fund-content">
            <div class="mobile-title-wrap">
                <h2 class="content-title">베란다형 태양광 미니발전소</h2>
                <span class="black-bar"></span>
            </div>
            <div class="bdrs-box">
                <p>서울시 보조금 현황</p>
            </div>
            <div class="box-wrap">
                <div class="box-content1">
                    <div class="title">
                        <h3><img  src="<%=request.getContextPath()%>/templates/mobile/img/fund-icon1.png" alt="지원대상아이콘">지원대상</h3>
                    </div>
                    <div class="text">
                        <p>서울 지역 공동 주택<small> (베란다)</small>, 단독 주택<small> (옥상)</small>, 상가 건물 등에 태양광 미니발전소 설치 시민<br><small>(소유자 및 세입자 신청 가능)</small></p>
                    </div>
                </div>
                <div class="box-content2">
                    <div class="title">
                        <h3><img  src="<%=request.getContextPath()%>/templates/mobile/img/fund-icon2.png" alt="사업규모아이콘">사업규모</h3>
                    </div>
                    <div class="text">
                        <p>총222억<br>15백만원</p>
                    </div>
                </div>
                <div class="box-content3">
                    <div class="title">
                        <h3><img  src="<%=request.getContextPath()%>/templates/mobile/img/fund-icon3.png" alt="지원기간아이콘">지원기간</h3>
                    </div>
                    <div class="text">
                        <p>업체 선정 공고일 ~ <br> 2019년11월30일<br><small>(선착순 접수, 예산소진 시 종료)</small></p>
                    </div>
                </div>
                <div class="box-content4">
                    <div class="title">
                        <h3><img  src="<%=request.getContextPath()%>/templates/mobile/img/fund-icon4.png" alt="지원기준아이콘">지원기준</h3>
                    </div>
                    <div class="text">
                        <p>1,390원/W<br>※ 50W~1KW 미만까지<br> 용량별 차등 지원</p>
                    </div>
                </div>
            </div>
            <ul class="list-content1">
                <li>・모듈 300W 1장 설치하는 경우 보조금 417,000원(300W×1,390원) 지원</li>
                <li>・난간 거치형은 동일 가구에 모듈 1장만 지원</li>
                <li>・거주지 자치구별 예산 범위 내에서 자체 계획에 따른 추가 지원 있음</li>
                <li>・보조금은 시장 상황을 고려하여 2020년까지 매년 약 10%씩 하향 예정</li>
            </ul>
            <div class="table-wrap">
                <div class="bdrs-box">
                    <p>자치구 보조금 현황</p>
                </div>
                <table border="1" sumary="fund" frame="void">
                    <caption>(단위 : 천원)</caption>
                    <tr>
                        <th rowspan="2">지역</th>
                        <th rowspan="2">설치유형</th>
                        <th colspan="3">2019년도 보조금 및 가구</th>
                    </tr>
                    <tr>
                        <th>지원형태</th>
                        <th>전체 보조금</th>
                        <th>가구(개소) 수</th>
                    </tr>
                    <tr>
                        <td>노원구</td>
                        <td>베란다형</td>
                        <td>50/가구</td>
                        <td>100,000</td>
                        <td>2,000</td>
                    </tr>
                    <tr>
                        <td>중랑구</td>
                        <td>베란다형</td>
                        <td>50/가구</td>
                        <td>50,000</td>
                        <td>1,000</td>
                    </tr>
                    <tr>
                        <td>동대문구</td>
                        <td>베란다형</td>
                        <td>50/가구</td>
                        <td>150,000</td>
                        <td>3,000</td>
                    </tr>
                    <tr>
                        <td>성동구</td>
                        <td>베란다형</td>
                        <td>50/가구</td>
                        <td>44,000</td>
                        <td>880</td>
                    </tr>
                    <tr>
                        <td>광진구</td>
                        <td>베란다형</td>
                        <td>50/가구</td>
                        <td>150,000</td>
                        <td>3,000</td>
                    </tr>
                    <tr>
                        <td>송파구</td>
                        <td>베란다형</td>
                        <td>50/가구</td>
                        <td>30,000</td>
                        <td>608</td>
                    </tr>
                    <tr>
                        <td>강남구</td>
                        <td>베란다형</td>
                        <td>50/가구</td>
                        <td>50,000</td>
                        <td>1,000</td>
                    </tr>
                    <tr>
                        <td>서초구</td>
                        <td>베란다형</td>
                        <td>50/가구</td>
                        <td>50,000</td>
                        <td>1,000</td>
                    </tr>
                    <tr>
                        <td>강동구</td>
                        <td>베란다형</td>
                        <td>50/가구</td>
                        <td>44,000</td>
                        <td>880</td>
                    </tr>
                    <tr>
                        <td>종로구</td>
                        <td>베란다형</td>
                        <td>50/가구</td>
                        <td>10,000</td>
                        <td>200</td>
                    </tr>
                    <tr>
                        <td>중구</td>
                        <td>베란다형</td>
                        <td>50/가구</td>
                        <td>9,000</td>
                        <td>180</td>
                    </tr>
                    <tr>
                        <td>용산구</td>
                        <td>베란다형</td>
                        <td>50/가구</td>
                        <td>10,000</td>
                        <td>200</td>
                    </tr>
                    <tr>
                        <td>성북구</td>
                        <td>베란다형</td>
                        <td>50/가구</td>
                        <td>50,000</td>
                        <td>1,000</td>
                    </tr>
                    <tr>
                        <td>은평구</td>
                        <td>베란다형</td>
                        <td>50/가구</td>
                        <td>60,000</td>
                        <td>1,200</td>
                    </tr>
                    <tr>
                        <td>서대문구</td>
                        <td>베란다형</td>
                        <td>50/가구</td>
                        <td>65,000</td>
                        <td>1,300</td>
                    </tr>
                    <tr>
                        <td>마포구</td>
                        <td>베란다형</td>
                        <td>50/가구</td>
                        <td>58,000</td>
                        <td>1,160</td>
                    </tr>
                    <tr>
                        <td>강북구</td>
                        <td>베란다형</td>
                        <td>50/가구</td>
                        <td>37,000</td>
                        <td>740</td>
                    </tr>
                    <tr>
                        <td>도봉구</td>
                        <td>베란다형</td>
                        <td>50/가구</td>
                        <td>100,000</td>
                        <td>2,000</td>
                    </tr>
                    <tr>
                        <td>동작구</td>
                        <td>베란다형</td>
                        <td>50/가구</td>
                        <td>60,000</td>
                        <td>1,200</td>
                    </tr>
                    <tr>
                        <td>양천구</td>
                        <td>베란다형</td>
                        <td>50/가구</td>
                        <td>50,000</td>
                        <td>1,000</td>
                    </tr>
                    <tr>
                        <td>강서구</td>
                        <td>베란다형</td>
                        <td>50/가구</td>
                        <td>50,000</td>
                        <td>1,000</td>
                    </tr>
                    <tr>
                        <td>구로구</td>
                        <td>베란다형</td>
                        <td>50/가구</td>
                        <td>30,000</td>
                        <td>600</td>
                    </tr>
                    <tr>
                        <td>금천구</td>
                        <td>베란다형</td>
                        <td>50/가구</td>
                        <td>70,000</td>
                        <td>1,400</td>
                    </tr>
                    <tr>
                        <td>관악구</td>
                        <td>베란다형</td>
                        <td>50/가구</td>
                        <td>50,000</td>
                        <td>1,000</td>
                    </tr>
                    <tr>
                        <td>영등포구</td>
                        <td>베란다형</td>
                        <td>50/가구</td>
                        <td>50,000</td>
                        <td>1,000</td>
                    </tr>

                    <tr>
                        <td colspan="3">합계</td>
                        <td>1,427,400</td>
                        <td>28,548</td>
                    </tr>
                </table>
                <ul>
                    <li>비고</li>
                    <li>・금천구: 2019년도 보조금 및 가구 주택형 포함</li>
                </ul>
            </div>
        </div>
        <div class="section-content fund-content2">
            <div class="mobile-title-wrap">
                <h2 class="content-title">주택·건물형 태양광 미니발전소</h2>
                <span class="black-bar"></span>
            </div>
            <div class="content2-item1">
                <div class="bdrs-box deep-color">
                    <p>서울시 보조금 현황</p>
                </div>
                <div class="box-content1">
                    <h3><img  src="<%=request.getContextPath()%>/templates/mobile/img/fund-icon5.png" alt="지원대상아이콘">지원대상</h3>
                    <p>서울시 소재 주택·건물에 태양광 미니발전소 설치를 원하는 자</p>
                    <ul>
                        <li>국가·지자체가 소유·관리하는 건물, 법령에서 정해진 설치의무화,<br>영향평가, 발전사업은 제외</li>
                        <li>지원대상 설비는 자가용에 한하여 지원</li>
                    </ul>
                </div>
                <div class="box-content2">
                    <h3><img  src="<%=request.getContextPath()%>/templates/mobile/img/fund-icon6.png" alt="사업규모아이콘">사업규모</h3>
                    <p>2,220백만원</p>
                </div>
                <div class="box-content3">
                    <h3><img  src="<%=request.getContextPath()%>/templates/mobile/img/fund-icon7.png" alt="지원기간아이콘">지원기간</h3>
                    <p>공고일 ~ ’19. 11. 30.(선착순 접수, 예산소진 시 종료)</p>
                </div>
                <div class="box-content4">
                    <h3><img  src="<%=request.getContextPath()%>/templates/mobile/img/fund-icon8.png" alt="지원기준아이콘">지원기준</h3>
                    <table border="1" sumary="fund" frame="void">
                        <tr>
                            <th colspan="2">구분</th>
                            <th>지원단가</th>
                        </tr>
                        <tr>
                            <td rowspan="3">주택형</td>
                            <td>일반(1kW~3kW)</td>
                            <td>600천원/kW</td>
                        </tr>
                        <tr>
                            <td>단독주택 대여(3kW ~ 9kW)</td>
                            <td>200천원/kW</td>
                        </tr>
                        <tr>
                            <td>공동주택 대여(3kW 이상)</td>
                            <td>600천원/kW</td>
                        </tr>
                        <tr>
                            <td rowspan="2">건물형</td>
                            <td>일반(3kW 이상)</td>
                            <td>600천원/kW</td>
                        </tr>
                        <tr>
                            <td>서울시와 단체설치
                                협약 체결시</td>
                            <td>700천원/kW</td>
                        </tr>
                    </table>
                    <ul>
                        <li>주택형 일반 비고</li>
                        <li>・총 사업비 상한제 : 560만원 </li>
                        <li>・2019년도 자치구별 추가 지원</li>
                    </ul>
                </div>
            </div>
            <div class="content2-item2">
                <div class="mobile-title-wrap">
                    <h2 class="content-title">주택·건물형 태양광 미니발전소</h2>
                    <span class="black-bar"></span>
                </div>
                <div class="bdrs-box deep-color">
                    <p>자치구 보조금 현황</p>
                </div>
                <table border="1" sumary="fund" frame="void">
                    <caption>(단위 : 천원)</caption>
                    <tr>
                        <th rowspan="2">지역</th>
                        <th rowspan="2">설치유형</th>
                        <th colspan="4">2019년도 보조금 및 가구</th>
                    </tr>
                    <tr>
                        <th>지원형태</th>
                        <th>전체 보조금</th>
                        <th>가구(개소) 수</th>
                    </tr>
                    <tr>
                        <td>노원구</td>
                        <td>주택형</td>
                        <td>600/가구</td>
                        <td>3,000</td>
                        <td>5</td>
                    </tr>
                    <tr>
                        <td>중랑구</td>
                        <td>주택형</td>
                        <td>600/가구</td>
                        <td>6,000</td>
                        <td>10</td>
                    </tr>
                    <tr>
                        <td>동대문구</td>
                        <td>주택·건물형</td>
                        <td>200/kW</td>
                        <td>10,000</td>
                        <td>50kW</td>
                    </tr>
                    <tr>
                        <td>성동구</td>
                        <td>주택형</td>
                        <td>200/kW</td>
                        <td>6,000</td>
                        <td>10</td>
                    </tr>
                    <tr>
                        <td>광진구</td>
                        <td>주택형</td>
                        <td>1,000/가구</td>
                        <td>150,000</td>
                        <td>120</td>
                    </tr>
                    <tr>
                        <td>송파구</td>
                        <td>주택형</td>
                        <td>600/가구</td>
                        <td>69,600</td>
                        <td>116</td>
                    </tr>
                    <tr>
                        <td>강남구</td>
                        <td>주택형</td>
                        <td>1,000/가구</td>
                        <td>50,000</td>
                        <td>50</td>
                    </tr>
                    <tr>
                        <td>서초구</td>
                        <td>주택형</td>
                        <td>60/가구</td>
                        <td>36,000</td>
                        <td>60</td>
                    </tr>
                    <tr>
                        <td>강동구</td>
                        <td>주택형</td>
                        <td>600/가구</td>
                        <td>60,000</td>
                        <td>10</td>
                    </tr>
                    <tr>
                        <td>종로구</td>
                        <td>주택형</td>
                        <td>600/가구</td>
                        <td>6,000</td>
                        <td>10</td>
                    </tr>
                    <tr>
                        <td>중구</td>
                        <td>주택형</td>
                        <td>600/가구</td>
                        <td>6,000</td>
                        <td>10</td>
                    </tr>
                    <tr>
                        <td>용산구</td>
                        <td>주택형</td>
                        <td>-</td>
                        <td>-</td>
                        <td>-</td>
                    </tr>
                    <tr>
                        <td>성북구</td>
                        <td>주택형</td>
                        <td>600/가구</td>
                        <td>12,000</td>
                        <td>20</td>
                    </tr>
                    <tr>
                        <td>은평구</td>
                        <td>주택형</td>
                        <td>600/가구</td>
                        <td>12,000</td>
                        <td>20</td>
                    </tr>
                    <tr>
                        <td>서대문구</td>
                        <td>주택형</td>
                        <td>1,000/3kW</td>
                        <td>48,000</td>
                        <td>48</td>
                    </tr>
                    <tr>
                        <td>마포구</td>
                        <td>주택형</td>
                        <td>600/가구</td>
                        <td>12,000</td>
                        <td>20</td>
                    </tr>
                    <tr>
                        <td>강북구</td>
                        <td>주택형</td>
                        <td>600/가구</td>
                        <td>3,000</td>
                        <td>5</td>
                    </tr>
                    <tr>
                        <td>도봉구</td>
                        <td>주택형</td>
                        <td>600/가구</td>
                        <td>12,000</td>
                        <td>20</td>
                    </tr>
                    <tr>
                        <td>동작구</td>
                        <td>주택형</td>
                        <td>1,000/가구</td>
                        <td>40,000</td>
                        <td>40</td>
                    </tr>
                    <tr>
                        <td>양천구</td>
                        <td>주택형</td>
                        <td>200/kW</td>
                        <td>10,000</td>
                        <td>17</td>
                    </tr>
                    <tr>
                        <td rowspan="2">강서구</td>
                        <td>주택형</td>
                        <td>500/가구</td>
                        <td>10,000</td>
                        <td>20</td>
                    </tr>
                    <tr>
                        <td>건강보호계층</td>
                        <td>1,000/개소</td>
                        <td>20,000</td>
                        <td>20</td>
                    </tr>
                    <tr>
                        <td>구로구</td>
                        <td>-</td>
                        <td>-</td>
                        <td>-</td>
                        <td>-</td>
                    </tr>
                    <tr>
                        <td>금천구</td>
                        <td>주택형</td>
                        <td>200/kW</td>
                        <td>70,000</td>
                        <td>350kW</td>
                    </tr>
                    <tr>
                        <td>관악구</td>
                        <td>주택형</td>
                        <td>600/개소</td>
                        <td>24,000</td>
                        <td>40</td>
                    </tr>
                    <tr>
                        <td>영등포구</td>
                        <td>주택형</td>
                        <td>600/가구</td>
                        <td>12,000</td>
                        <td>20</td>
                    </tr>
                    <tr>
                        <td colspan="3">합계</td>
                        <td>687,600</td>
                        <td>-</td>
                    </tr>
                </table>
                <ul>
                    <li>비고</li>
                    <li>・금천구: 2019년도 보조금 및 가구 베란다형 포함</li>
                </ul>
            </div>
        </div>
    </div>
</div>
<%@include file="/WEB-INF/jsp/main/inc/citizen/mobile/footer.jsp" %>
