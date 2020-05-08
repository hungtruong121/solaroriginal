<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String contextPath = request.getContextPath()+"/templates/mobile";%>
<%@include file="/WEB-INF/jsp/main/inc/citizen/mobile/header_sub.jsp" %>
<%@include file="/WEB-INF/jsp/main/inc/citizen/taglib.jsp" %>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/templates/mobile/css/custom.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/templates/mobile/css/jquery-ui.css">
<input type="hidden" class="sub-title" id="as" value="A/S신청"></input>
<div class="content-body">
    <button class="top-button">up</button>
    <div class="section as-content-wrap">
        <div class="sub-title-wrap">
            <h2 class="content-title">A/S 정보</h2>
            <p class="content-contents">태양광 미니발전소 A/S신청</p>
        </div>
        <div class="section-content as-content">
              <form:form action="javascript:void(0)" method="POST" commandName="registerAsVO" name="registerAs">
                <h4>보급업체 선택<span>*</span></h4>
                <form:select name="item-name" id="i-name" path="buildCompanyId">
                    <option value="" selected="" disabled="">업체를 선택해 주세요.</option>
                    <c:forEach var="company" items="${companyList}" varStatus="index">
                    	<c:set var="vlCompany" value="${company.id}-${company.buildOrderId}"></c:set>
                        <option 
                        	<c:if test="${vlCompany ==  companyId}" >selected="selected"</c:if>
                        	value="${vlCompany}">${company.name}[<c:if test="${ empty company.installCompleteDate}">-</c:if><c:if test="${ not empty company.installCompleteDate}"><fmt:formatDate value="${company.installCompleteDate}" pattern="yyyy-MM-dd"/></c:if>]
                        </option>
                    </c:forEach>
                </form:select>
                <form:errors path="buildCompanyId" cssClass="error" />
                <h4>문의사항<span>*</span></h4>
                <form:textarea path="etc" id="" cols="169" rows="10" placeholder="문의사항을 입력해주세요." ></form:textarea>
                <form:errors path="etc" cssClass="error" />
                <div class="calendar-wrap form-datetime-as">
                    <h4>AS희망일자<span>*</span></h4>
                    <input type="button" class="calendar calendar-mobile" id="as_date_click">
                    <form:input type="text" placeholder="AS 희망일자를 선택해주세요." id="as_date" path="asDate" />  
                </div>
                <form:errors path="asDate" cssClass="error" />
                <div class="button-wrap">
                    <input type="button" value="취소" class="cancel" onClick="location.href='${pageContext.request.contextPath}/citizen/index.do'">
                    <input type="submit" value="신청완료" class="complete" >
                </div>
            </form:form>
        </div>
    </div>
</div>

  <script type="text/javascript" src="<%=request.getContextPath()%>/templates/js/jquery-ui.js"></script>
  <script type="text/javascript" src="<%=request.getContextPath()%>/templates/js/jquery.validate.min.js"></script>
  <script type="text/javascript" src="<%=request.getContextPath()%>/templates/js/validate.js"></script>
  <script type="text/javascript">
		function toDate(dateStr) {
			var parts = dateStr.split("-")
			return new Date(parts[0],  parts[1] - 1, parts[2] );
		}
	
		$(document).ready(function(e){
			
			$.validator.addMethod("datecu", function(value, element) {				
				var parts = value.split("-")
				let dateCurrent = new Date();
				let chooseDate = toDate(value);
				chooseDate.setHours(00,00,00,000);
				return chooseDate > dateCurrent && !(value =='0000.00.00');


			}, "유효한 값을 입력하십시오 (YYYY-MM-DD)");
			
			 $("form[name=registerAs]").validate({
		      rules: {
			   	buildCompanyId  : "required",
			   	etc : "required",
			   	asDate :{
			   		required: true,
			   		datecu:true
			   	}		   	
		      },
		      messages: {
			   	buildCompanyId: "유효한 값을 입력하십시오.",
			   	etc: "유효한 값을 입력하십시오.",
		      	asDate :{
		      		required : "유효한 값을 입력하십시오.",
		      		datecu: "유효한 값을 입력하십시오 (YYYY-MM-DD)" 		
		      	}       	
		      },
		      submitHandler : function (form) {
		       document.registerAs.action="${pageContext.request.contextPath}/citizen/as.do";
		       document.registerAs.submit();
					
			 }
		  });
		
		});
	
		$('#as_date_click').click(function(){
			$('#as_date ').focus();
		});
		$('#as_date').datepicker({
		   dateFormat : 'yy-mm-dd',
	       autoclose: true,
	       minDate: '-0d',
	       onSelect: function(dateText, inst) { 
	    	  $("#as_date").val(dateText);
	    	  $("#as_date").focus();
	    	}
		});
		
  </script>
<%@include file="/WEB-INF/jsp/main/inc/citizen/mobileDialog.jsp" %> 
<%@include file="/WEB-INF/jsp/main/inc/citizen/mobile/footer.jsp" %>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/templates/mobile/css/jquery-ui.css">