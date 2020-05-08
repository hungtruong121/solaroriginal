<%@page import="egovframework.let.citizen.enums.ReqTarget"%>
<%@page import="egovframework.let.citizen.enums.AptType"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String contextPath = request.getContextPath() + "/templates";
%>
<%@include file="/WEB-INF/jsp/main/inc/citizen/header.jsp"%>
<%@include file="/WEB-INF/jsp/main/inc/citizen/taglib.jsp"%>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/templates/css/jquery-ui.css">
<div class="content-body">
	<div class="sub-content-head-wrap sub-content4">
		<div class="sub-content-head">
			<div class="sub-content-title-wrap">
				<h2 class="sub-content-title">설치신청</h2>
			</div>
		</div>
		<div class="sub-navigation-wrap">
			<div class="sub-navigation">
				<div class="dropdown">
					<button class="dropdown-button">
						<span>온라인신청</span> <img
							src="<%=contextPath%>/img/ico_small_next.png" alt="small_next">
					</button>
					<div class="dropdown-menu">
						<%@include file="/WEB-INF/jsp/main/inc/citizen/side/left.jsp"%>
					</div>
				</div>
				<div class="dropdown">
					<button class="dropdown-button">
						<span>설치신청</span> <img
							src="<%=contextPath%>/img/ico_small_next.png" alt="small_next">
					</button>
					<div class="dropdown-menu">
						<%@include file="/WEB-INF/jsp/main/inc/citizen/side/right-install.jsp"%>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="section install-content-wrap">
		<div class="section-content install-content">
			<button class="top-button">up</button>
			<div class="sub-title-wrap">
				<h2 class="content-title">태양광 미니발전소 설치신청</h2>
				<p class="content-contents">서울에너지공사 태양광 미니발전소 설치 신청을 위해 아래 정보를
					입력해주세요.</p>
				<span class="black-bar"></span>
			</div>
			<form:form action="javascript:void(0)" method="POST"
				commandName="buildOrderVO" name="buildOrderVO" class="apply-wrap">
				<ul>
					<li><form:errors path="*" cssClass="error" /></li>
				</ul>

				<h2>주문정보</h2>
				<div class="top-form">
					<div class="top-top">
						<div class="top-name">
							<label for="name">이름<span>*</span></label><br>
							<form:input type="text" id="name" path="name" required=""
								placeholder="이름을 입력해주세요." />
						</div>
						<div class="top-mail">
							<label for="mail">이메일</label><br>
							<form:input type="text" id="mail" path="userEmail"
								placeholder="이메일을 입력해주세요." />
						</div>
						<div class="top-birth" style="position: relative;">
							<label for="birth">생년월일<span>*</span></label><br> <input
								type="button" class="calendar" id="birthIcon">
							<form:input type="text" id="birth" path="userBirth" required=""
								placeholder="생년월일을 입력해주세요." />
						</div>
						<%-- <div class="top-tel">
                            <label for="tel">연락처<span>*</span></label><br>
                            <form:input type="tel" path="userPhone" id="tel" required="" placeholder="연락가능한 연락처를 입력해주세요." />
                        </div> --%>
					</div>
					<div class="top-bottom">
						<%-- <div class="top-radio2">
                           	지원 대상
                           <div class="checks">
                               <form:radiobutton  path="reqTarget" id="target1" checked="checked" value="normal" />
                               <label for="target1">일반</label>
                               <form:radiobutton  path="reqTarget" id="target2" value="basicNormal" />
                               <label for="target2">기초 [생계급여-일반]</label>
                               <form:radiobutton  path="reqTarget" id="target3" value="basicOne"/>
                               <label for="target3">기초 [의료급여-1종]</label>
                            </div>
                        </div> --%>
						<div class="top-radio1">
							신청인 구분 <br>
							<div class="checks">
								<form:radiobutton path="reqType" id="applicant1" value="host" />
								<label for="applicant1">소유자</label>
								<form:radiobutton path="reqType" id="applicant2" value="tenant" />
								<label for="applicant2">세입자</label>
							</div>
						</div>
						<div class="hide-content">
							<div class="top-owner1">
								<label for="owner1">건물 소유자</label><br>
								<form:input type="text" id="owner1" path="host"
									placeholder="건물 소유자를 입력해주세요." />
							</div>
							<div class="top-owner2">
								<label for="owner2">소유자(신청자와의 관계)</label><br>
								<form:input type="text" id="owner2" path="hostRelation"
									maxlength="5" placeholder="소유자 정보를 입력해주세요." />
								<label id="hostRelation-error" class="error"
									style="display: none;"></label>
							</div>
							<div class="top-agree">
								<div class="check-sq">
									<input type="checkbox" id="agree" name="hostInstallAgree"
										value="Y" /> <label for="agree">건물 소유자에게 설치동의를 받으셨습니까?</label> <!-- 2019-06-11 -->
								</div>
							</div>
						</div>
					</div>
				</div>

                <div class="bottom-form">
                   <div class="product-name">
                        <label>보급업체 선택<span>*</span></label>
                        <select name="buildCompanyId" id="i-name">
                            <option value="" selected="" disabled="">업체를 선택해 주세요.</option>
                            <c:if test="${not empty companyList}">
	                            <c:forEach items="${companyList}" var="company">
	                            	<option 
	                            	<c:if test="${currentCpmId == company.id}">selected='selected'</c:if>
	                            	value="${company.id}">${company.name}</option>
	                            </c:forEach>
                            </c:if>
                        </select>
                    </div>
                    
                    <div class="date-install-apply">
                        <label for="installDate">원하는 설치 일자<span>*</span></label><br>
                        <input type="button"  class="calendar" id="installDate_click">
                		<form:input type="text" placeholder="등록 날짜를 선택하십시오." id="installDate" path="installDate" required="" />
                		<label id="installDate-error" class="error" style="display: none;"></label>
                    </div>
                        
                    <div class="text-box">
                        <label for="guitar">기타 요구사항</label>
                        <form:textarea path="etc" id="" cols="30" rows="10" placeholder="기타 요구사항을 입력해주세요." /></textarea>
                    </div>
                </div>
                <div class="mid-form">
                    <div class="address">
                        <label for="address">주소<span>*</span></label><br>
                        <form:input type="text" path="newAddr" id="address" readonly="true"  required="" placeholder="주소를 검색해주세요." />
                    </div>
                    <input type="button" class="search-button" id="searchAddress" value="주소 검색"/>
                    <div class="case">
                        <label>주택유형 선택<span>*</span></label><br>
                        <form:select path="aptType" id="aptType">
                        <option value="" selected="" disabled="">주택유형을 선택해주세요</option>
                        <form:options items="${AptType.values()}" itemValue="id"  itemLabel="name" ></form:options>
                        </form:select>
                        <label id="aptType-error" class="error" style="display: none;"></label>
                    </div>
                    <div class="details-02">
                        <label for="details">건물명</label><br>
                        <form:input type="text" id="buildname" path="buildingName" placeholder="건물명을 입력해주세요." />
                    </div>
                    
                    <div class="buildname details">
                        <label for="buildname">상세주소 (동)</label><br>
                        <form:input type="text" path="addr4" id="addr4" placeholder="상세주소(동)를 입력하세요" readonly="" class="readonly-box" />
                        <label id="addr4-error" class="error" style="display: none;"></label>
                    </div>
                    <div class="details">
                       <label for="details">상세주소 (호)<span>*</span></label><br>
                        <form:input type="text" path="addr5" id="addr5" readonly=""  placeholder="상세주소(호)을 입력하세요 " />
                    </div>
                </div>
                 
                 <!-- get address auto -->
                 <form:hidden path="addrFull" id="addrFull" />
                 <form:hidden path="addr1" id="addr1" />
                 <form:hidden path="addr2" id="addr2" />
                 <form:hidden path="addr3" id="addr3" />
                 <form:hidden path="postCode" id="postCode" />
                 <!-- end get address auto -->
                 
                <div class="button-wrap">
                    <input class="cancel" type="button" value="취소" onclick="location.href='<%=request.getContextPath()%>/citizen/index.do'">
                    <input class="complete" type="submit" value="신청 완료">
                </div>
            </form:form>	
        </div>
    </div>
