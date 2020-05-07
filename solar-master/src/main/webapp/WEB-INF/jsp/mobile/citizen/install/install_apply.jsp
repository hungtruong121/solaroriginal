<%@page import="egovframework.let.citizen.enums.AptType"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String contextPath = request.getContextPath() + "/templates/mobile";
%>
<%@include file="/WEB-INF/jsp/main/inc/citizen/mobile/header_sub.jsp"%>
<%@include file="/WEB-INF/jsp/main/inc/citizen/taglib.jsp"%>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/templates/mobile/css/custom.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/templates/mobile/css/jquery-ui.css">
<input type="hidden" class="sub-title" id="install-apply" value="설치신청"></input>
<div class="content-body">
	<button class="top-button">up</button>
	<div class="section install-content-wrap">
		<div class="section-content install-content">
			<div class="sub-title-wrap">
				<h2 class="content-title">신청에 필요한 정보를 입력해주세요.</h2>
			</div>
			<form:form class="apply-wrap" action="javascript:void(0)"
				method="POST" commandName="buildOrderVO" name="buildOrderVO">
				<ul>
					<li><form:errors path="*" cssClass="error" /></li>
				</ul>
				<div class="top-form">
					<div class="top-top">
						<div class="top-name">
							<label for="name">이름<span class="red-star">*</span></label><br>
							<form:input type="text" path="name" required=""
								placeholder="이름을 입력해주세요." />
						</div>
						<div class="top-mail">
							<label for="mail">이메일</label><br>
							<form:input type="text" path="userEmail" id="mail"
								placeholder="이메일을 입력해주세요." />
						</div>
						<div class="top-birth birthdayPicker">
							<input type="button" class="calendar" id="birthIcon"> <label
								for="birth">생년월일<span class="red-star">*</span></label><br>
							<form:input type="text" id="birth" path="userBirth" required=""
								placeholder="생년월일을 입력해주세요." />
						</div>
					</div>
					<div class="top-bottom">
						<!--  <div class="top-radio2">
                           지원 대상
                           <div class="checks">
                                <input type="radio" name="chk_classic1" id="target1" checked="checked">
                               <label for="target1">일반</label>
                               <input type="radio" name="chk_classic1" id="target2">
                               <label for="target2">기초 [생계급여-일반]</label>
                               <input type="radio" name="chk_classic1" id="target3">
                               <label for="target3">기초 [의료급여-1종]</label>
                            </div>
                        </div> -->
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
										value="Y" /> <label for="agree"><span
										class="checkbox-custom"></span><span class="checkbox-label">건물
											소유자 설치동의 하시겠습니까?</span></label>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="bottom-form">
					<div class="product-name">
						<label>보급업체 선택<span>*</span></label> <select name="buildCompanyId"
							id="i-name">
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

					<div class="product-name installDatePicker">
						<label for="installDate">원하는 설치 일자<span>*</span></label><br>
						<input type="button" class="calendar" id="installDate_click">
						<form:input type="text" placeholder="등록 날짜를 선택하십시오."
							id="installDate" path="installDate" required="" />
						<label id="installDate-error" class="error" style="display: none;"></label>
					</div>

					<div class="text-box">
						<label for="guitar">기타 요구사항</label>
						<form:textarea path="etc" id="" cols="30" rows="10"
							placeholder="기타 요구사항을 입력해주세요." />
						</textarea>
					</div>
				</div>

				<div class="mid-form">
					<div class="address">
						<label for="address">주소<span class="red-star">*</span></label><br>
						<form:input type="text" path="newAddr" id="address"
							readonly="true" required="" placeholder="주소를 검색해주세요." />
					</div>
					<input type="button" class="search-button search-address"
						onClick="execDaumPostCode()" value="주소 검색" />
					<div class="case">
						<label>주택유형 선택<span>*</span></label><br>
						<form:select path="aptType" id="aptType">
							<option value="" selected="" disabled="">주택유형을 선택해주세요</option>
							<form:options items="${AptType.values()}" itemValue="id"
								itemLabel="name"></form:options>
						</form:select>
						<label id="aptType-error" class="error" style="display: none;"></label>
					</div>

					<div class="buildname">
						<label for="buildname">건물명</label><br> <input
							id="buildingName" name="buildingName" placeholder="건물명을 입력해주세요."
							type="text" class="readonly-box" value="">
					</div>

					<div class="details-02">
						<label for="details">상세주소 (동)</label><br> 
						<input id="addr4" name="addr4" placeholder="상세주소(동)를 입력하세요"
							type="text" value="">
					</div>
					<div class="details">
						<label for="details">상세주소 (호)<span class="red-star">*</span></label><br>
						<input id="addr5"
							name="addr5" placeholder="상세주소(호)을 입력하세요 " type="text" value="">
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
					<input class="cancel" type="reset" value="취소"
						onClick="location.href='${pageContext.request.contextPath}/citizen/index.do'">
					<input class="complete" type="submit" value="신청 완료" />
				</div>
			</form:form>
			<!-- IOS in the position: fixed a bug that, according to the site to apply position: Need top, left adjusted values using the absolute, etc. -->
			<div id="layer" class="message-popup mobile">
				<div class="popup-content" style="width: 90%; height: 80%;">
					<div class="content-body" id="content-body"
						style="height: 90% !important; padding-top: 20px !important;">
					</div>
					<span class="closeDaum_map" alt="닫기 버튼" onclick="closeDaumPostcode()"></span>					
				</div>
			</div>
		</div>
	</div>
