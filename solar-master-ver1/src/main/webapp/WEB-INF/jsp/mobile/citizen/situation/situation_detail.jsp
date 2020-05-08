<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String contextPath = request.getContextPath()+"/templates/mobile";%>
<%@include file="/WEB-INF/jsp/main/inc/citizen/mobile/header_sub.jsp" %>
<input type="hidden" class="sub-title" id="situation" value="진행상황"></input>
<div class="content-body">
    <button class="top-button">up</button>
    <div class="section situDepth-content-wrap">
        <div class="section-content situDepth-content">
            <div class="tabs-wrap">
                <ul class="tabs">
                    <li><a href="#tab1" class="on">설치현황</a></li>
                    <li><a href="#tab2">A/S현황</a></li>
                </ul>
                <div class="panels">
                    <div class="panel" id="tab1">
                        <div class="situ-depth1-wrap">
                        <ul class="number-bar">
                        <c:choose>
                         <c:when test="${ builinfo.stateType == 1 ||  builinfo.stateType == 0 }">                          
                                <li class="focus">${ builinfo.stateType}.${ builinfo.getStatus()}</li>
                                <li>2</li>
                                <li>3</li>
                                <li>4</li>
              
                          </c:when>
                          <c:when test="${ builinfo.stateType == 2 }">                           
                                <li>1</li>
                                <li class="focus">${ builinfo.stateType}.${ builinfo.getStatus()}</li>      
                                <li>3</li>
                                <li>4</li>                      
                          </c:when>
                          <c:when test="${ builinfo.stateType == 3 }">                          
                                <li>1</li>
                                <li>2</li>
                                <li class="focus">${ builinfo.stateType}.${ builinfo.getStatus()}</li>    
                                <li>4</li>                    
                          </c:when>
                          <c:when test="${ builinfo.stateType == 4 }">                      
                                <li>1</li>
                                <li>2</li>
                                <li>3</li>
                                <li class="focus">${ builinfo.stateType}.${ builinfo.getStatus()}</li>
                          </c:when>
                        </c:choose>  
                        </ul> 
                        
                         <c:choose>
                          <c:when test="${builinfo.stateType == 1 ||  builinfo.stateType == 0  }">
                            <div class="depth-content">
                                <b>설치정보</b>
                                <div class="content-inner">
                                    <div>
                                        <p>설치예정일</p>
                                    </div>
                                    <div>
                                        <p><c:if test="${builinfo.installDueDate != null}">
		                                    	<fmt:formatDate pattern ="yyyy년 MM월 dd일" value ="${builinfo.installDueDate}" />
		                                    </c:if>
		                                    <c:if test="${builinfo.installDueDate == null}">
		                                    	미정
		                                    </c:if></p>
                                    </div>
                                    <div>
                                        <p>설치 예정 보급 업체</p>
                                    </div>
                                    <div>
                                        <p>${ builinfo.companyName}</p>
                                    </div>
                                   
                                </div>
                            </div>
                            </c:when>
                           <c:when test="${ builinfo.stateType == 2 }">
                            <div class="depth-content">
                                <b>설치정보</b>
                                <div class="content-inner">
                                    <div>
                                        <p>설치예정일</p>
                                    </div>
                                    <div>
                                        <p><c:if test="${builinfo.installDueDate != null}">
		                                    	<fmt:formatDate pattern ="yyyy년 MM월 dd일" value ="${builinfo.installDueDate}" />
		                                    </c:if>
		                                    <c:if test="${builinfo.installDueDate == null}">
		                                    	미정
		                                    </c:if></p>
                                    </div>
                                    <div>
                                        <p>설치 예정 보급 업체</p>
                                    </div>
                                    <div>
                                        <p>${ builinfo.companyName}</p>
                                    </div>
                                    <div>
                                        <p>담당기사</p>
                                    </div>
                                    <div>
                                        <p>${ builinfo.engineerName == null ? '_' : builinfo.engineerName}</p>
                                    </div>
                                    <div>
                                        <p>설치 제품</p>
                                    </div>
                                    <div>
                                        <p>${ builinfo.productsProvided}</p>
                                    </div>
                                    <div>
                                        <p>담당기사 연락처</p>
                                    </div>
                                    <div>
                                        <p>${ builinfo.engineerPhone == null ? '_' : builinfo.engineerPhone}</p>
                                    </div>
                                </div>
                            </div>
                            </c:when>
                            <c:when test="${ builinfo.stateType == 3 || builinfo.stateType == 4 }">
                               <div class="depth-content">
                                <b>설치정보</b>
                                 <div class="content-inner">
                                    <div>
                                        <p>설치예정일</p>
                                    </div>
                                    <div>
                                        <p><c:if test="${builinfo.installDueDate != null}">
		                                    	<fmt:formatDate pattern ="yyyy년 MM월 dd일" value ="${builinfo.installDueDate}" />
		                                    </c:if>
		                                    <c:if test="${builinfo.installDueDate == null}">
		                                    	미정
		                                    </c:if></p>
                                    </div>
                                    <div>
                                        <p>설치 예정 보급 업체</p>
                                    </div>
                                    <div>
                                        <p>${ builinfo.companyName}</p>
                                    </div>
                                    <div>
                                        <p>담당기사</p>
                                    </div>
                                    <div>
                                        <p>${ builinfo.engineerName == null ? '_' : builinfo.engineerName}</p>
                                    </div>
                                    <div>
                                        <p>설치 제품</p>
                                    </div>
                                    <div>
                                        <p>${ builinfo.productsProvided}</p>
                                    </div>
                                    <div>
                                        <p>담당기사 연락처</p>
                                    </div>
                                    <div>
                                        <p>${ builinfo.engineerPhone == null ? '_' : builinfo.engineerPhone}</p>
                                    </div>
                                </div>
                                </div>
                                <div class="depth-content">
                                <b>결제정보</b>
                                <div class="content-inner">
                                     <div>
                                        <p>결제상태</p>
                                    </div>
                                    <div>
                                        <p>${ builinfo.paymentCheck =='Y' ? ' 입금완료' : '미결재' }</p>
                                    </div> 
                                    <div>
                                        <p>상품금액</p>
                                    </div>
                                    <div>
                                        <p>${ builinfo.payment == null ? '_' : builinfo.payment }</p>
                                    </div>
                                    <div>
                                        <p>시보조금</p>
                                    </div>
                                    <div>
                                        <p>${ builinfo.priceSi == null ? '_' : builinfo.priceSi }</p>
                                    </div>
                                    <div>
                                        <p>자치구 보조금</p>
                                    </div>
                                    <div>
                                        <p>${ builinfo.priceBorough == null ? '_' : builinfo.priceBorough }</p>
                                    </div>
                                    <div>
                                        <p>실 결제금액</p>
                                    </div>
                                    <div>
                                        <p>${ builinfo.paymentReal }</p>
                                    </div>
                                </div>
                            </div>
                            </c:when>                        
                            </c:choose>
                        </div>
                    </div>
                    <div class="panel" id="tab2">
                        <ul class="situ-content1">
	                        <c:forEach var="buildAsOder" items="${ buildAsDatas }">
	                        <c:choose>
		                        <c:when test="${buildAsOder.state == 2 }">
		                            <li><a href="${pageContext.request.contextPath}/citizen/situationAsDetail/${buildAsOder.buildOrderAsId}.do">
		                                <img  src="<%=request.getContextPath()%>/templates/mobile/img/situ-icon5.png" alt="완료아이콘">
		                                <p><span>[${ buildAsOder.isComplate == 'Y' ? 'A/S 완료' : 'A/S 신청' }]</span><br>${ buildAsOder.installationLocation() }</p>
		                                <img  src="<%=request.getContextPath()%>/templates/mobile/img/mtm-arrow-down.png" alt="펼치기버튼">
		                            </a>
		                            </li>
		                            <div class="clearBoth"></div>
		                        </c:when> 
		                         <c:when test="${buildAsOder.state == 3 }">
		                            <li><a href="${pageContext.request.contextPath}/citizen/situationAsDetail/${buildAsOder.buildOrderAsId}.do">
		                                <img  src="<%=request.getContextPath()%>/templates/mobile/img/situ-icon1.png" alt="완료아이콘">
		                                <p><span>[${ buildAsOder.isComplate == 'Y' ? 'A/S 완료' : 'A/S 신청' }]</span><br>${ buildAsOder.installationLocation() }</p>
		                                <img  src="<%=request.getContextPath()%>/templates/mobile/img/mtm-arrow-down.png" alt="펼치기버튼">
		                            </a>
		                            </li>
		                            <div class="clearBoth"></div>
		                        </c:when> 
		                        <c:otherwise>
		                            <li><a href="${pageContext.request.contextPath}/citizen/situationAsDetail/${buildAsOder.buildOrderAsId}.do">
		                                <img  src="<%=request.getContextPath()%>/templates/mobile/img/situ-icon4.png" alt="신청아이콘">
		                                <p><span>[${ buildAsOder.isComplate == 'Y' ? 'A/S 완료' : 'A/S 신청' }]</span><br>${ buildAsOder.installationLocation() }</p>
		                                <img  src="<%=request.getContextPath()%>/templates/mobile/img/mtm-arrow-down.png" alt="펼치기버튼">
		                            </a>
		                            </li>
		                            <div class="clearBoth"></div>
		                            </c:otherwise>
	                           </c:choose>
	                          </c:forEach>  
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%@include file="/WEB-INF/jsp/main/inc/citizen/mobile/footer.jsp" %>