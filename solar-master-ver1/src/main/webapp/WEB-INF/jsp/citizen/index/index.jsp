<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String contextPath = request.getContextPath()+"/templates";%>
<%@include file="/WEB-INF/jsp/main/inc/citizen/header.jsp" %>

<div class="content-body">
    <div class="section-main">
      <div class="main-copyright">
        <p>2022년 태양의 도시 서울</p>
        <ul>
          <li>우리집 태양광 미니발전소</li>
          <li>지금 신청하세요!</li>
          <li class="add-text">미니태양광은 제로페이 결제가 가능합니다.</li>
        </ul>
        <button class="btn-style btn-style1" style="cursor: pointer;" onclick="javascript:navigate('<%=request.getContextPath()%>/citizen/install-apply.do')"><a><span>신청하기</span></a></button>
        <button class="btn-style btn-style2" style="cursor: pointer;" onclick="javascript:navigate('<%=request.getContextPath()%>/citizen/product/info.do')"><a><span>상품보러가기</span></a></button>
        <img src="<%=contextPath%>/img/main_call.png" alt="콜센터번호"> <!-- 2019-06-11 -->
      </div>
    </div>
    <div class="section nav-list-wrap">
        <div class="section-content nav-list">
           <button class="top-button">up</button>
            <ul>
                <li>
                    <a href="<%=request.getContextPath()%>/citizen/install-apply.do">
                        <img src="<%=contextPath%>/img/ico_navicon1.png" alt="nav-icon">
                        <h2>
                            <span>설치 신청하기</span>
                            <img src="<%=contextPath%>/img/ico_small_next.png" alt="icon_small_next">
                        </h2>                       
                    </a>
                </li>
                <li>
                    <a href="<%=request.getContextPath()%>/citizen/as.do">
                        <img src="<%=contextPath%>/img/ico_navicon2.png" alt="nav-icon">
                        <h2>
                            <span>A/S 신청하기</span>
                            <img src="<%=contextPath%>/img/ico_small_next.png" alt="icon_small_next">
                        </h2>
                    </a>
                </li>
                <li>
                    <a href="<%=request.getContextPath()%>/citizen/situation.do">
                        <img src="<%=contextPath%>/img/ico_navicon3.png" alt="nav-icon">
                        <h2>
                            <span>진행상황 확인</span>
                            <img src="<%=contextPath%>/img/ico_small_next.png" alt="icon_small_next">
                        </h2>
                        </a>
                </li>
                <li>
                    <a href="" class="alert-pop">
                        <img src="<%=contextPath%>/img/ico_navicon4.png" alt="nav-icon">
                        <h2>
                            <span>콜센터</span>
                            <img src="<%=contextPath%>/img/ico_small_next.png" alt="icon_small_next">
                        </h2>
                    </a>
                </li>
                <li>
                    <a href="<%=request.getContextPath()%>/citizen/notice.do">
                        <img src="<%=contextPath%>/img/ico_navicon5.png" alt="nav-icon">
                        <h2>
                            <span>공지사항</span>
                            <img src="<%=contextPath%>/img/ico_small_next.png" alt="icon_small_next">
                        </h2>
                    </a>
                </li>
            </ul>
        </div>
    </div>
    <div class="section setting-content-wrap">
        <div class="section-content setting-content">
            <div class="content-title-wrap">
                <h2 class="content-title">태양광 미니 발전소 알아보기</h2>
            </div>
            <ul>
                <li class="setting-item01">
                    <a href="<%=request.getContextPath()%>/citizen/miniPower.do">
                        <h2>태양광<br>미니 발전소란?</h2>
                    </a>
                </li>
                <li class="setting-item02">
                    <a href="<%=request.getContextPath()%>/citizen/diss.do">
                        <h2>태양광 미니 발전소 보급 목표</h2>
                    </a>
                </li>
                <li class="setting-item03">
                    <a href="<%=request.getContextPath()%>/citizen/installation.do">
                        <h2>태양광 미니 발전소 설치 사례</h2>
                    </a>
                </li>
                <li class="setting-item04">
                    <a href="<%=request.getContextPath()%>/citizen/installation.do">
                        <h2>태양광 콜센터<br/>1566-0494</h2> <!-- 2019-06-05 -->	
                        <p>월~금(공휴일제외)</p>
                    </a>
                </li>
            </ul>
        </div>
    </div>
  <div class="section step-content-wrap">
        <div class="section-content step-content">
            <div class="content-title-wrap">
                <h2 class="content-title">설치절차 알아보기</h2>
            </div>
            <ul>
                <li class="step-item01">
                    <h2>상품보기</h2>
                    <p>보급업체별 상품정보를<br>알 수 있어요!</p>
                </li>
                <li class="step-item02">
                    <h2>신청하기</h2>
                    <p>보급업체를 선택하여 <br> 설치신청을 하세요!</p>
                </li>
                <li class="step-item03">
                    <h2>상담하기</h2>
                    <p>선택하신 보급업체와<br> 상세한 상담을 하세요!</p>
                </li>
                <li class="step-item04">
                    <h2>설치완료</h2>
                    <p>우리집 태양광 미니발전소<br>설치가 완료되었어요!</p>
                </li>
            </ul>
        </div>
    </div>
    <div class="section sponser-content-wrap">
        <div class="section-content sponser-content">
            <ul>
                <li><img src="<%=contextPath%>/img/sponser-item01.png" alt="sponser-item01"></li>
                <li><img src="<%=contextPath%>/img/sponser-item02.png" alt="sponser-item02"></li>
                <li><img src="<%=contextPath%>/img/sponser-item03.png" alt="sponser-item03"></li>
                <li><img src="<%=contextPath%>/img/sponser-item04.png" alt="sponser-item04"></li>
            </ul>
        </div>
    </div>
</div>
 <%@include file="/WEB-INF/jsp/main/inc/citizen/dialog.jsp" %>
  <c:if test="${not empty msg}">
	 <script>
		openModel('신청완료 되었습니다.', "알림");
	 </script>
 </c:if>
<script>
    function navigate(link) {
        location.href = link;
    }
</script>
 <%@include file="/WEB-INF/jsp/main/inc/citizen/footer.jsp" %>