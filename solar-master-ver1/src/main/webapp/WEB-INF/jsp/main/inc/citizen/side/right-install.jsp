<%@page import="egovframework.com.cmm.LoginVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<c:choose>
     	<c:when test="${not empty LoginVO}">
	        <ul>
	           <li><a href="<%=request.getContextPath()%>/citizen/install-apply.do">설치신청</a></li>
	           <c:if test="${checkExistBuildOrder > 0}">
	            <li><a href="<%=request.getContextPath()%>/citizen/as.do">AS 신청</a></li>
	            <li><a href="<%=request.getContextPath()%>/citizen/situation.do">진행상황 조회</a></li>
	           </c:if>
	        </ul>
       	</c:when>
       	<c:otherwise>
       		<ul>
           <li><a href="<%=request.getContextPath()%>/citizen/install-apply.do">설치신청</a></li>
            </ul>
       	</c:otherwise>
</c:choose>