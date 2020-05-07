<%@page import="egovframework.let.citizen.service.BuildAsVO"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String contextPath = request.getContextPath()+"/templates/mobile";%>
<%@include file="/WEB-INF/jsp/main/inc/citizen/mobile/header_sub.jsp" %>
<%@include file="/WEB-INF/jsp/main/inc/citizen/taglib.jsp" %>
<input type="hidden" class="sub-title" id="situation" value="진행상황"></input>
<div class="content-body">
    <button class="top-button">up</button>
    <div class="section situDepth-content-wrap">
        <div class="section-content situDepth-content">
            <div class="tabs-wrap">
                <ul class="tabs">
                    <li><a href="#tab1">설치현황</a></li>
                    <li><a href="#tab2" class="on">A/S현황</a></li>
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
                        </ul>
                    </div>
                    <div class="panel" id="tab2">
                        <div class="situ-depth1-wrap">
                         <%
                        	Map<String,String> mapStatus = new HashMap<>();
                         	mapStatus.put("1", "1.A/S 신청");  
                         	mapStatus.put("2", "2.방문 예정");
                         	mapStatus.put("3", "3.A/S완료");
                         %>
                            <ul class="number-bar">
                                <%
                                	BuildAsVO buildAsVO = null;
                                	if(request.getAttribute("buildASDetail") != null) {
                                		buildAsVO = (BuildAsVO)request.getAttribute("buildASDetail");
                                	}
                                	String classSelected   = "";
                                	String statusText="";
                                	for (Map.Entry<String, String> status : mapStatus.entrySet()) {
                                		if(status.getKey().equals(buildAsVO.getState())) {
                                			classSelected  =  "focus";
                                			statusText =status.getValue();
                                		} else {
                                			classSelected  = "";
                                			statusText =status.getKey();
                                		}
                                %>
                                <li class="<%=classSelected %>" ><%=statusText %></li>
                                <% } %>
                            </ul>
                            <div class="depth-content">
                                <b>A/S 현황</b>
                                <div class="content-inner">
                                    <div>
                                        <p>설치요청일</p>
                                    </div>
                                    <c:choose>
	                                    <c:when test="${buildASDetail.state == 1}">
		                                    <div>
		                                        <p><fmt:formatDate pattern = "yyyy년 MM월 dd일" value = "${ buildASDetail.asDate }" /></p>
		                                    </div>
		                                    <div>
		                                        <p>A/S 예정 보급업체</p>
		                                    </div>
		                                    <div>
		                                        <p>${ (buildASDetail.companyName == null or buildASDetail.companyName == '') ? '_' : buildASDetail.companyName    }</p>
		                                    </div>
		                                    
		                                    <div>
	                                        	<p>문의 내역</p>
	                                    	</div>
		                                    <div>
		                                        <p>${ (buildASDetail.etc == null or buildASDetail.etc == '') ? '_' : buildASDetail.etc }</p>
		                                    </div>
	                                    </c:when>
	                                    
	                                    <c:when test="${ buildASDetail.state == 2 || buildASDetail.state == 3}">
			                                <div>
		                                        <p><fmt:formatDate pattern = "yyyy년 MM월 dd일" value = "${ buildASDetail.asDate }" /></p>
		                                    </div>
		                                    <div>
		                                        <p>A/S 예정 보급업체</p>
		                                    </div>
		                                    <div>
		                                        <p>${ (buildASDetail.companyName == null or buildASDetail.companyName == '') ? '_' : buildASDetail.companyName    }</p>
		                                    </div>
			                                <div>
	                                       		 <p>담당기사</p>
		                                    </div>
		                                    <div>
		                                        <p>${ (buildAsOder.userName == null or buildAsOder.userName =='') ? '_' : buildAsOder.userName }</p>
		                                    </div>
		                                    <div>
		                                        <p>담당기사 연락처</p>
		                                    </div>
		                                    <div>
		                                        <p>${ (buildAsOder.userContact == null or buildAsOder.userContact =='') ? '_' : buildAsOder.userContact }</p>
		                                    </div>
		                                    <div>
		                                        <p>문의 내역</p>
		                                    </div>
		                                    <div>
		                                        <p>${ (buildAsOder.etc == null or buildAsOder.etc == '') ? '_' : buildAsOder.etc }</p>
		                                    </div>
	                                	</c:when>
                                	</c:choose>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%@include file="/WEB-INF/jsp/main/inc/citizen/mobile/footer.jsp" %>
  