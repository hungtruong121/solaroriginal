<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String contextPath = request.getContextPath()+"/templates";%>
<%@include file="/WEB-INF/jsp/main/inc/citizen/header.jsp" %>
<div class="content-body">
    <div class="sub-content-head-wrap sub-content5">
        <div class="sub-content-head">
    <div class="sub-content-title-wrap">
        <h2 class="sub-content-title">
            인사말
        </h2>
    </div>
</div>

        <div class="sub-navigation-wrap">
            <div class="sub-navigation">
                <div class="dropdown">
                    <button class="dropdown-button">
                        <span>게시판</span>
                        <img src="<%=request.getContextPath()%>/templates/img/ico_small_next.png" alt="small_next">
                    </button>
                    <div class="dropdown-menu">
                        <ul>
                            <li><a href="${pageContext.request.contextPath}/citizen/about.do">태양광 지원 센터</a></li>
                            <li><a href="${pageContext.request.contextPath}/citizen/miniPower.do">태양광 미니 발전소</a></li>
                            <li><a href="${pageContext.request.contextPath}/citizen/service.do">설치 안내</a></li>
                            <li class="alert-pop"><a href="${pageContext.request.contextPath}/citizen/install-apply.do">온라인 신청</a></li>
                            <li><a href="${pageContext.request.contextPath}/citizen/notice.do">게시판</a></li>
                        </ul>
                    </div>
                </div>
                <div class="dropdown">
                    <button class="dropdown-button">
                        <span>1:1 문의</span>
                        <img src="<%=request.getContextPath()%>/templates/img/ico_small_next.png" alt="small_next">
                    </button>
                    <div class="dropdown-menu">
                        <ul>
                            <li><a href="notice.html">공지사항</a></li>
                            <li><a href="mtm.html">1:1 문의</a></li>
                            <li><a href="qna.html">자주하는질문</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <c:if test="${not empty objContact}">
	    <div class="section mtm-content-wrap">
	        <div class="section-content mtm-content">
	            <button class="top-button">up</button>
	            <div class="sub-title-wrap">
	                <h2 class="content-title">1:1문의</h2>
	                <p class="content-contents">1:1문의를 남겨주시면 서울시 햇빛마루 전문 상담직원이 답변을 드립니다.</p>
	            </div>
	            <div class="mtm-box">
	                <div class="bvHeader">
	                    <h2>${objContact.title }</h2>
	                    <span<fmt:formatDate value="${objContact.createAt}" pattern="yyyy-MM-dd" /></span>
	                </div>
	                <div class="qCont">
	                    ${objContact.content }
	                </div>
	                <c:if test="${not empty objContact.resContent }">
		                <div class="aCont">
		                    <small><fmt:formatDate value="${objContact.respondedAt}" pattern="yyyy-MM-dd" /></small>
		                   	${objContact.resContent }
		                </div>
	                </c:if>
	                <button type="button"onClick="location.href='${pageContext.request.contextPath}/citizen/mtm.do?list'">목록</button>
	            </div>
	        </div>
	    </div>
    </c:if>
</div>
<%@include file="/WEB-INF/jsp/main/inc/citizen/footer.jsp" %>