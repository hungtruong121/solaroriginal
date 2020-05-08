<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String contextPath = request.getContextPath()+"/templates/mobile";%>
<%@include file="/WEB-INF/jsp/main/inc/citizen/mobile/header_sub.jsp" %>
<input type="hidden" class="sub-title" id="mtm" value="1:1 문의"></input>
<input type="hidden" id=titleMessage name="titleMessage" value="${titleMessage}"/>
<input type="hidden" id="messages" name="messages" value="${message}"/>
<div class="content-body">
    <button class="top-button">up</button>
    <div class="section mtm-content-wrap">
        <div class="section-content mtm-content">
            <div class="tabs-wrap">
                <ul class="tabs">
                    <li><a href="#tab1" class="on">1:1 문의</a></li>
                    <li><a href="#tab2">문의 내역</a></li>
                </ul>
                <div class="panels">
                    <div class="panel" id="tab1">
                        <form action="<%=request.getContextPath()%>/citizen/mtm/proc.do" method="POST" class="mtm-item-content" name="mtmForm">
                            <div class="top-item">
                                <h3>고객정보</h3>
                                <div class="name-box">
                                    이름<span>*</span><br>
                                    <input type="text" name="name" placeholder="이름을 입력해주세요." required>
                                </div>
                                <div class="mail-box">
                                    이메일<span>*</span><br>
                                    <input type="email" name="email" placeholder="이메일을 입력해주세요." required>
                                </div>
                                <div class="tel-box">
                                    전화번호<br>
                                    <input type="tel" name="tel" placeholder="전화번호를 입력해주세요.">
                                </div>
                            </div>
                            <div class="mid-item">
                                제목<span>*</span>
                                <input type="text" name="title" placeholder="제목을 입력해주세요." required>
                           <br>     내용<span>*</span>
                                <textarea name="titleContent" id="titile-content" cols="30" rows="10" placeholder="내용을 입력해주세요." required></textarea>

                            </div>
                            <div class="bot-item">
                                <input type="button" class="cancel" value="취소" onClick="location.href='<%=request.getContextPath()%>/index.do'">
                                <input type="submit" class="complete" value="신청 완료" >
                            </div>
                        </form>
                    </div>
                    <div class="panel" id="tab2"> <!-- q-blue.png -->
                        <ul>
                        <c:forEach var="contact" items="${ contacts }">
                            <li>
                                <ul class="q-wrap">
                                    <li class="q-wrap-content">
                                        <img src="<%=request.getContextPath()%>/templates/mobile/img/${contact.respondedAt == null ?  'q-red.png' : 'q-blue.png'}" alt="완료된질문">
                                        <p>[배송] ${ contact.title } <br>
                                        <span><fmt:formatDate value="${ contact.createAt }" pattern="yyyy-MM-dd" /> </span></p>
                                        <img src="<%=request.getContextPath()%>/templates/mobile/img/mtm-arrow-down.png" alt="펼치기버튼">
                                    </li>
                                    <li class="hide-content">안녕하세요!<br>${ contact.content }</li>
                                    <li class="hide-content"><img class="${ contact.resContent == null ? 'answerNo' : '' }" src="<%=request.getContextPath()%>/templates/mobile/img/a-answer.png" alt="답변">안녕하세요!<br>${ contact.resContent }</li>
                                </ul>
                            </li>
                        </c:forEach>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
 <script type="text/javascript" src="<%=request.getContextPath()%>/templates/js/validate.js"></script>
 <script type="text/javascript" src="<%=request.getContextPath()%>/templates/js/jquery.validate.min.js"></script>
 <script type="text/javascript">
 
 window.onload = function(){
		var message = document.querySelector('input[name=messages]').value;
		var titleMessage = document.querySelector('input[name=titleMessage]').value;
	    
	    if (message != "") {
	    	 openModel(message, titleMessage);
	    }
	};
	
 $(document).ready(function(e){	
	 // add method validator isPhoneKorea
		$.validator.addMethod("isPhoneKorea", function(value, element) {
            
			return checkPhoneNotRequired(value);


		}, "유효한 값을 입력하십시오 (XXX-XXXX-XXXX, XXXXXXXXXXX)");
			
			
			 $("form[name=mtmForm]").validate({
	            rules: {
	            	name  : "required",
	            	title : "required",
	            	titleContent : "required",	
	            	tel:{
	            		isPhoneKorea :true
	            	},
	                email: {
	                    required: true,
	                    email:true
	                }
	            },
	            messages: {
	            	name: "유효한 값을 입력하십시오.",
	            	title: "유효한 값을 입력하십시오.",
	            	titleContent : "유효한 값을 입력하십시오.",
	            	tel:{
	            		isPhoneKorea : "유효한 값을 입력하십시오 (XXX-XXXX-XXXX, XXXXXXXXXXX)"
	            	},
	            	email: {
	                    required: "유효한 값을 입력하십시오.",
	                    email: "유효한 값을 입력하십시오."
	                }
	            },
	            submitHandler : function (form) {				        
				 document.mtmForm.submit();
					
				}
	        });

	});

 </script>
 
<%@include file="/WEB-INF/jsp/main/inc/citizen/mobileDialog.jsp" %> 
<%@include file="/WEB-INF/jsp/main/inc/citizen/mobile/footer.jsp" %>