</div>
<script>
	$(function() {
		$('.message-popup.mobile').hide();
	});
	var element_layer = document.getElementById('layer');
	var element_layer_content = document.getElementById('content-body');

	function closeDaumPostcode() {
		// iframe을 넣은 element를 안보이게 한다.
		$('.message-popup.mobile').hide();
		element_layer.style.display = 'none';
	}

	function execDaumPostCode() {
		new daum.Postcode({
			oncomplete : function(data) {
				console.log(data);
				var jibunAddr = data.jibunAddress ? data.jibunAddress
						: data.autoJibunAddress;
				var addrArr = jibunAddr.split(' ');
				$("input[name=addrFull]").val(jibunAddr);
				$("input[name=newAddr]").val(data.roadAddress);
				$("input[name=addr1]").val(data.sido);
				$("input[name=postCode]").val(data.zonecode);

				if (data.sigungu == "")
					$("input[name=addr2]").val(data.bname1);
				else
					$("input[name=addr2]").val(data.sigungu);

				$("input[name=addr3]").val(data.bname);
				//$("input[name=addr4]").val(addrArr[addrArr.length-1]);
				$("input[name=buildingName]").val(data.buildingName);
				// iframe을 넣은 element를 안보이게 한다.
				// (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.)
				closeDaumPostcode();
			},
			width : '100%',
			height : '100%'
		}).embed(element_layer_content);

		// iframe을 넣은 element를 보이게 한다.
		$('.message-popup.mobile').show();
		element_layer.style.display = 'flex';
	}
</script>
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
			chooseDate.setHours(23, 59, 59, 999);
			return chooseDate > dateCurrent && !(value == '0000.00.00');

		}, "유효한 값을 입력하십시오 (YYYY-MM-DD)");

		// using birth
		$.validator.addMethod("isMoreDate", function(value, element) {
			return isValidDate(value);
		}, "유효한 값을 입력하십시오 (YYYY-MM-DD)");

		$.validator.addMethod("addr5Valid", function(value, element, options) {
			if ($("#aptType").val() == null || $("#aptType").val() == 1
					|| $("#aptType").val() == 2 || $("#aptType").val() == 3) {
				if ($("#addr5").val() == '') {
					$('#addr5').addClass('error');
					//$('#addr4-error').text('유효한 값을 입력하십시오.');
					return false;
				}
			} else if ($("#aptType").val() == 4 || $("#aptType").val() == 5
					|| $("#aptType").val() == "") {
				$("#addr5").val("");
				$("#addr5").removeClass('error');
				return true;
			}
			return true;
		}, "유효한 값을 입력하십시오.");

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
		var parts = toDate(dateStr);
		var now = new Date();
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
							/* if ($("#aptType").val() == 1
									|| $("#aptType").val() == 2
									|| $("#aptType").val() == 3) {
							} else if ($("#aptType").val() == 4
									|| $("#aptType").val() == 5
									|| $("#aptType").val() == "") {
								if ($("#addr5").val() == '') {
									$('#addr5-error').css('display', 'block');
									$('#addr5-error').text('유효한 값을 입력하십시오.');
									return false;
								}
							} */
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

<%@include file="/WEB-INF/jsp/main/inc/citizen/mobile/footer.jsp"%>

