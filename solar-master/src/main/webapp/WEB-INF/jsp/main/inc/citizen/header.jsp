<%@page import="egovframework.com.cmm.LoginVO"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.InputStream"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jsp/main/inc/citizen/taglib.jsp" %>
<fmt:bundle basename="message-common_*" />
<%
	String[] arUrl = request.getAttribute("javax.servlet.forward.request_uri").toString().split("\\/");
	String currentUrl = (!"index.do".equals(arUrl[arUrl.length - 1])) ? "sub-" : "" ;
	String prefixTitle = arUrl[arUrl.length - 1].replace(".do", "");
	String keyTitle = "citizen.title."+prefixTitle;
	int perPage = 0;
%>
<fmt:message key="<%=keyTitle%>" var="title" />
<fmt:message key="citizen.paging.perPage" var="perPage" />
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1, maximum-scale=1, minimum-scale=1"/>
	<meta name="format-detection" content="telephone=no">
	<title>
		서울햇빛마루
	</title>
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/templates/css/style.css">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/templates/css/common.css">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/templates/css/custom.css">
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <script type="text/javascript" src="<%=request.getContextPath()%>/templates/vendor/jquery/dist/jquery.min.js"></script>
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=e7fac7ec94e9067008f80f18f285dbe0&libraries=services"></script>
	<script type="text/javascript" src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script> 
<body class="">
  <%
  	LoginVO loginVO = (LoginVO)session.getAttribute("LoginVO"); 
  %>
  <div id="wrapper">
    <header class="<%=currentUrl%>header-wrap">
     	<div class="header-wrap">
        <h1 class="logo">
          <a href="<%=request.getContextPath()%>/citizen/index.do"></a>
        </h1>
        <div class="menu-list">
          <ul>
            <li class="active"><a href="<%=request.getContextPath()%>/citizen/about.do">태양광 지원 센터</a>
              <ul>
                <li><a href="<%=request.getContextPath()%>/citizen/about.do">인사말</a></li>
                <li><a href="<%=request.getContextPath()%>/citizen/background.do">설립배경</a></li>
                <li><a href="<%=request.getContextPath()%>/citizen/introduction.do">소개 및 역할</a></li>
              </ul>
            </li>
            <li><a href="<%=request.getContextPath()%>/citizen/miniPower.do">태양광 미니 발전소</a>
              <ul>
                <li><a href="<%=request.getContextPath()%>/citizen/miniPower.do">미니태양광이란?</a></li>
                <li><a href="<%=request.getContextPath()%>/citizen/diss.do">보급목표</a></li>
                <li><a href="<%=request.getContextPath()%>/citizen/installation.do">설치사례</a></li>
              </ul>
            </li>
            <li><a href="<%=request.getContextPath()%>/citizen/checklist.do">설치 안내</a>
              <ul>
                <li><a href="<%=request.getContextPath()%>/citizen/checklist.do">사전 확인 사항</a></li>
                <li><a href="<%=request.getContextPath()%>/citizen/company.do">보급 업체 정보</a></li>
                <li><a href="<%=request.getContextPath()%>/citizen/product/info.do">상품 정보</a></li>
                <li><a href="<%=request.getContextPath()%>/citizen/fund.do">보조금 정보</a></li>
              </ul>
            </li>
            
            
            
            <li><a href="<%=request.getContextPath()%>/citizen/install-apply.do">온라인 신청</a>
	            	<%
                		if(loginVO != null && session.getAttribute("checkExistBuildOrder") != null){
                	%>
		              <ul>
			                <li><a href="<%=request.getContextPath()%>/citizen/install-apply.do">설치신청</a></li>
		                	<%
		                		Integer checkExistBuildOrder = (Integer) session.getAttribute("checkExistBuildOrder");
		                		if(checkExistBuildOrder > 0) {
		                	%>
			                <li><a href="<%=request.getContextPath()%>/citizen/as.do">AS 신청</a></li>
			                <li><a href="<%=request.getContextPath()%>/citizen/situation.do">진행 상황 조회</a></li>
		                	<% } %>
		              </ul>
	              	<% } else { %>
	              	  <ul>
			                <li><a href="<%=request.getContextPath()%>/citizen/install-apply.do">설치신청</a></li>
		              </ul>
		           <% } %>
            </li>
            <li><a href="<%=request.getContextPath()%>/citizen/notice.do">게시판</a>
              <ul>
                <li><a href="<%=request.getContextPath()%>/citizen/notice.do">공지사항</a></li>
                <%
                	if(loginVO != null){
                %>
                <li><a href="<%=request.getContextPath()%>/citizen/mtm.do">1:1 문의</a></li>
                <% } %>
                <li><a href="<%=request.getContextPath()%>/citizen/qna.do">자주 하는 질문</a></li>
              </ul>
            </li>
          </ul>
        </div>
        <div class="submenu-wrap">
        	<ul>
		         <%
			       if(loginVO == null){   	   
			     %>
			      <li class="login-btn"><a href="<%=request.getContextPath()%>/citizen/login.do"><span>로그인</span></a></li>			                   
		          <li class="join-btn"><a href="<%=request.getContextPath()%>/citizen/join.do"><span>회원가입</span></a></li>
			      <% }else { %>
			      <li class="login-btn"><a href="<%=request.getContextPath()%>/citizen/logout.do"><span>로그 아웃</span></a></li>
			      <% } %>  
            </ul>
        
        </div>
      </div>
    </header>