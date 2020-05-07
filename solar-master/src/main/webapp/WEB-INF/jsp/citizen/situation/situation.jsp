<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String contextPath = request.getContextPath()+"/templates";%>
<%@include file="/WEB-INF/jsp/main/inc/citizen/header.jsp" %>
<script>
	window.onload = function()
	{
		var message = document.querySelector('input[name=message]').value;
		var titleMessage = document.querySelector('input[name=titleMessage]').value;
	    if (message != "") {
	    	 openModel(message, titleMessage);
	    }
	};
</script>
<input type="hidden" name="titleMessage" value="${titleMessage}" />
<input type="hidden" name="message" value="${message}" />
<div class="content-body">
    <div class="sub-content-head-wrap sub-content4">
        <div class="sub-content-head">
    <div class="sub-content-title-wrap">
        <h2 class="sub-content-title">
            진행 상황 조회
        </h2>
    </div>
</div>

        <div class="sub-navigation-wrap">
            <div class="sub-navigation">
                <div class="dropdown">
                    <button class="dropdown-button">
                        <span>온라인신청</span>
                        <img src="<%=contextPath%>/img/ico_small_next.png" alt="small_next">
                    </button>
                    <div class="dropdown-menu">
                         <%@include file="/WEB-INF/jsp/main/inc/citizen/side/left.jsp"%>
                    </div>
                </div>
                <div class="dropdown">
                    <button class="dropdown-button">
                        <span>진행상황 조회</span>
                        <img src="<%=contextPath%>/img/ico_small_next.png" alt="small_next">
                    </button>
                    <div class="dropdown-menu">
                        <%@include file="/WEB-INF/jsp/main/inc/citizen/side/right-install.jsp"%>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="section situ-content-wrap">
        <div class="section-content situ-content">
            <button class="top-button">up</button>
            <div class="sub-title-wrap">
                <h2 class="content-title">진행 상황 조회</h2>
                <p class="content-contents">미니발전소 설치 및  A/S 진행사황을 조회하여 정보를 확인하실 수 있습니다.</p>
            </div>
            <div class="tabs-wrap">
               <ul class="tabs">
                    <li><a href="#tab1" id="fwTab1" class="<%=prefixTitle.equals("situation") ? "on": "g" %>">설치현황</a></li>
                    <li><a href="#tab2" id="fwTab2" class="<%=prefixTitle.equals("situationAs") ? "on": "g"%>">A/S 현황</a></li>
                </ul>
                <div class="panels">
                    <div class="panel" id="tab1">
                        <table border="1" frame="void" class="plus-table">
                            <caption>신청 확인</caption>
                            <tbody><tr>
                                <th>NO</th>
                                <th>설치 위치</th>
                                <th>진행 상태</th>
                                <th>진행상황<br>자세히 보기</th>
                            </tr>
                            <c:if test="${ not empty  buildData }">
                             <c:forEach var="buildoder" items="${ buildData }" varStatus="index">
	                            <tr class="main-item">
	                                <td  class="number ${ index.index == 0 ? 'check' : '' } number${ index.index + 1 } " id="indexOder-${buildoder.id}" >${ index.index + 1 }</td>
	                                <td>${ buildoder.installationLocation()}</td>
	                                <td>${ buildoder.getStatus() }</td>
	                                <td><div></div></td>
	                            </tr>
                            </c:forEach>
                            </c:if>
                           
                      
                        	</tbody>
                        </table>
                        <c:forEach var="builinfo" items="${buildData }" varStatus="index">
			                        <div class="focus-content number${ index.index + 1 }-1 ${ index.index==0 ?'check-content ':'' }">
			                            <div class="icon-wrap">
			                                <ul class="icon-content">
			                              	<fmt:formatDate value="${builinfo.installDate}" pattern="yyyy-MM-dd" var="installDateFmt"/>
			                             <c:choose>    
			                                 <c:when test="${ builinfo.stateType == 0 || builinfo.stateType == 1}">
			                                    <li><img src="<%=request.getContextPath() %>/templates/img/step2-icon1-2.png" alt="온라인접수">인터넷을 통해 설치<br>신청서를 작성합니다.</li>
			                                    <li><img src="<%=request.getContextPath() %>/templates/img/step2-circle1.png" alt="bluecircle"></li>
			                                    <li>
			                                   		<img src="<%=request.getContextPath() %>/templates/img/step2-icon2-1.png" alt="신청 및 확인">
			                                   		설치 신청 및<br>확인을 진행합니다.
			                                    </li>
			                                    <li><img src="<%=request.getContextPath() %>/templates/img/step2-circle1.png" alt="graycircle"></li>
			                                    <li><img src="<%=request.getContextPath() %>/templates/img/step2-icon3-2.png" alt="설치 예정">미니 태양광 설치를<br>진행합니다.</li>
			                                    <li><img src="<%=request.getContextPath() %>/templates/img/step2-circle2.png" alt="graycircle"></li>
			                                    <li><img src="<%=request.getContextPath() %>/templates/img/step2-icon4-3.png" alt="설치 완료">미니 태양광을<br>이용합니다.</li>
			                                 </c:when>
			                                <c:when test="${ builinfo.stateType == 2}">
			                                    <li><img src="<%=request.getContextPath() %>/templates/img/step2-icon1-2.png" alt="온라인접수">인터넷을 통해 설치<br>신청서를 작성합니다.</li>
			                                    <li><img src="<%=request.getContextPath() %>/templates/img/step2-circle1.png" alt="bluecircle"></li>
			                                    <li><img src="<%=request.getContextPath() %>/templates/img/step2-icon2-2.png" alt="신청 및 확인">설치 신청 및<br>확인을 진행합니다.</li>
			                                    <li><img src="<%=request.getContextPath() %>/templates/img/step2-circle1.png" alt="graycircle"></li>
			                                    <li><img src="<%=request.getContextPath() %>/templates/img/step2-icon3-1.png" alt="설치 예정">미니 태양광 설치를<br>진행합니다.</li>
			                                    <li><img src="<%=request.getContextPath() %>/templates/img/step2-circle1.png" alt="graycircle"></li>
			                                    <li><img src="<%=request.getContextPath() %>/templates/img/step2-icon4-2.png" alt="설치 완료">미니 태양광을<br>이용합니다.</li>
			                                 </c:when>
			                                 <c:when test="${ builinfo.stateType == 3 || builinfo.stateType == 4}">
			                                    <li><img src="<%=request.getContextPath() %>/templates/img/step2-icon1-2.png" alt="온라인접수">인터넷을 통해 설치<br>신청서를 작성합니다.</li>
			                                    <li><img src="<%=request.getContextPath() %>/templates/img/step2-circle1.png" alt="bluecircle"></li>
			                                    <li><img src="<%=request.getContextPath() %>/templates/img/step2-icon2-2.png" alt="신청 및 확인">설치 신청 및<br>확인을 진행합니다.</li>
			                                    <li><img src="<%=request.getContextPath() %>/templates/img/step2-circle1.png" alt="graycircle"></li>
			                                    <li><img src="<%=request.getContextPath() %>/templates/img/step2-icon3-2.png" alt="설치 예정">미니 태양광 설치를<br>진행합니다.</li>
			                                    <li><img src="<%=request.getContextPath() %>/templates/img/step2-circle1.png" alt="graycircle"></li>
			                                    <li><img src="<%=request.getContextPath() %>/templates/img/step2-icon4-1.png" alt="설치 완료">미니 태양광을<br>이용합니다.</li>
			                                 </c:when>
			                             </c:choose>      
			                                    
			                                </ul>
			                            </div>
			                             <c:choose>  
				                            
				                            <c:when test="${builinfo.stateType == 0 ||  builinfo.stateType == 1 }">
					                            <table border="1" frame="void" class="table2-st">
					                               <caption>설치정보</caption>
					                                <tbody>
					                                <tr>
					                                    <th>설치예정일</th>
					                                    <td>
						                                    <c:if test="${builinfo.installDueDate != null}">
						                                    	<fmt:formatDate pattern ="yyyy년 MM월 dd일" value ="${builinfo.installDueDate}" />
						                                    </c:if>
						                                    <c:if test="${builinfo.installDueDate == null}">
						                                    	미정
						                                    </c:if>
					                                    </td>
					                                </tr>
					                                <tr>
					                                    <th>설치 예정 보급 업체</th>
					                                    <td>${ builinfo.companyName}</td>
					                                </tr>
					                            </tbody>
					                            </table>
				                            </c:when>
				                            
				                            <c:when test="${ builinfo.stateType == 2}">
					                            <table border="1" frame="void" class="table2-st">
					                               <caption>설치정보</caption>
					                                <tbody>
					                                <tr>
					                                    <th>설치예정일</th>
					                                    <td><c:if test="${builinfo.installDueDate != null}">
						                                    	<fmt:formatDate pattern ="yyyy년 MM월 dd일" value ="${builinfo.installDueDate}" />
						                                    </c:if>
						                                    <c:if test="${builinfo.installDueDate == null}">
						                                    	미정
						                                    </c:if></td>
					                                </tr>
					                                <tr>
					                                    <th>설치 예정 보급 업체</th>
					                                    <td>${ builinfo.companyName}</td>
					                                </tr>
					                                <tr>
					                                    <th>담당 기사</th>
					                                    <td>${ builinfo.engineerName}</td>
					                                </tr>
					                                <tr>
					                                    <th>설치 제품</th>
					                                    <td>${ builinfo.productsProvided}</td>
					                                </tr>
					                                <tr>
					                                    <th>담당 기사 연락처</th>
					                                    <td>${ builinfo.engineerPhone == null ? '_' : builinfo.engineerPhone}</td>
					                                </tr>
					                            </tbody>
					                            </table>
					                            
					                            <table border="1" frame="void" class="margin-table">
					                                <caption>결제정보</caption>
					                                <tbody>
					                                <%-- <tr>
					                                    <th>결제상태</th>
					                                    <td>${ builinfo.paymentCheck =='Y' ? ' 입금완료' : '미결재' }</td>
					                                </tr> --%>
					                                <tr>
					                                    <th>상품금액</th>
					                                    <td>${ builinfo.payment == null ? '_' : builinfo.payment }</td>
					                                </tr>
					                                <tr>
					                                    <th>시보조금</th>
					                                    <td>${ builinfo.priceSi == null ? '_' : builinfo.priceSi }</td>
					                                </tr>
					                                <tr>
					                                    <th>자치구 보조금</th>
					                                    <td>${ builinfo.priceBorough == null ? '_' : builinfo.priceBorough }</td>
					                                </tr>
					                                <tr>
					                                    <th>실 결제금액</th>
					                                   <td>${ builinfo.paymentReal } </td>
					                                </tr>
					                            	</tbody>
					                            </table>
				                         </c:when>
				                         
			                             <c:when test="${ builinfo.stateType == 3 || builinfo.stateType == 4}">
					                            <table border="1" frame="void" class="table2-st">
					                               <caption>설치정보</caption>
					                                <tbody>
					                                <tr>
					                                    <th>설치예정일</th>
					                                    <td><c:if test="${builinfo.installDueDate != null}">
						                                    	<fmt:formatDate pattern ="yyyy년 MM월 dd일" value ="${builinfo.installDueDate}" />
						                                    </c:if>
						                                    <c:if test="${builinfo.installDueDate == null}">
						                                    	미정
						                                    </c:if></td>
					                                </tr>
					                                <tr>
					                                    <th>설치 예정 보급 업체</th>
					                                    <td>${ builinfo.companyName}</td>
					                                </tr>
					                                <tr>
					                                    <th>담당 기사</th>
					                                    <td>${ builinfo.engineerName}</td>
					                                </tr>
					                                <tr>
					                                    <th>설치 제품</th>
					                                    <td>${ builinfo.productsProvided}</td>
					                                </tr>
					                                <tr>
					                                    <th>담당 기사 연락처</th>
					                                    <td>${ builinfo.engineerPhone == null ? '_' : builinfo.engineerPhone}</td>
					                                </tr>
					                            </tbody>
					                            </table>
					                            
					                            <table border="1" frame="void" class="margin-table">
					                                <caption>결제정보</caption>
					                                <tbody><tr>
					                                    <th>결제상태</th>
					                                    <td>${ builinfo.paymentCheck =='Y' ? ' 입금완료' : '미결재' }</td>
					                                </tr>
					                                <tr>
					                                    <th>상품금액</th>
					                                    <td>${ builinfo.payment == null ? '_' : builinfo.payment }</td>
					                                </tr>
					                                <tr>
					                                    <th>시보조금</th>
					                                    <td>${ builinfo.priceSi == null ? '_' : builinfo.priceSi }</td>
					                                </tr>
					                                <tr>
					                                    <th>자치구 보조금</th>
					                                    <td>${ builinfo.priceBorough == null ? '_' : builinfo.priceBorough }</td>
					                                </tr>
					                                <tr>
					                                    <th>실 결제금액</th>
					                                   <td>${ builinfo.paymentReal } </td>
					                                </tr>
					                            	</tbody>
					                            </table>
				                            </c:when>
			                            </c:choose>
			                            <c:if test="${ builinfo.stateType == 3 || builinfo.stateType == 4 }">
				                            <button type="button" id="downloadFile" onclick="return downloadFile(${builinfo.id}, '${builinfo.fileName}')">
							                                계약서 다운로드
							                </button>
						                </c:if>
			                        </div>
                        </c:forEach>
                        <!-- display tab1 -->
                        
                    </div>
                    <div class="panel" id="tab2">
                        <table border="1" frame="void" class="plus-table">
                            <caption>신청 확인</caption>
                            <tbody><tr>
                                <th>NO</th>
                                <th>설치 위치</th>
                                <th>진행 상태</th>
                                <th>진행상황<br>자세히 보기</th>
                            </tr>
                            
                            <c:if test="${ not empty  buildAsDatas }">
                             <c:forEach var="buildAsOder" items="${ buildAsDatas }" varStatus="index">
	                            <tr class="main-item">
	                                <td class="${ index.index==0 ?'check ':'' } number number${ index.index + 1 }">${ index.index + 1 }</td>
	                                <td>${ buildAsOder.installationLocation()}</td>
	                                <td>${ buildAsOder.isComplate == 'Y' ? 'A/S 완료' : 'A/S 신청' }</td>
	                                <td><div></div></td>
	                            </tr>
                            </c:forEach>
                            </c:if>                            
                        </tbody>
                        </table>
                        
                       <c:if test="${ not empty  buildAsDatas }">
                             <c:forEach var="buildAsOder" items="${ buildAsDatas }" varStatus="index">
                      <div class="focus-content number${ index.index + 1 }-1 ${ index.index==0 ?'check-content ':'' }">
                            <div class="icon-wrap">
                                <ul class="icon-content as-content">
                                	<c:choose>    
			                                <c:when test="${ buildAsOder.state == 1 }">
			                                    <li><img src="<%=request.getContextPath() %>/templates/img/step1-icon1-1.png" alt="온라인접수">A/S 신청을<br>등록한 상태.</li>
			                                    <li><img src="<%=request.getContextPath() %>/templates/img/step1-circle1.png" alt="bluecircle"></li>
			                                    <li><img src="<%=request.getContextPath() %>/templates/img/step1-icon2-2.png" alt="신청 및 확인">담당기사가 배정되고설치예정일이<br>정해진 상태.</li>
			                                    <li><img src="<%=request.getContextPath() %>/templates/img/step1-circle2.png" alt="graycircle"></li>
			                                    <li><img src="<%=request.getContextPath() %>/templates/img/step1-icon3-3.png" alt="설치 예정">A/S 처리가<br>완료된 상태.</li>
			                                 </c:when>
			                                 <c:when test="${ buildAsOder.state == 2 }">
			                                    <li><img src="<%=request.getContextPath() %>/templates/img/step1-icon1-2.png" alt="온라인접수">A/S 신청을<br>등록한 상태.</li>
			                                    <li><img src="<%=request.getContextPath() %>/templates/img/step1-circle1.png" alt="bluecircle"></li>
			                                    <li><img src="<%=request.getContextPath() %>/templates/img/step1-icon2-1.png" alt="신청 및 확인">담당기사가 배정되고설치예정일이<br>정해진 상태.</li>
			                                    <li><img src="<%=request.getContextPath() %>/templates/img/step1-circle1.png" alt="graycircle"></li>
			                                    <li><img src="<%=request.getContextPath() %>/templates/img/step1-icon3-2.png" alt="설치 예정">A/S 처리가<br>완료된 상태.</li>
			                                 </c:when>
			                                 <c:when test="${ buildAsOder.state == 3 }">
			                                    <li><img src="<%=request.getContextPath() %>/templates/img/step1-icon1-2.png" alt="온라인접수">A/S 신청을<br>등록한 상태.</li>
			                                    <li><img src="<%=request.getContextPath() %>/templates/img/step1-circle1.png" alt="bluecircle"></li>
			                                    <li><img src="<%=request.getContextPath() %>/templates/img/step1-icon2-2.png" alt="신청 및 확인">담당기사가 배정되고설치예정일이<br>정해진 상태.</li>
			                                    <li><img src="<%=request.getContextPath() %>/templates/img/step1-circle2.png" alt="graycircle"></li>
			                                    <li><img src="<%=request.getContextPath() %>/templates/img/step1-icon3-1.png" alt="설치 예정">A/S 처리가<br>완료된 상태.</li>
			                                 </c:when>			                                 
			                             </c:choose>    
                                </ul>
                            </div>
                            <table border="1" frame="void" class="margin-table">
                                <caption>A/S 현황</caption>
                                <tbody>
                                <c:choose>    
                                	<c:when test="${ buildAsOder.state == 1 }">
		                                <tr>
		                                    <th>A/S 요청일</th>
		                                    <td><fmt:formatDate pattern = "yyyy년 MM월 dd일" value = "${ buildAsOder.asDate }" /></td>
		                                </tr>
		                                <tr>
		                                    <th>A/S 예정 보급업체</th>
		                                    <td>${ (buildAsOder.companyName == null or buildAsOder.companyName == '') ? '_' : buildAsOder.companyName    }</td>
		                                </tr>
		                                <tr class="textarea-ex">
		                                    <th valign="top">문의 내역</th>
		                                    <td valign="top">${ (buildAsOder.etc == null or buildAsOder.etc == '') ? '_' : buildAsOder.etc }</td>
		                                </tr>
                                	</c:when>
                                	<c:when test="${ buildAsOder.state == 2 || buildAsOder.state == 3}">
		                                <tr>
		                                    <th>A/S 예정일</th>
		                                    <td><fmt:formatDate pattern = "yyyy년 MM월 dd일" value = "${ buildAsOder.asDate }" /></td>
		                                </tr>
		                                <tr>
		                                    <th>A/S 예정 보급업체</th>
		                                    <td>${ (buildAsOder.companyName == null or buildAsOder.companyName == '') ? '_' : buildAsOder.companyName    }</td>
		                                </tr>
		                                <tr>
		                                    <th>담당기사</th>
		                                    <td>${ (buildAsOder.userName == null or buildAsOder.userName =='') ? '_' : buildAsOder.userName }</td>
		                                </tr>
		                                <tr>
		                                    <th>담당기사 연락처</th>
		                                    <td>${ (buildAsOder.userContact == null or buildAsOder.userContact =='') ? '_' : buildAsOder.userContact }</td>
		                                </tr>
		                                <tr class="textarea-ex">
		                                    <th valign="top">문의 내역</th>
		                                    <td valign="top">${ (buildAsOder.etc == null or buildAsOder.etc == '') ? '_' : buildAsOder.etc }</td>
		                                </tr>
                                	</c:when>
                           		</c:choose> 
                            	</tbody>
                            </table>
                        </div>
                         </c:forEach>
                           </c:if>   
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%@include file="/WEB-INF/jsp/main/inc/citizen/dialog.jsp" %> 
<script>
 $(document).ready(function(){
	 $('.plus-table div').click(function () {
        $(this).parent().siblings('.number').addClass('check');
        var index = $(this).parent().siblings('.number').html();
        if ($(this).parent().siblings('.number').hasClass('check')) {
            $(this).parent().parent().siblings('.main-item').find('.number').removeClass('check');
        }
        $(this).closest( "div.panel" ).find('.focus-content').removeClass('check-content');
        $('.number'+index+'-1').addClass('check-content');
    });
	 $("#fwTab1").click(function(){
		 if($(this).hasClass("on")){
			 return;
		 }
		 window.location.href = "situation.do";
	 });
	 $("#fwTab2").click(function(){
		 if($(this).hasClass("on")){
			 return;
		 }
		 window.location.href = "situationAs.do";
	 });
 });
 
 function downloadFile(buildOrderId, fileName) {
	 if(fileName == '') {
		 openModel('다운로드에 실패했습니다.다시 시도하십시오.', "알림");
		 return;
	 }
	 window.location.href= "${pageContext.request.contextPath}/citizen/"+buildOrderId+"/"+fileName+"/downloadFile.do";
	 return false;
 }
</script>
 <c:if test="${not empty msg}">
	 <script>
		openModel('다운로드에 실패했습니다.다시 시도하십시오.', "알림");
	 </script>
 </c:if>
<%@include file="/WEB-INF/jsp/main/inc/citizen/footer.jsp" %>