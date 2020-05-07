<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String contextPath = request.getContextPath()+"/templates/mobile";%>
<%@include file="/WEB-INF/jsp/main/inc/citizen/mobile/header_sub.jsp" %>
<input type="hidden" id="about" class="sub-title" value="인사말"></input>
<div class="content-body">
    <button class="top-button">up</button>
    <div class="section sub-content-wrap">
         <div class="section-content sub-content">
             <img src="<%=request.getContextPath()%>/templates/mobile/img/about_us_bg.png" alt="아파트">
             <h2>태양광으로<br>깨끗한 서울을 만듭니다.</h2>
             <span></span>
             <p>안녕하십니까?  서울에너지공사 태양광지원센터장 정영채입니다. <br><br>서울햇빛마루 방문을 진심으로 환영합니다. <br><br>서울에너지공사는 '2022년 태양의도시, 서울' 종합계획의 실행기관으로서 가정용 태양광 100만가구 보급을 위해 태양광지원센터를 설립 운영 중에 있습니다. <br> 공사는 센터를 통해 도시에 적합한 태양광 보급 모델을 발굴하고 보급하는 데 최선의 노력을 다하고 있습니다. <br><br>태양광지원센터는 이를 위해 서울시 5개 권역에 권역별 센터와 온라인 플랫폼인 본 ‘서울햇빛마루’ 사이트를 운영 중에 있습니다. 서울시민들은 누구나 이를 통해 <br> 사전 컨설팅부터 설치, 보조금 신청 및 사후관리까지 ‘원스톱 서비스’를 제공 받을 수 있습니다. <br><br>서울시 에너지 정책의 중심은 서울시민입니다. <br>태양광지원센터는 서울시민과 함께, 깨끗하고 안전한 태양광발전사업을 통해 미세먼지 없는<br> ‘태양의 도시, 서울’을 만들기 위해 노력하겠습니다. <br><br>앞으로도 많은 관심과 성원 부탁드립니다. <br><br>감사합니다. </p>
         </div>
    </div>
</div>
<%@include file="/WEB-INF/jsp/main/inc/citizen/mobile/footer.jsp" %>
