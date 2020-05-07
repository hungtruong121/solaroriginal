<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String contextPath = request.getContextPath()+"/templates/mobile";%>
<%@include file="/WEB-INF/jsp/main/inc/citizen/mobile/header_sub.jsp" %>
<input type="hidden" class="sub-title" id="situation" value="진행상황"></input>
<div class="content-body">
    <button class="top-button">up</button>
    <div class="section situ-content-wrap">
        <div class="section-content situ-content">
            <div class="tabs-wrap">
                <ul class="tabs">
                    <li><a href="#tab1" class="on">설치현황</a></li>
                    <li><a href="#tab2" class="tab-as">A/S현황</a></li>
                </ul>
                <div class="panels">
                    <div class="panel" id="tab1">
                        <ul class="situ-content1">
                        <c:if test="${ not empty  buildData }">
	                     <c:forEach var="builinfo" items="${buildData }" varStatus="index">
	                        <c:choose>	                        
	                         <c:when test="${ builinfo.stateType == 1 ||  builinfo.stateType == 0 }">                       
	                            <li><a href="${pageContext.request.contextPath}/citizen/situationDetail.do?order_id=${builinfo.id}">
	                                <img  src="<%=request.getContextPath()%>/templates/mobile/img/situ-icon1.png" alt="완료아이콘">
	                                <p><span>[${ builinfo.getStatus() }]</span><br>${ builinfo.installationLocation() }</p>
	                                <img  src="<%=request.getContextPath()%>/templates/mobile/img/mtm-arrow-down.png" alt="펼치기버튼">
	                            </a></li>
	                            <div class="clearBoth"></div>
	                         </c:when>
	                         
	                         <c:when test="${ builinfo.stateType == 2 }">                       
	                            <li><a href="${pageContext.request.contextPath}/citizen/situationDetail.do?order_id=${builinfo.id}">
	                                <img  src="<%=request.getContextPath()%>/templates/mobile/img/situ-icon2.png" alt="완료아이콘">
	                                <p><span>[${ builinfo.getStatus() }]</span><br>${ builinfo.installationLocation() }</p>
	                                <img  src="<%=request.getContextPath()%>/templates/mobile/img/mtm-arrow-down.png" alt="펼치기버튼">
	                            </a></li>
	                            <div class="clearBoth"></div>
	                         </c:when>
	                         <c:when test="${ builinfo.stateType == 3 }">                       
	                            <li><a href="${pageContext.request.contextPath}/citizen/situationDetail.do?order_id=${builinfo.id}">
	                                <img  src="<%=request.getContextPath()%>/templates/mobile/img/situ-icon3.png" alt="완료아이콘">
	                                <p><span>[${ builinfo.getStatus() }]</span><br>${ builinfo.installationLocation() }</p>
	                                <img  src="<%=request.getContextPath()%>/templates/mobile/img/mtm-arrow-down.png" alt="펼치기버튼">
	                            </a></li>
	                            <div class="clearBoth"></div>
	                         </c:when>
	                          <c:when test="${ builinfo.stateType == 4 }">                       
	                            <li><a href="${pageContext.request.contextPath}/citizen/situationDetail.do?order_id=${builinfo.id}">
	                                <img  src="<%=request.getContextPath()%>/templates/mobile/img/situ-icon6.png" alt="완료아이콘">
	                                <p><span>[${ builinfo.getStatus() }]</span><br>${ builinfo.installationLocation() }</p>
	                                <img  src="<%=request.getContextPath()%>/templates/mobile/img/mtm-arrow-down.png" alt="펼치기버튼">
	                            </a></li>
	                            <div class="clearBoth"></div>
	                         </c:when>
	                         </c:choose>	                         
	                      </c:forEach>
	                      </c:if>
	                      <c:if test="${ empty  buildData }">
	                       		<center>데이터 없음</center>
	                      </c:if>
                        </ul>
                    </div>
                    <div class="panel" id="tab2">
                        <ul class="situ-content1">
                            <c:if test="${ not empty  buildAsDatas }">
	                            <c:forEach var="buildAsOder" items="${ buildAsDatas }" varStatus="index">
		                            <li>
			                            <a href="${pageContext.request.contextPath}/citizen/situationAsDetail/${buildAsOder.buildOrderAsId}.do">
			                                <c:choose>
			                                	<c:when test="${buildAsOder.state == 2}">
			                                		 <img src="<%=request.getContextPath()%>/templates/mobile/img/situ-icon5.png" alt="신청아이콘"> 
			                                	</c:when>
			                                	
			                                	<c:when test="${buildAsOder.state == 3}">
			                                		 <img src="<%=request.getContextPath()%>/templates/mobile/img/situ-icon1.png" alt="완료아이콘">
			                                	</c:when>
			                                	
			                                	<c:otherwise>
      					                            <img src="<%=request.getContextPath()%>/templates/mobile/img/situ-icon4.png" alt="신청아이콘">
			                                	</c:otherwise>
			                                </c:choose>
			                                <p>
			                                	<span>[${ buildAsOder.isComplate == 'Y' ? 'A/S 완료' : 'A/S 신청' }]</span><br>
			                                	${ buildAsOder.installationLocation()}
			                                </p>
			                                <img  src="<%=request.getContextPath()%>/templates/mobile/img/mtm-arrow-down.png" alt="펼치기버튼">
			                            </a>
		                            </li>
		                            <div class="clearBoth"></div>
	                            </c:forEach>
                            </c:if>
                              <c:if test="${ empty  buildAsDatas }">
	                       		<center>데이터 없음</center>
	                      </c:if>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%@include file="/WEB-INF/jsp/main/inc/citizen/mobileDialog.jsp" %> 
<c:if test="${not empty message}">
	<script type="text/javascript">
		$(document).ready(function(){
			 $(".tab-as").trigger('click');
		});
	</script>
</c:if>
<input type="hidden" name="titleMessage" value="${titleMessage}" />
<input type="hidden" name="message" value="${message}" />
<script type="text/javascript">
	window.onload = function()
	{
		var message = document.querySelector('input[name=message]').value;
		var titleMessage = document.querySelector('input[name=titleMessage]').value;
	    if (message != "") {
	    	 openModel(message, titleMessage);
	    }
	};
</script>
<%@include file="/WEB-INF/jsp/main/inc/citizen/mobile/footer.jsp" %>