</div>

<script type="text/javascript"
	src="<%=request.getContextPath()%>/templates/js/jquery-ui.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/templates/js/validate.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/templates/js/jquery.validate.min.js"></script>
<script type="text/javascript">
	$(function() {

		//using install day
		$.validator.addMethod("isCurrentDate", function(value, element) {
			var parts = value.split("-")
			let dateCurrent = new Date();
			let chooseDate = toDate(value);
			chooseDate.setHours(23,59,59,999);
			return chooseDate > dateCurrent && !(value =='0000.00.00');


		}, "유효한 값을 입력하십시오 (YYYY-MM-DD)");

		// using birth
		$.validator.addMethod("isMoreDate", function(value, element) {
			return isValidDate(value);
		}, "유효한 값을 입력하십시오 (YYYY-MM-DD)");
		
		$.validator.addMethod("addr5Valid", function (value, element, options)
				{
					if ($("#aptType").val() == null
							|| $("#aptType").val() == 1
							|| $("#aptType").val() == 2
							|| $("#aptType").val() == 3) {
						if ($("#addr5").val() == '') {
							$('#addr5').addClass('error');
							//$('#addr4-error').text('유효한 값을 입력하십시오.');
							return false;
						}
					} else if ($("#aptType").val() == 4
							|| $("#aptType").val() == 5
							|| $("#aptType").val() == "") {
						$("#addr5").val("");
						$("#addr5").removeClass('error');
						return true;
					}
					return true;
				}, "유효한 값을 입력하십시오."
			);
	});

	$('#installDate_click').click(function() {
		$('#installDate ').focus();
		;
	})
	$('#installDate').datepicker({
		dateFormat : 'yy-mm-dd',
		autoclose : true,
		onSelect : function(dateText, inst) {
			$("#installDate").val(dateText);
			$("#installDate").focus();
		}
	});
	$('#birthIcon').click(function() {
		$('#birth ').focus();
		;
	});
	$('#birth').datepicker({
		dateFormat : 'yy.mm.dd',
		yearRange : '-100y:c+nn',
		maxDate : '-2d',
		autoclose : true,
		onSelect : function(dateText, inst) {
			$("#birth").val(dateText);
			$("#birth").focus();
			
		},
	});

	function isValidDate(dateStr) {
		var parts =toDate(dateStr);
		var now=new Date();
		return parts < now;		
	}

	function toDate(dateStr) {
		var parts = dateStr.split(/[.,\/ -]/);
		return new Date(parts[0], parts[1] - 1, parts[2]);
	}
	$("form[name=buildOrderVO]")
			.validate(
					{
						rules : {
							name : "required",
							userBirth : "required",
							buildCompanyId : "required",
							installDate : "required",
							newAddr : "required",
							aptType : "required",
							addr5 : "addr5Valid",
							userBirth : {
								required : true,
								isMoreDate : true
							},
							hostRelation : {
								maxlength : 5
							},
							installDate : {
								required : true,
								isCurrentDate : true
							},
							userEmail : {
								email : true
							}
						},
						messages : {
							name : "유효한 값을 입력하십시오.",
							userBirth : {
								required : "유효한 값을 입력하십시오.",
								isMoreDate : "유효한 값을 입력하십시오 (YYYY.MM.DD)"
							},
							buildCompanyId : "유효한 값을 입력하십시오.",
							installDate : "유효한 값을 입력하십시오.",
							newAddr : "유효한 값을 입력하십시오.",
							aptType : "유효한 값을 입력하십시오.",
							hostRelation : {
								maxlength : "최대 5자 입력 가능."
							},
							installDate : {
								required : "유효한 값을 입력하십시오.",
								isCurrentDate : "유효한 값을 입력하십시오 (YYYY-MM-DD)"
							},
							userEmail : {
								email : "유효한 값을 입력하십시오."
							}

						},
						submitHandler : function(form) {
// 							if ($("#aptType").val() == 1
// 									|| $("#aptType").val() == 2
// 									|| $("#aptType").val() == 3) {
// 								if ($("#addr4").val() == '') {
// 									$('#addr4-error').css('display', 'block');
// 									$('#addr4-error').text('유효한 값을 입력하십시오.');
// 									return false;
// 								}
// 							} else if ($("#aptType").val() == 4
// 									|| $("#aptType").val() == 5
// 									|| $("#aptType").val() == "") {
// 								$("#addr4").val("");
// 							}
							document.buildOrderVO.action = "${pageContext.request.contextPath}/citizen/install-apply.do";
							document.buildOrderVO.submit();
						}
					});

	$("#aptType")
			.change(
					function() {
						$('#addr5-error').attr('style',
								'display: none !important');
						if ($("#aptType").val() == ""
								|| $("#aptType").val() == 1
								|| $("#aptType").val() == 2
								|| $("#aptType").val() == 3) {
							$("#addr4").attr('readonly', false);
							$("#addr5").attr('readonly', false);
							//$("#addr5").val('');
						} else if ($("#aptType").val() == 4
								|| $("#aptType").val() == 5) {
							$("#addr4").attr('readonly', false);
							$("#addr5").attr('readonly', true);
							$("#addr5").val('');
						}
					});
	$("#addr4").change(function() {
		if ($("#addr4").val() != "") {
			$('#addr4-error').attr('style', 'display: none !important');
		}
	})
</script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/templates/js/daum_map_api.js"></script>
<%@include file="/WEB-INF/jsp/main/inc/citizen/dialog.jsp"%>
<%@include file="/WEB-INF/jsp/main/inc/citizen/footer.jsp"%>
