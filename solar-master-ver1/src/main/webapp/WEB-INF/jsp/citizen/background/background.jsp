<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String contextPath = request.getContextPath()+"/templates";%>
<%@include file="/WEB-INF/jsp/main/inc/citizen/header.jsp" %>
<div class="content-body">
    <div class="sub-content-head-wrap sub-content1">
        <div class="sub-content-head">
    <div class="sub-content-title-wrap">
        <h2 class="sub-content-title">
            설립배경
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
                        <span>설립배경</span>
                        <img src="<%=contextPath%>/img/ico_small_next.png" alt="small_next">
                    </button>
                    <div class="dropdown-menu">
                        <%@include file="/WEB-INF/jsp/main/inc/citizen/side/right-about.jsp"%>
                    </div>
                </div>
            </div>
        </div>
    </div>  
    <div class="section icon-content-wrap">
        <div class="section-content icon-content">
            <div class="sub-title-wrap">
                <h2 class="content-title">서울에 가장 적합한 재생에너지, 태양광</h2>
                <span class="black-bar"></span>
            </div>
            <div class="icon-box">
                <ul>
                    <li>
                        <img src="<%=contextPath%>/img/background_icon1.png" alt="energy icon1">
                        <p>건물 옥상,벽면 등<br><strong>다양하게 적용 가능한 태양광</strong></p>
                    </li>
                    <li>
                        <img src="<%=contextPath%>/img/background_icon2.png" alt="energy icon2">
                        <p>시민이 설치하고<br><strong>이익을 공유하는 태양광</strong></p>
                    </li>
                    <li>
                        <img src="<%=contextPath%>/img/background_icon3.png" alt="energy icon3">
                        <p>부지·환경적 제약이 적은<br><strong>재생에너지인 태양광</strong></p>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="section goal-content-wrap">
        <div class="section-content goal-content">
            <div class="sub-title-wrap">
                <h2 class="content-title">2022년 태양광 보급 목표</h2>
                <span class="black-bar"></span>
            </div>
            <div style="clear:both"></div>
            <div class="radius-wrap">
                <div class="radius-box">
                    <p>1백만 가구 태양광 보급</p>
                </div>
                <div class="radius-content">
                    <div>
                        <p>베란다<br><strong>63만</strong></p>
                    </div>
                    <div>
                        <p>건물형<br><strong>22만</strong></p>
                    </div>
                    <div>
                        <p>주택형<br><strong>15만</strong></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="section plan-content-wrap">
        <div class="section-content plan-content">
            <button class="top-button" style="display: none;">up</button>
            <div class="sub-title-wrap">
                <h2 class="content-title">2022년 태양의 도시서울 종합계획 발표</h2> <!-- 2019-06-05 -->
                <span class="black-bar"></span>
            </div>
            <div class="caption-wrap">
                <h3>(2017.11 서울특별시)</h3>
            </div>
            <div class="box-inner">
                <div class="box-inner-item box-inner-item1"></div>
                <div class="box-inner-item box-inner-item2"></div>
                <div class="box-inner-item box-inner-item3"></div>
            </div>
        </div>
    </div>
    <div class="section chart-content-wrap">
        <div class="section-content chart-content">
            <div class="sub-title-wrap">
                <h2 class="content-title">「재생에너지 3020」 산업통상자원부 종합계획 발표</h2>
                <span class="black-bar"></span>
            </div>
            <div class="" style="clear:both"></div>
            <div class="radius-wrap">
                <div class="radius-box">
                    <p>1백만 가구 태양광 보급</p>
                </div>
                <div class="radius-content">
                    <ul>
                        <li>
                            <h2>2017년</h2>
                            <img src="<%=contextPath%>/img/chart_item1.png" alt="">
                        </li>
                        <li>
                            <h2>신규 (2018년 ~ 2030년)</h2>
                            <img src="<%=contextPath%>/img/chart_item2.png" alt="">
                        </li>
                        <li>
                            <h2>2030년</h2>
                            <img src="<%=contextPath%>/img/chart_item3.png" alt="">
                        </li>
                    </ul>
                    <div class="chart-general">
                        <img src="<%=contextPath%>/img/ico_chart_general.png" alt="">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="" style="clear:both"></div>
    <div class="section energy-content-wrap">
       <div class="section-content energy-content">
            <div class="sub-title-wrap">
                <h2 class="content-title">전세계 에너지전환 정책</h2>
                <p class="content-contents">신기후체제에 따른 세계 각 국의 에너지 정책 전환 노력</p>
                <span class="black-bar"></span>
            </div>
            <table border="1" sumary="energy" frame="void">
                <caption>(출처: 주요국에너지·자원현황 및 정책, 외교부, 2017)</caption>
	                <tbody>
	                 <tr>
	                     <th></th>
	                     <th><p>독일</p></th>
	                     <th><p>프랑스</p></th>
	                     <th><p>덴마크</p></th>
	                     <th><p>중국</p></th>
	                 </tr>
	                <tr>
	                    <th><p>신재생</p></th>
	                    <td>2030년 재생에너지<br>발전비율 32%</td>
	                    <td>2030년 재생에너지<br>발전비율 50%</td>
	                    <td>2030년 전력·열 부문<br>100% 재생에너지</td>
	                    <td>2015년 56GW<br>-&gt; 2020년 100GW</td>
	                </tr>
	                 <tr>
	                     <th><p>원자력</p></th>
	                     <td>2022년 원전<br>완전폐쇄</td>
	                     <td>2025년 원전 비율<br>75% -&gt; 50%</td>
	                     <td>원전 미도입</td>
	                     <td>2015년 26GW<br>-&gt; 2020년 35GW</td>
	                 </tr>
	                 <tr>
	                     <th><p>석탄</p></th>
	                     <td>2020년 이후<br>석탄화력 대폭 축소</td>
	                     <td>2030년<br>석탄화력 퇴출</td>
	                     <td>2030년<br>석탄화력 퇴출</td>
	                     <td>석탄발전비율<br>2015년 66% -&gt; 2022년 62%</td>
	                 </tr>
             	</tbody>
             </table>
        </div>
    </div>
</div>
<%@include file="/WEB-INF/jsp/main/inc/citizen/footer.jsp" %>


