<%@page import="egovframework.com.cmm.LoginVO"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.InputStream"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jsp/main/inc/citizen/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1, maximum-scale=1, minimum-scale=1"/>
  <meta name="format-detection" content="telephone=no">
  
  <title>서울햇빛마루</title>

  <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/templates/mobile/css/swiper.min.css">
  <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/templates/mobile/css/style.css">
  <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/templates/mobile/css/common.css">
  
  <script type="text/javascript" src="<%=request.getContextPath()%>/templates/mobile/vendor/jquery/dist/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.0/js/swiper.min.js"></script>
  <script type="text/javascript" src="<%=request.getContextPath()%>/templates/mobile/js/common.js"></script>

</head>
<%
	LoginVO loginVO = (LoginVO)session.getAttribute("LoginVO"); 
%>
<body class="">
  <div id="wrapper">
    <header class="main-header">
      <div class="header-wrap">
          <button type="button" class="nav-button">
              <span></span>
              <span></span>
              <span></span>
          </button>
          <div class="menu-section">
              <span></span>
              <div class="menu-content">
                  <div class="top-box">
                       <%
						   if(loginVO != null){   	   
					   %>
                      <div class="info-box  login-case">
                          <div class="img-box">
                              <img src="<%=request.getContextPath()%>/templates/mobile/img/myimg.png" alt="회원정보">
                          </div>
                          <div class="tell-box">
                              <p>환영합니다.</p>
                              <strong><%=loginVO.getUid()%></strong> <%=loginVO.getName() %>
                          </div>
                      </div> 
                      <% } else { %>
                      <div class="info-box">
                          <p>로그인이 필요합니다.</p>
				          <div class="button-wrap">
                              <button type="button" onclick="location.href='${pageContext.request.contextPath}/citizen/login.do' ">로그인</button>
                              <button type="button" onclick="location.href='${pageContext.request.contextPath}/citizen/join.do' ">회원가입</button>
                          </div>
                      </div>
                      <% } %>
                      <div class="menu-box">
                          <ul>
                              <li><a href="<%=request.getContextPath()%>/citizen/install-apply.do"><img src="<%=request.getContextPath()%>/templates/mobile/img/menubox-icon1.png" alt="설치신청"><p>설치신청</p></a></li>
                              <li><a href="<%=request.getContextPath()%>/citizen/as.do"><img src="<%=request.getContextPath()%>/templates/mobile/img/menubox-icon2.png" alt="A/S신청"><p>A/S신청</p></a></li>
                              <li><a href="<%=request.getContextPath()%>/citizen/situation.do"><img src="<%=request.getContextPath()%>/templates/mobile/img/menubox-icon3.png" alt="진행상황"><p>진행상황</p></a></li>
                              <li><a href="tel:1566-0494"><img src="<%=request.getContextPath()%>/templates/mobile/img/menubox-icon4.png" alt="콜센터"><p>콜센터</p></a></li>
                          </ul>
                      </div>
                  </div>
                  <ul class="bottom-tab">
                      <li>
                          <ul>
                              <li class="title-depth">태양광 지원 센터</li>
                              <li class="sub-depth"><a href="<%=request.getContextPath()%>/citizen/about.do"><img src="<%=request.getContextPath()%>/templates/mobile/img/depth-icon1.png" alt="인사말">인사말<img src="<%=request.getContextPath()%>/templates/mobile/img/depth-arrow.png" alt="화살표"></a></li>
                              <li class="sub-depth"><a href="<%=request.getContextPath()%>/citizen/background.do"><img src="<%=request.getContextPath()%>/templates/mobile/img/depth-icon2.png" alt="설립배경">설립배경<img src="<%=request.getContextPath()%>/templates/mobile/img/depth-arrow.png" alt="화살표"></a></li>
                              <li class="sub-depth"><a href="<%=request.getContextPath()%>/citizen/introduction.do"><img src="<%=request.getContextPath()%>/templates/mobile/img/depth-icon3.png" alt="소개 및 역할">소개 및 역할<img src="<%=request.getContextPath()%>/templates/mobile/img/depth-arrow.png" alt="화살표"></a></li>
                          </ul>
                      </li>
                      <li>
                          <ul>
                              <li class="title-depth">태양광 미니 발전소</li>
                              <li class="sub-depth"><a href="<%=request.getContextPath()%>/citizen/miniPower.do"><img src="<%=request.getContextPath()%>/templates/mobile/img/depth-icon4.png" alt="미니발전소란?">미니태양광이란?<img src="<%=request.getContextPath()%>/templates/mobile/img/depth-arrow.png" alt="화살표"></a></li>
                              <li class="sub-depth"><a href="<%=request.getContextPath()%>/citizen/diss.do"><img src="<%=request.getContextPath()%>/templates/mobile/img/depth-icon5.png" alt="보급목표">보급목표<img src="<%=request.getContextPath()%>/templates/mobile/img/depth-arrow.png" alt="화살표"></a></li>
                              <li class="sub-depth"><a href="<%=request.getContextPath()%>/citizen/installation.do"><img src="<%=request.getContextPath()%>/templates/mobile/img/depth-icon6.png" alt="설치사례">설치사례<img src="<%=request.getContextPath()%>/templates/mobile/img/depth-arrow.png" alt="화살표"></a></li>
                          </ul>
                      </li>
                      <li>
                          <ul>
                              <li class="title-depth">설치 안내</li>
                              <li class="sub-depth"><a href="<%=request.getContextPath()%>/citizen/checklist.do"><img src="<%=request.getContextPath()%>/templates/mobile/img/depth-icon7.png" alt="사전 확인 사항">사전 확인 사항<img src="<%=request.getContextPath()%>/templates/mobile/img/depth-arrow.png" alt="화살표"></a></li>
                              <li class="sub-depth"><a href="<%=request.getContextPath()%>/citizen/company.do"><img src="<%=request.getContextPath()%>/templates/mobile/img/depth-icon13.png" alt="보급 업체 정보">보급 업체 정보<img src="<%=request.getContextPath()%>/templates/mobile/img/depth-arrow.png" alt="화살표"></a></li>
                              <li class="sub-depth"><a href="<%=request.getContextPath()%>/citizen/product/info.do"><img src="<%=request.getContextPath()%>/templates/mobile/img/depth-icon8.png" alt="상품 정보">상품 정보<img src="<%=request.getContextPath()%>/templates/mobile/img/depth-arrow.png" alt="화살표"></a></li>
                              <li class="sub-depth"><a href="<%=request.getContextPath()%>/citizen/fund.do"><img src="<%=request.getContextPath()%>/templates/mobile/img/depth-icon9.png" alt="보조금 정보">보조금 정보<img src="<%=request.getContextPath()%>/templates/mobile/img/depth-arrow.png" alt="화살표"></a></li>
                          </ul>
                      </li>
                      <li>
                          <ul>
                              <li class="title-depth">게시판</li>
                              <li class="sub-depth"><a href="<%=request.getContextPath()%>/citizen/notice.do"><img src="<%=request.getContextPath()%>/templates/mobile/img/depth-icon10.png" alt="공지사항">공지사항<img src="<%=request.getContextPath()%>/templates/mobile/img/depth-arrow.png" alt="화살표"></a></li>
                              <li class="sub-depth"><a href="<%=request.getContextPath()%>/citizen/mtm.do"><img src="<%=request.getContextPath()%>/templates/mobile/img/depth-icon11.png" alt="1:1 문의">1:1 문의<img src="<%=request.getContextPath()%>/templates/mobile/img/depth-arrow.png" alt="화살표"></a></li>
                              <li class="sub-depth"><a href="<%=request.getContextPath()%>/citizen/qna.do"><img src="<%=request.getContextPath()%>/templates/mobile/img/depth-icon12.png" alt="자주하는 질문">자주하는 질문<img src="<%=request.getContextPath()%>/templates/mobile/img/depth-arrow.png" alt="화살표"></a></li>
                          </ul>
                      </li>
                  </ul>
                   <%
				       if(loginVO != null){   	   
			       %>
                   <div class="logout-box">
                      <button class="logout" onclick="location.href='${pageContext.request.contextPath}/citizen/logout.do'">
                      		로그아웃하기<img src="<%=request.getContextPath()%>/templates/mobile/img/logout.png" alt="로그아웃">
                      </button>
                  </div> 
                  <% } %>
              </div>
          </div>
      </div>
    </header>