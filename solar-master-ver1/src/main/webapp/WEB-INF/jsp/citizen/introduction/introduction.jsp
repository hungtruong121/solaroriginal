<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String contextPath = request.getContextPath()+"/templates";%>
<%@include file="/WEB-INF/jsp/main/inc/citizen/header.jsp" %>

<div class="content-body">
    <div class="sub-content-head-wrap sub-content1">
        <div class="sub-content-head">
    <div class="sub-content-title-wrap">
        <h2 class="sub-content-title">
            소개 및 역할
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
                        <%@include file="/WEB-INF/jsp/main/inc/citizen/side/left.jsp"%>
                    </div>
                </div>
                <div class="dropdown">
                    <button class="dropdown-button">
                        <span>소개 및 역할</span>
                        <img src="<%=contextPath%>/img/ico_small_next.png" alt="small_next">
                    </button>
                    <div class="dropdown-menu">
                        <%@include file="/WEB-INF/jsp/main/inc/citizen/side/right-about.jsp"%> 
                    </div>
                </div>
            </div>
        </div>
    </div>
    
   
    <div class="section zone-content-wrap">
        <div class="section-content zone-content">
            <button class="top-button">up</button>
            <div class="sub-title-wrap">
                <h2 class="content-title">태양광지원센터 소개</h2>
                <span class="black-bar"></span>
            </div>
            <div class="zone-chart">
                <div class="top-box">
                    <h2>태양광지원센터</h2>
                    <p>5개 권역센터 총괄</p>
                </div>
                <div class="mid-box">
                    <p>태양광 콜센터 <strong>1566-0494</strong></p>
                </div>
                <div class="bottom-box-wrap">
                    <div class="bottom-box1">
                        <h2>도심권 센터</h2>
                        <p>성북, 용산, 종로, 중구</p>
                    </div>
                    <div class="bottom-box2">
                        <h2>동남권 센터</h2>
                        <p>강남, 강동, 서초, 송파</p>
                    </div>
                    <div class="bottom-box3">
                        <h2>동북권 센터</h2>
                        <p>광진, 노원, 동대문<br>성동, 중랑</p>
                    </div>
                    <div class="bottom-box4">
                        <h2>서남권 센터</h2>
                        <p>강서, 관악, 구로, 금천<br>양천, 영등포, 동작</p>
                    </div>
                    <div class="bottom-box5">
                        <h2>서북권 센터</h2>
                        <p>강북, 도봉, 마포<br>서대문, 은평</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="section map-content-wrap">
        <div class="section-content map-content">
            <div class="sub-title-wrap">
                <h2 class="content-title">센터별 주소 및 전화번호</h2>
                <span class="black-bar"></span>
            </div>
            <div class="text-box">
                <div>
                    <p><span></span><strong>양천구 : </strong>태양광지원센터 본부</p>
                    <ul>
                        <li>서울시 양천구 목동서로 20<br>(신목동역 2번 출구)</li>
                        <li>02-2640-5114</li>
                    </ul>
                </div>
                <div>
                    <p><span></span><strong>종로구 : </strong>도심권 센터</p>
                    <ul>
                        <li>서울시 종로구 적선동 광화문 플래티넘 1512호<br>(광화문역 1번 출구)</li>
                        <li>02-739-7061~4</li>
                    </ul>
                </div>
                <div>
                    <p><span></span><strong>송파구 : </strong>동남권 센터</p>
                    <ul>
                        <li>서울시 송파구 가락동 가락몰 업무동 13층 18호<br>(가락시장역 2번 출구)</li>
                        <li>02-6978-3081~4</li>
                    </ul>
                </div>
                <div>
                    <p><span></span><strong>노원구 : </strong>동북권 센터</p>
                    <ul>
                        <li>서울시 노원구 하계동 제로에너지주택 101동 <br> 106호 (하계역 2번 출구)</li>
                        <li>02-976-8871~4</li>
                    </ul>
                </div>
                <div>
                    <p><span></span><strong>동작구 : </strong>서남권 센터</p>
                    <ul>
                        <li>서울시 동작구 상도동 연심(경성)빌딩 3층<br>(신대방역 1번 출구)</li>
                        <li>02-826-8961~4</li>
                    </ul>
                </div>
                <div>
                    <p><span></span><strong>은평구 : </strong>서북권 센터</p>
                    <ul>
                        <li>서울시 은평구 녹번동 서울혁신파크 상상청 404호, 405호 (불광역 2번 출구)</li>
                        <li>02-388-7081~5</li>
                    </ul>
                </div>
            </div>
            <div class="map-box"></div>
        </div>
    </div>
    <div class="section callcenter-content-wrap">
        <div class="section-content callcenter-content">
            <div class="sub-title-wrap">
                <h2 class="content-title">태양광지원센터 역할</h2> <!-- 2019-06-05 -->
                <span class="black-bar"></span>
            </div>
            <div class="callcenter-itemWrap">
                <div class="callcenter-item item1">
                    <img src="<%=request.getContextPath()%>/templates/img/callcenter_item1.png" alt="">
                </div>
                <div class="callcenter-item">
                    <img src="<%=request.getContextPath()%>/templates/img/callcenter_item2.png" alt="">
                </div>
            </div>
            <div class="map-box"></div>
        </div>
    </div>
    
</div>
<%@include file="/WEB-INF/jsp/main/inc/citizen/footer.jsp" %>