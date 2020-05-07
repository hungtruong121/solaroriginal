<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String contextPath = request.getContextPath()+"/templates/mobile";%>
<%@include file="/WEB-INF/jsp/main/inc/citizen/mobile/header.jsp" %>
<div class="content-body">
    <button class="top-button">up</button>
    <div class="section main-content-wrap">
         <div class="section-content main-content">
             <div class="main-title-wrap">
                 <div class="title-text">
                     <p>2022년 태양의 도시 서울</p>
                     <h1>우리집 태양광 미니발전소<br>지금 신청하세요!</h1>
                     <p class="etc-text">미니태양광은 제로페이 결제가 가능합니다.</p> <!-- 2019-06-17 -->
                 </div>
                 <div class="title-button">
                     <ul>
                         <li><a href="${pageContext.request.contextPath}/citizen/install-apply.do">신청하기</a></li>
                         <li><a href="${pageContext.request.contextPath}/citizen/product/info.do">상품보러가기</a></li>
                     </ul>
                 </div>
                 <img src="<%=request.getContextPath()%>/templates/mobile/img/call-center.png" alt="콜센터" class="call-number"> <!-- 2019-06-17 -->
             </div>
             <div class="main-slider-wrap">
                 <h2>설치절차 알아보기</h2>
                 <div class="swiper-container">
                     <ul class="swiper-wrapper">
                         <li class="swiper-slide">
                            <div>
                                <img src="<%=request.getContextPath()%>/templates/mobile/img/main-slide-icon1.png" alt="상품보기">
                                <h3>상품보기</h3>
                                <p>보급 업체별로<br>상품정보를<br>알 수 있어요!</p>
                            </div>
                         </li>
                         <li class="swiper-slide"><img src="<%=request.getContextPath()%>/templates/mobile/img/main-slide-arrow.png" alt="화살표"></li>
                         <li class="swiper-slide">
                            <div>
                                <img src="<%=request.getContextPath()%>/templates/mobile/img/main-slide-icon2.png" alt="신청하기">
                                <h3>신청하기</h3>
                                <p>보급업체를<br>선택해 설치를<br>신청하세요!</p>
                            </div>
                         </li>
                         <li class="swiper-slide"><img src="<%=request.getContextPath()%>/templates/mobile/img/main-slide-arrow.png" alt="화살표"></li>
                         <li class="swiper-slide">
                             <div>
                                 <img src="<%=request.getContextPath()%>/templates/mobile/img/main-slide-icon3.png" alt="상담하기">
                                 <h3>상담하기</h3>
                                 <p>선택하신<br>보급업체와 상세한<br>상담을 하세요!</p>
                             </div>
                         </li>
                         <li class="swiper-slide"><img src="<%=request.getContextPath()%>/templates/mobile/img/main-slide-arrow.png" alt="화살표"></li>
                         <li class="swiper-slide">
                             <div>
                                 <img src="<%=request.getContextPath()%>/templates/mobile/img/main-slide-icon4.png" alt="설치완료">
                                 <h3>설치완료</h3>
                                 <p>우리집 태양광<br>미니발전소 설치가<br>완료되었어요!</p>
                             </div>
                         </li>
                     </ul>
                 </div>
             </div>
         </div>
    </div>
</div>

<script>
    var swiper = new Swiper('.swiper-container', {
      slidesPerView: 'auto',
      spaceBetween: 6,
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
   