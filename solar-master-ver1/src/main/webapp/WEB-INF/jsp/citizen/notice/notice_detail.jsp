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
                        <img src="<%=request.getContextPath() %>/templates/img/ico_small_next.png" alt="small_next">
                    </button>
                    <div class="dropdown-menu">
                        <ul>
                            <li><a href="<%=request.getContextPath() %>/citizen/about.do">태양광 지원 센터</a></li>
                            <li><a href="<%=request.getContextPath() %>/citizen/miniPower.do">태양광 미니 발전소</a></li>
                            <li><a href="<%=request.getContextPath() %>/citizen/service.do">설치 안내</a></li>
                            <li class="alert-pop"><a href="<%=request.getContextPath() %>/citizen/install-apply.do">온라인 신청</a></li>
                            <li><a href="<%=request.getContextPath() %>/citizen/notice.do">게시판</a></li>
                        </ul>
                    </div>
                </div>
                <div class="dropdown">
                    <button class="dropdown-button">
                        <span>공지사항</span>
                        <img src="<%=request.getContextPath() %>/templates/img/ico_small_next.png" alt="small_next">
                    </button>
                    <div class="dropdown-menu">
                        <ul>
                            <li><a href="<%=request.getContextPath() %>/citizen/notice.do">공지사항</a></li>
                            <li><a href="<%=request.getContextPath() %>/citizen/mtm.do">1:1 문의</a></li>
                            <li><a href="<%=request.getContextPath() %>/citizen/qna.do">자주하는질문</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <c:if test="${not empty objNotice }">
	    <div class="section notice-content-wrap">
	        <div class="section-content notice-content">
	            <button class="top-button">up</button>
	            <div class="sub-title-wrap">
	                <h2 class="content-title">공지사항</h2>
	                <p class="content-contents">서울 햇빛마루의 새로운 소식과 안내사항을 확인하세요.</p>
	            </div>
	            <div class="notice-box">
	                <div class="bvHeader">
	                    <h2>${objNotice.title}</h2>
	                    <span><fmt:formatDate value="${objNotice.createAt}" pattern="yyyy-MM-dd" /></span>
	                    <small>[조회수 : ${objNotice.views}]</small>
	                </div>
	                <div class="bvCont">
	                    ${objNotice.content}
	                </div>
	                <button type="button"onClick="location.href='${pageContext.request.contextPath}/citizen/notice.do'">목록</button>
	            </div>
	        </div>
	    </div>
    </c:if>
</div>

<%@include file="/WEB-INF/jsp/main/inc/citizen/footer.jsp" %>