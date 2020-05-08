<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String contextPath = request.getContextPath()+"/templates/mobile";%>
<%@include file="/WEB-INF/jsp/main/inc/citizen/mobile/header_sub.jsp" %>
<style>
	/* 
	 *Company Info
	 */
	.pop-wrap-content-inner > div:first-child .logoBox img {
	    margin: 3% auto 3%;
	}
	.pop-wrap-content {
	    width: -webkit-fill-available;
	    padding: 0px 3.333%;
	}
	.pop-wrap-content-inner > div:first-child .tBox {
	    padding-top: 0;
	}
</style>
<input type="hidden" class="sub-title" id="company" value="보급 업체 정보"></input>
<div class="mobile-pop-wrap">
    <div class="pop-wrap-content">
        <div class="pop-wrap-content-inner">
            <div>
                <div class="logoBox">
	                <img src="${company.logo}" alt="마이크로발전소">
	                <h2>${company.name}</h2>
                </div>
                <div class="tBox">
                    <p>
                        <span></span>${company.contact}<br>
                        <span></span>${company.address}
                    </p>
                </div>
            </div>
            <div>
                <div class="exp-box">
                    <p>${company.information ? company.information : "2019년 베란다형 태양광 미니발전소 보급업체입니다."}</p>
                </div>
                <input type="button" id="productInfo" value="설비 제품 확인" >
            </div>
        </div>
    </div>
</div>

<script>
$(document).ready(function () {
	var   companyName = $('.logoBox').children('h2').text();
           
     $('input#productInfo').attr("onclick","location.href='<%=request.getContextPath()%>/citizen/product/info.do?name="+companyName+"'");

});
</script>
<%@include file="/WEB-INF/jsp/main/inc/citizen/mobile/footer.jsp" %>


    