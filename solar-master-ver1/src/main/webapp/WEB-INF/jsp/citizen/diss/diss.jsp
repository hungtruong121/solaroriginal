<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String contextPath = request.getContextPath()+"/templates";%>
<%@include file="/WEB-INF/jsp/main/inc/citizen/header.jsp" %>
<div class="content-body">
    <div class="sub-content-head-wrap sub-content2">
        <div class="sub-content-head">
    <div class="sub-content-title-wrap">
        <h2 class="sub-content-title">
            보급목표
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
                        <span>보급목표</span>
                        <img src="<%=contextPath%>/img/ico_small_next.png" alt="small_next">
                    </button>
                    <div class="dropdown-menu">
                        <%@include file="/WEB-INF/jsp/main/inc/citizen/side/right-miniPower.jsp"%>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="section year-content-wrap">
       <button class="top-button">up</button>
        <div class="sub-title-wrap">
            <h2 class="content-title">연도별 달성계획</h2>
            <span class="black-bar"></span>
        </div>
        <div class="section-content year-content">
            <div class="circle-wrap">
                <div class="circle-content1"><strong>65만</strong><span>베란다</span></div>
                <div class="circle-content2"><strong>15만</strong><span>주택형</span></div>
                <div class="circle-content3"><strong>22만</strong><span>건물형</span></div>
                <div class="circle-content4"><strong>100만</strong><strong>가구</strong></div>
            </div>
            <table border="1" sumary="year" frame="void">
                <caption>plan</caption>
                <tr>
                    <th>구분</th>
                    <th>2018년</th>
                    <th>2019년</th>
                    <th>2020년</th>
                    <th>2021년</th>
                    <th>2022년</th>
                </tr>
                <tr>
                     <td>보급용량<br>(누적,kW)</td> <!-- 2019-06-05 -->
                    <td>100,717</td>
                    <td>162,105</td>
                    <td>246,744</td>
                    <td>382,343</td>
                    <td>551,172</td>
                </tr>
                <tr>
                    <td>태양광주택<br>(누적,전가구)</td>
                    <td>162.286</td>
                    <td>284,184</td>
                    <td>455,303</td>
                    <td>705,452</td>
                    <td>1,003,841</td>
                </tr>
            </table>
            <div class="graph-wrap"></div>
        </div>
    </div>
    <div class="section diss-content-wrap">
        <div class="sub-title-wrap">
            <h2 class="content-title">서울시 태양광 미니발전소 보급 현황</h2>
            <span class="black-bar"></span>
        </div>
       	
       	<div class="section-content diss-content">
            <table border="1" sumary="diss" frame="void">
                <caption>
                    <p>17.12.31 기준</p>
                    <p>(용량:kW)</p>
                </caption>
                <tbody><tr>
                    <th rowspan="2">연도별</th>
                    <th colspan="2">합계</th>
                    <th colspan="2">베란다형</th>
                    <th colspan="2">주택형</th>
                    <th colspan="2">건물형</th>
                </tr>
                <tr>
                    <th>가구(개소)</th>
                    <th>용량(kW)</th>
                    <th>가구</th>
                    <th>용량</th>
                    <th>가구</th>
                    <th>용량</th>
                    <th>가구</th>
                    <th>용량</th>
                </tr>
                <tr>
                    <td>03~11</td>
                    <td>11,678</td>
                    <td>11,678</td>
                    <td>-</td>
                    <td>-</td>
                    <td>4,163</td>
                    <td>4,163</td>
                    <td>7,515</td>
                    <td>7,515</td>
                </tr>
                <tr>
                    <td>12</td>
                    <td>2,721</td>
                    <td>2,721</td>
                    <td>-</td>
                    <td>-</td>
                    <td>2,335</td>
                    <td>2,335</td>
                    <td>386</td>
                    <td>386</td>
                </tr>
                <tr>
                    <td>13</td>
                    <td>4,368</td>
                    <td>4,368</td>
                    <td>-</td>
                    <td>-</td>
                    <td>2,682</td>
                    <td>2,682</td>
                    <td>1,686</td>
                    <td>1,686</td>
                </tr>
                <tr>
                    <td>14</td>
                    <td>8,221</td>
                    <td>6,864</td>
                    <td>1,777</td>
                    <td>420</td>
                    <td>2,813</td>
                    <td>2,813</td>
                    <td>3,631</td>
                    <td>3,631</td>
                </tr>
                <tr>
                    <td>15</td>
                    <td>13,778</td>
                    <td>11,422</td>
                    <td>3,258</td>
                    <td>902</td>
                    <td>3,675</td>
                    <td>3,675</td>
                    <td>6,845</td>
                    <td>6,845</td>
                </tr>
                <tr>
                    <td>16</td>
                    <td>25,072</td>
                    <td>18,948</td>
                    <td>8,311</td>
                    <td>2,187</td>
                    <td>5,117</td>
                    <td>5,117</td>
                    <td>11,644</td>
                    <td>11,644</td>
                </tr>
                <tr>
                    <td>17</td>
                    <td>35,932</td>
                    <td>22,448</td>
                    <td>18,605</td>
                    <td>5,121</td>
                    <td>12,139</td>
                    <td>12,139</td>
                    <td>5,188</td>
                    <td>5,188</td>
                </tr>
                <tr>
                    <td>18</td>
                    <td>68,437</td>
                    <td>39,862</td>
                    <td>41,704</td>
                    <td>13,129</td>
                    <td>5,403</td>
                    <td>5,403</td>
                    <td>21,330</td>
                    <td>21,330</td>
                </tr>
                <tr>
                    <td>합계</td>
                    <td>170,207</td>
                    <td>118,311</td>
                    <td>73,655</td>
                    <td>21,759</td>
                    <td>38,327</td>
                    <td>38,327</td>
                    <td>58,225</td>
                    <td>58,225</td>
                </tr>
            </tbody></table>
        </div>
    </div>
</div>

<%@include file="/WEB-INF/jsp/main/inc/citizen/footer.jsp" %>