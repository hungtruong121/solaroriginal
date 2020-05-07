<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String contextPath = request.getContextPath()+"/templates/mobile";%>
<%@include file="/WEB-INF/jsp/main/inc/citizen/mobile/header_sub.jsp" %>
<input type="hidden" class="sub-title" id="diss" value="보급목표"></input>
<div class="content-body">
    <button class="top-button">up</button>
    <div class="section diss-content-wrap">
        <div class="section-content diss-content">
            <div class="diss-step1">
                <div class="mobile-title-wrap">
                    <h2>연도별 달성계획</h2>
                    <span></span>
                </div>
                <img  src="<%=request.getContextPath()%>/templates/mobile/img/circle-wrap.png" alt="연도별 달성 아이콘">
                <table border="1" frame="void">
                    <tr>
                        <th></th>
                        <th>보급용량<br><small>(누적,MW)</small></th>
                        <th>태양광주택<br><small>(누적,전가구)</small></th>
                    </tr>
                    <tr>
                        <th>2018년</th>
                        <td>100,717</td>
                        <td>162,286</td>
                    </tr>
                    <tr>
                        <th>2019년</th>
                        <td>162,105</td>
                        <td>284,184</td>
                    </tr>
                    <tr>
                        <th>2020년</th>
                        <td>246,744</td>
                        <td>455,303</td>
                    </tr>
                    <tr>
                        <th>2021년</th>
                        <td>382,343</td>
                        <td>705,452</td>
                    </tr>
                    <tr>
                        <th>2022년</th>
                        <td>551,172</td>
                        <td>1,003,841</td>
                    </tr>
                </table>
                <img  src="<%=request.getContextPath()%>/templates/mobile/img/diss-graph.png" alt="연도별 그래프">
            </div>
            <div class="diss-step2">
                <div class="mobile-title-wrap">
                    <h2>보급 현황</h2>
                    <span></span>
                </div>
                <div class="scroll-box">
                    <table border="1" sumary="diss" frame="void">
                        <caption>가구: 개소 / 용량:kW</caption>
                        <tr>
                            <th rowspan="2">연도별</th>
                            <th colspan="2">합계</th>
                            <th colspan="2">베란다형</th>
                            <th colspan="2">주택형</th>
                            <th colspan="2">건물형</th>
                        </tr>
                        <tr>
                            <th>가구</th>
                            <th>용량</th>
                            <th>가구</th>
                            <th>용량</th>
                            <th>가구</th>
                            <th>용량</th>
                            <th>가구</th>
                            <th>용량</th>
                        </tr>
                        <tr>
                            <th>’03~’11</th>
                            <td>11,678</td>
                            <td>11,678</td>
                            <td>-</td>
                            <td>-</td>
                            <td>4,163</td>
                            <td>4,163</td>
                            <td>-</td>
                            <td>-</td>
                        </tr>
                        <tr>
                            <th>'12</th>
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
                            <th>'13</th>
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
                            <th>'14</th>
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
                            <th>'15</th>
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
                            <th>'16</th>
                            <td>25,072</td>
                            <td>18,975</td>
                            <td>8,311</td>
                            <td>2,187</td>
                            <td>5,117</td>
                            <td>5,117</td>
                            <td>11,644</td>
                            <td>11,644</td>
                        </tr>
                        <tr>
                            <th>'17</th>
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
                            <th>'18</th>
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
                            <th>합계</th>
                            <td>170,207</td>
                            <td>118,311</td>
                            <td>73,655</td>
                            <td>21,759</td>
                            <td>38,327</td>
                            <td>38,327</td>
                            <td>58,225</td>
                            <td>58,225</td>
                        </tr>
                    </table>
                </div>
                <p style="padding-top: 2vh;">* 2018.12월말 기준</p>
            </div>
        </div>
    </div>
</div>
<%@include file="/WEB-INF/jsp/main/inc/citizen/mobile/footer.jsp" %>

   