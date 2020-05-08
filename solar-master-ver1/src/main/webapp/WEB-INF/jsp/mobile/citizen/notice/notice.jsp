<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String contextPath = request.getContextPath()+"/templates/mobile";%>
<%@include file="/WEB-INF/jsp/main/inc/citizen/mobile/header_sub.jsp" %>
<input type="hidden" class="sub-title" id="notice" value="공지사항"></input>
<div class="content-body">
    <button class="top-button">up</button>
    <div class="section notice-content-wrap">
        <div class="section-content notice-content">
            <div class="tabs-wrap">
               <!--  <div class="tabs">
                     <div class="tabs-content">
                        <div class="tabs-icon-wrap swiper-container">
                            <ul class="swiper-wrapper">
                                <li class="tabs-icon swiper-slide on"><p>#전체</p></li>
                                <li class="tabs-icon swiper-slide"><p>#공지</p></li>
                                <li class="tabs-icon swiper-slide"><p>#점검</p></li>
                            </ul>
                        </div>
                    </div> 
                    <div class="notice-search-button">
                        <div class="search-box">
                            <input type="search" placeholder="검색어를 입력해주세요.">
                            <input type="submit" value="검색">
                            <input type="button" value="취소" class="cancle">
                        </div>
                    </div> 
                </div> -->
                <div class="notice-item-wrap">
                	<c:choose>
                		<c:when test="${not empty data}">
                    <div class="notice-item" id="tab2">
                        <ul>
                        <c:forEach items="${ data }" var="notice">
                            <li class="loadContent" style="display:none">
                                <ul class="q-wrap">
                                    <li class="q-wrap-content">
                                        <p>${notice.title}<br><span><fmt:formatDate value="${notice.createAt}"
										pattern="yyyy-MM-dd" /> 조회수:${notice.views}</span></p><img src="<%=request.getContextPath()%>/templates/mobile/img/mtm-arrow-down.png" alt="펼치기버튼">
                                    </li>
                                    <li class="hide-content">${notice.content}</li>
                                </ul>
                            </li>
                        </c:forEach>
                            <%-- <li>
                                <ul class="q-wrap">
                                    <li class="q-wrap-content">
                                        <p><b>[점검]</b> 설치일 변경 문의드립니다. <br><span>2019-09-11 조회수:175</span></p><img src="<%=request.getContextPath()%>/templates/mobile/img/mtm-arrow-down.png" alt="펼치기버튼">
                                    </li>
                                    <li class="hide-content">안녕하세요!<br>설치일 변경 문의드립니다.<br>이용약관이 아래와 같이 변경되었으니 <br> 참고 부탁드립니다. <br> 감사합니다! </li>
                                </ul>
                            </li>
                            <li>
                                <ul class="q-wrap">
                                    <li class="q-wrap-content">
                                        <p><b>[공지]</b> 이용약관 변경 안내드립니다. <br><span>2019-09-11 조회수:175</span></p><img src="<%=request.getContextPath()%>/templates/mobile/img/mtm-arrow-down.png" alt="펼치기버튼">
                                    </li>
                                    <li class="hide-content">안녕하세요!<br>이용약관 변경 안내드립니다.<br>이용약관이 아래와 같이 변경되었으니 <br> 참고 부탁드립니다. <br> 감사합니다! </li>
                                </ul>
                            </li>
                            <li>
                                <ul class="q-wrap">
                                    <li class="q-wrap-content">
                                        <p><b>[점검]</b> 설치일 변경 문의드립니다. <br><span>2019-09-11 조회수:175</span></p><img src="<%=request.getContextPath()%>/templates/mobile/img/mtm-arrow-down.png" alt="펼치기버튼">
                                    </li>
                                    <li class="hide-content">안녕하세요!<br>설치일 변경 문의드립니다.<br>이용약관이 아래와 같이 변경되었으니 <br> 참고 부탁드립니다. <br> 감사합니다! </li>
                                </ul>
                            </li>
                            <li>
                                <ul class="q-wrap">
                                    <li class="q-wrap-content">
                                        <p><b>[공지]</b> 이용약관 변경 안내드립니다. <br><span>2019-09-11 조회수:175</span></p><img src="<%=request.getContextPath()%>/templates/mobile/img/mtm-arrow-down.png" alt="펼치기버튼">
                                    </li>
                                    <li class="hide-content">안녕하세요!<br>이용약관 변경 안내드립니다.<br>이용약관이 아래와 같이 변경되었으니 <br> 참고 부탁드립니다. <br> 감사합니다! </li>
                                </ul>
                            </li>
                            <li>
                                <ul class="q-wrap">
                                    <li class="q-wrap-content">
                                        <p><b>[점검]</b> 설치일 변경 문의드립니다. <br><span>2019-09-11 조회수:175</span></p><img src="<%=request.getContextPath()%>/templates/mobile/img/mtm-arrow-down.png" alt="펼치기버튼">
                                    </li>
                                    <li class="hide-content">안녕하세요!<br>설치일 변경 문의드립니다.<br>이용약관이 아래와 같이 변경되었으니 <br> 참고 부탁드립니다. <br> 감사합니다! </li>
                                </ul>
                            </li> --%>
                        </ul>
                    </div>
                    </c:when>
                    <c:otherwise>
                    	 <div class="nodata">
                    		데이터 없음
                    	</div>
                    </c:otherwise>
                   </c:choose>
                </div>
            </div>
        </div>
    </div>
</div>
<%@include file="/WEB-INF/jsp/main/inc/citizen/mobile/footer.jsp" %>
<script>
    var swiper = new Swiper('.swiper-container', {
        slidesPerView: 3,
        spaceBetween: 10,
        slidesPerGroup: 3,
        loop: false,
        loopFillGroupWithBlank: true,
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
<script type="text/javascript"
	src="<%=request.getContextPath()%>/templates/js/loadMore.js"></script>

  