<%@page import="egovframework.let.citizen.enums.AptType"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String contextPath = request.getContextPath()+"/templates/mobile";%>
<%@include file="/WEB-INF/jsp/main/inc/citizen/mobile/header_sub.jsp" %>
<%@include file="/WEB-INF/jsp/main/inc/citizen/taglib.jsp"%>
<input type="hidden" class="sub-title" id="install-apply-step2" value="설치신청"></input>
<div class="content-body">
    <button class="top-button">up</button>
    <div class="section situDepth-content-wrap">
        <div class="section-content situDepth-content">
            <div class="tabs-wrap">
                <div class="apply-step">
                    <div>
                        <div class="situ-depth1-wrap">
                            <ul class="number-bar">
                                <li class="focus">1.온라인 접수</li>
                                <li>2</li>
                                <li>3</li>
                                <li>4</li>
                            </ul>
                            <div class="depth-content">
                                <b>설치자 정보</b>
                                <div class="content-inner">
                                    <div>
                                        <p>이름</p>
                                    </div>
                                    <div>
                                        <p>${buildData.name}</p>
                                    </div>
                                    <div>
                                        <p>연락처</p>
                                    </div>
                                    <div>
                                        <p>${buildData.userPhone}</p>
                                    </div>
                                    <div>
                                        <p>이메일</p>
                                    </div>
                                    <div>
                                        <p>${ (buildData.userEmail == null or buildData.userEmail == '') ? '_' :  buildData.userEmail }</p>
                                    </div>
                                    <div>
                                        <p>생년월일</p>
                                    </div>
                                    <div>
                                        <p>${buildData.userBirth}</p>
                                    </div>
                                    <div>
                                        <p>지원대상</p>
                                    </div>
                                    <div>
                                        <p>일반</p>
                                    </div>
                                    <div>
                                        <p>신청인 구분</p>
                                    </div>
                                    <div>
                                        <p>${ buildData.reqType == 'host' ? '소유자 ' : buildData.reqType == 'tenant' ?  '세입자' : '_' }</p>
                                    </div>
                                     <c:if test="${ buildData.reqType == 'host' }">     
	                                    <div>
	                                        <p>건물 소유자</p>
	                                    </div>
	                                    <div>
	                                        <p class="gray-font">${empty buildData.host ? '해당사항이 아닙니다.' : buildData.host }</p>
	                                    </div>
	                                    <div>
	                                        <p>소유자와 관계</p>
	                                    </div>
	                                    <div>
	                                        <p class="gray-font">${empty buildData.hostRelation ? '해당사항이 아닙니다.' : buildData.hostRelation }</p>
	                                    </div>
	                                    <div>
	                                        <p>설치 동의</p>
	                                    </div>
	                                    <div>
	                                        <p class="gray-font">${ buildData.hostInstallAgree eq null ? '해당사항이 아닙니다.' : (buildData.hostInstallAgree eq Y ? '동의 함' : '동의하지 않는다') }</p>
	                                    </div>
                                    </c:if>
                                    
                                    <c:if test="${ buildData.reqType == 'tenant'}">
                                    	<div>
	                                        <p>건물 소유자</p>
	                                    </div>
	                                    <div>
	                                        <p class="gray-font">${ buildData.host}</p>
	                                    </div>
	                                    <div>
	                                        <p>소유자와 관계</p>
	                                    </div>
	                                    <div>
	                                        <p class="gray-font">${ buildData.hostRelation}</p>
	                                    </div>
	                                    <div>
	                                        <p>설치 동의</p>
	                                    </div>
	                                    <div>
	                                        <p class="gray-font">${buildData.hostInstallAgree == 'Y' ? '동의하다' : '동의하지 않는다' }</p>
	                                    </div>
                                    </c:if>
                                </div>
                            </div>
                            <div class="depth-content">
                                <b>업체명 / 시간 및 요구사항</b>
                                <div class="content-inner">
                                    <div>
                                        <p>업체명</p>
                                    </div>
                                    <div>
                                        <p>${company.name}</p>
                                    </div>
                                    <div>
                                        <p>시간</p>
                                    </div>
                                    <div>
                                        <p><fmt:formatDate pattern ="yyyy-MM-dd" value ="${buildData.installDate}" /></p>
                                    </div>
                                    <div>
                                        <p>요구사항</p>
                                    </div>
                                    <div>
                                        <p>${buildData.etc}</p>
                                    </div>
                                </div>
                            </div>
                            <div class="depth-content">
                                <b>주소정보</b>
                                <div class="content-inner">
                                    <div>
                                        <p>주소</p>
                                    </div>
                                    <div>
                                        <p>${buildData.newAddr}</p>
                                    </div>
                                    <div>
                                        <p>상세주소</p>
                                    </div>
                                    <div>
                                        <p>${buildData.addr5}</p>
                                    </div>
                                    <div>
                                        <p>상세주소 (동)</p>
                                    </div>
                                    <div>
                                        <p>${buildData.addr4}</p>
                                    </div>
                                    <div>
                                        <p>주택유형</p>
                                    </div>
                                    <div>
                                        <p>${buildData.getApt()}</p>
                                    </div>
                                    <div>
                                        <p>건물명</p>
                                    </div>
                                    <div>
                                        <p>${buildData.buildingName}</p>
                                    </div>
                                </div>
                            </div>
                            <p class="etc-text">설치 신청하기를 클릭하시면 입력하신 설치 정보를 토대로 <br>온라인 접수가 완료됩니다. <br>빠른 시일내 에너지 공사 콜센터를 통해 설치 확인 연락이 옵니다.</p>
                       		<div class="button-wrap">
                                <input class="cancel" type="button" value="설치 취소" onClick="location.href='${pageContext.request.contextPath}/citizen/index.do'">
                                <input class="complete" type="submit" value="설치 신청하기" onClick="location.href='${pageContext.request.contextPath}/citizen/install-apply-step2/submit.do'">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%@include file="/WEB-INF/jsp/main/inc/citizen/mobile/footer.jsp" %>