<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String contextPath = request.getContextPath()+"/templates";%>
<%@include file="/WEB-INF/jsp/main/inc/citizen/header.jsp" %>
<%@include file="/WEB-INF/jsp/main/inc/citizen/taglib.jsp" %>

	<fmt:formatDate value="${buildData.installDate}" pattern="yyyy/MM/dd" var="installDateFmt"/>
	<div class="content-body">
	    <div class="sub-content-head-wrap sub-content4">
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
	                        <span>온라인신청</span>
	                        <img src="<%=request.getContextPath() %>/templates/img/ico_small_next.png" alt="small_next">
	                    </button>
	                    <div class="dropdown-menu">
	                        <ul>
	                           <li><a href="<%=request.getContextPath()%>/citizen/about.do">태양광 지원 센터</a></li>
	                            <li><a href="<%=request.getContextPath()%>/citizen/miniPower.do">태양광 미니 발전소</a></li>
	                            <li><a href="<%=request.getContextPath()%>/citizen/service.hdo">설치 안내</a></li>
	                            <li><a href="<%=request.getContextPath()%>/citizen/install-apply.do">온라인 신청</a></li>
	                            <li><a href="<%=request.getContextPath()%>/citizen/notice.do">게시판</a></li>
	                        </ul>
	                    </div>
	                </div>
	                <div class="dropdown">
	                    <button class="dropdown-button">
	                        <span>설치신청</span>
	                        <img src="<%=request.getContextPath() %>/templates/img/ico_small_next.png" alt="small_next">
	                    </button>
	                    <div class="dropdown-menu">
	                       <ul>
	                            <li><a href="<%=request.getContextPath()%>/citizen/install-apply.do">설치신청</a></li>
	                            <li><a href="<%=request.getContextPath()%>/citizen/as.do">AS 신청</a></li>
	                            <li><a href="<%=request.getContextPath()%>/citizen/situation.do">진행 상황 조회</a></li>
	                        </ul>
	                    </div>
	                </div>
	            </div>
	        </div>
	    </div>
	    <div class="section install-content-wrap">
	        <div class="section-content install-content">
	            <button class="top-button">up</button>
	            <div class="sub-title-wrap">
	                <h2 class="content-title">설치 신청 확인</h2>
	                <p class="content-contents">서울에너지공사 태양광 미니발전소 설치 신청사항을 확인해주세요.</p>
	                <span class="black-bar"></span>
	            </div>
	            <div class="icon-wrap">
	                <ul class="icon-content">
	                    <li><img src="<%=request.getContextPath()%>/templates/img/step2-icon1-1.png" alt="온라인접수">인터넷을 통해 설치<br>신청서를 작성합니다.</li>
	                    <li><img src="<%=request.getContextPath()%>/templates/img/step2-circle1.png" alt="bluecircle"></li>
	                    <li><img src="<%=request.getContextPath()%>/templates/img/step2-icon2-2.png" alt="신청 및 확인">설치 신청 및<br>확인을 진행합니다.</li>
	                    <li><img src="<%=request.getContextPath()%>/templates/img/step2-circle2.png" alt="graycircle"></li>
	                    <li><img src="<%=request.getContextPath()%>/templates/img/step2-icon3-3.png" alt="설치 예정">미니 태양광 설치를<br>진행합니다.</li>
	                    <li><img src="<%=request.getContextPath()%>/templates/img/step2-circle2.png" alt="graycircle"></li>
	                    <li><img src="<%=request.getContextPath()%>/templates/img/step2-icon4-3.png" alt="설치 완료">미니 태양광을<br>이용합니다.</li>
	                </ul>
	            </div>
	            <div style="clear:both"> </div>
	            <div class="table-wrap">
	                <table border="1" class="f-table">
	                    <caption>설치자 정보</caption>
	                    <tr>
	                        <th>이름</th>
	                        <td>${buildData.name}</td>
	                    </tr>
	                    <tr>
	                        <th>연락처</th>
	                        <td>${buildData.userPhone}</td>
	                    </tr>
	                    <tr>
	                        <th>이메일</th>
	                        <td>${ (buildData.userEmail == null or buildData.userEmail == '') ? '_' :  buildData.userEmail }</td>
	                    </tr>
	                    <tr>
	                        <th>생년월일</th>
	                        <td>${buildData.userBirth}</td>
	                    </tr>
	                    <tr>
	                        <th>지원 대상</th>
	                        <td>일반</td>
	                    </tr>
	                      <tr>
	                        <th>신청인 구분</th>
	                        <td>${ buildData.reqType == 'host' ? '소유자 ' : buildData.reqType == 'tenant' ?  '세입자' : '_' }</td>
	                    </tr>
	                    <c:if test="${ buildData.reqType == 'host' }">                  
	                    <tr>
	                        <th>건물 소유자</th>
	                        <td class="gray-font">${empty buildData.host ? '해당사항이 아닙니다.' : buildData.host }</td>
	                    </tr>
	                    <tr>
	                        <th>소유자와 관계</th>
	                        <td class="gray-font">${empty buildData.hostRelation ? '해당사항이 아닙니다.' : buildData.hostRelation }</td>
	                    </tr>
	                    <tr>
	                        <th>설치 동의</th>
	                        <td class="gray-font">${ buildData.hostInstallAgree eq null ? '해당사항이 아닙니다.' : (buildData.hostInstallAgree eq Y ? '동의 함' : '동의하지 않는다') }</td>
	                    </tr>
	                    </c:if>
	                    
	                     <c:if test="${ buildData.reqType == 'tenant'}">
	                    <tr>
	                        <th>건물 소유자</th>
	                        <td class="gray-font">${ buildData.host}</td>
	                    </tr>
	                    <tr>
	                        <th>소유자와 관계</th>
	                        <td class="gray-font">${ buildData.hostRelation}</td>
	                    </tr>
	                    <tr>
	                        <th>설치 동의</th>
	                        <td class="gray-font">${buildData.hostInstallAgree == 'Y' ? '동의하다' : '동의하지 않는다' }</td>
	                    </tr>
	                    </c:if>
	                    
	                </table>
	                <table border="1" class="s-table">
	                    <caption>업체명 / 시간 및 요구사항</caption>
	                    <tr>
	                        <th>업체명</th>
	                        <td>${company.name}</td>
	                    </tr>
	                    <tr>
	                        <th>시간</th>
	                        <td><fmt:formatDate pattern ="yyyy-MM-dd" value ="${buildData.installDate}" /></td>
	                    </tr>
	                    <tr>
	                        <th valign="top">요구사항</th>
	                        <td valign="top">${buildData.etc}</td>
	                    </tr>
	                </table>
	                <table border="1" class="t-table">
	                    <caption>주소 정보</caption>
	                    <tr>
	                        <th>주소</th>
	                        <td>${buildData.newAddr}</td>
	                    </tr>
	                    <tr>
	                        <th>상세주소</th>
	                        <td>${buildData.addr5}</td>
	                    </tr>
	                    <tr>
	                        <th>상세주소 (동)</th>
	                        <td>${buildData.addr4}</td>
	                    </tr>
	                    <tr>
	                        <th>주택유형</th>
	                        <td>${buildData.getApt()}</td>
	                    </tr>
	                    <tr>
	                        <th>건물명</th>
	                        <td>${buildData.buildingName}</td>
	                    </tr>
	                </table>
	                <p>설치 신청하기를 클릭하시면 입력하신 설치 정보를 토대로 온라인 접수가 완료됩니다.<br>빠른 시일내 에너지 공사 콜센터를 통해 설치 확인 연락이 옵니다.</p>
	            </div>
	            <div class="button-wrap">
	                <input class="cancel" type="button" value="설치 취소" onClick="location.href='<%=request.getContextPath()%>/citizen/cancel/apply.do'">
	                <input class="complete" type="submit" value="설치 신청하기" onClick="location.href='<%=request.getContextPath()%>/citizen/install-apply-step2/submit.do'">
	            </div>
	        </div>
	    </div>
	</div>
<%@include file="/WEB-INF/jsp/main/inc/citizen/footer.jsp" %>
  </div>
</body>
</html>