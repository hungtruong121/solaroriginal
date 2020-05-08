<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String contextPath = request.getContextPath()+"/templates";%>
<%@include file="/WEB-INF/jsp/main/inc/citizen/header.jsp" %>
	<script>
	
	    function verityEmail() {
	        var email  =$('#emailFID').val();
	        var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;

	        if(!filter.test(email)){
	        	 openModel("이메일을 정확하게 입력하십시오.")	;
	        }
	        var hostname=<%=request.getContextPath()%>/;
	        var url = hostname+'citizen/send/'+email+'.do';
	        $.ajax({
	            type: 'GET',
	            url: url,
	            cache: false,
	            success: function(result) {
	                if (result == "TRUE"){
	                	 openModel("이메일을 확인하십시오.");	
	                }else {
	                	 openModel( "오류가 발생했습니다.") ;
	                }	              	               	                   
	            }
	        });
	     }

	    // tab1
	     function findMyId(name){
	    	 var email  =$('#emailFID').val();
             var hostname=<%=request.getContextPath()%>/;
             var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
             
             if(!filter.test(email)){
            	 openModel("이메일을 정확하게 입력하십시오.")	;
    	        }
             
 			// 1 use form 1, 2 use form 2 (tab1)
 					
             if ( $('form#tab1 #form1tab').hasClass("on") ) {
				  $('#formOption').val(1);
             }else if( $('form#tab1 #form1tab1').hasClass("on") ){
            	 $('#formOption').val(2);
             }
             var formIssue=$('#formOption').val();
             
             var nameform1  =$('#form1tab input#name').val();
             var nameform2  =$('#form1tab1 input#name').val();               
 			 var url = (formIssue ==2) ? hostname+'citizen/findIdByEmail.do?name='+nameform2 : hostname+'citizen/findIdByPhone.do?name='+nameform1 ;
 			 
 			 $.ajax({
 			    type: 'GET',
	            url: url,
	            cache: false,
	            success: function(data) {

	            	if(data.status){
                     
	            		console.log(data.object.ddd);
	            		var html='';
	            		html += '<h3>아이디 찾기 결과</h3>';
	            		html += '<h4>sunnyseoul</h4>';
	            		
	            	}else{
	            		 openModel("Not foud data");
	            	}
	            		            	                
                }
 			 });
         }

	    

		$(function(){
		
			var formIssue;
			// 1 use form 1, 2 use form 2
			// from1 find by phone
			
			 if ($('form#tab1 #form1tab').hasClass("on")) {
				 formIssue = $('').val(1);
             }
		});
	 </script>
<div class="content-body">
    <div class="section-main account">
        <div class="section account-content-wrap">
            <div class="section-content account-content">
               <button class="top-button">up</button>
                <div class="sub-title-wrap">
                    <h2 class="content-title">아이디/비밀번호 찾기</h2>
                    <p class="content-contents">아이디/비밀번호를 찾을 방법을 선택해주세요.</p>
                </div>
                <div class="account-box-wrap">
                    <ul class="tabs">
                        <li><a href="#tab1" class="on">아이디 찾기</a></li>
                        <li><a href="#tab2">비밀번호 찾기</a></li>
                    </ul>
                    <form class="panel id-wrap" id="tab1" >
                        <div class="id-content">
                         <div id="form1tab" class="tel-box on">
                                <div class="tel-button"><span></span>휴대폰 번호로 찾기</div>
                                <div class="tel-content">
                                    <label for="name">이름</label><input type="text" id="name" required placeholder="이름을 입력해주세요.">
                                    <label for="tel-number">휴대폰 번호</label><br><input type="tel" id="tel-number" required placeholder="휴대폰번호를 입력해주세요.">
                                    <input type="button" value="인증번호 받기">
                                    <input type="text" required placeholder="인증번호를 입력해주세요.">
                                </div>
                            </div> 
                            <div id="form1tab1" class="mail-box">
                                <div class="mail-button"><span></span>이메일로 찾기</div>
                                <div class="mail-content">
                                    <label for="name">이름</label><input type="text" id="name"  required placeholder="이름을 입력해주세요.">
                                    <label for="email">이메일</label><br><input type="email" id="emailFID" required placeholder="이메일을 입력해주세요.">
                                    <input type="button" onclick="verityEmail();" value="인증번호 받기">
                                    <input type="text" required placeholder="인증번호를 입력해주세요.">
                                </div>
                            </div>
                            <input type="text" hidden="" id = "formOption">
                        </div>
                        <input type="submit" value="아이디 찾기" onclick="findMyId();" >
                         <%-- <input type="submit" value="아이디 찾기" onClick="location.href='<%=request.getContextPath()%>/citizen/deep/account_01.do'"> --%>
                    </form>
                     <form class="panel password-wrap" id="tab2">
                        <div class="id-content">
                            <div class="tel-box on">
                                <div class="tel-button"><span></span>휴대폰 번호로 찾기</div>
                                <div class="tel-content">
                                   <label for="id-name">아이디</label>
                                   <input type="text" id="id-name" placeholder="아이디를 입력해주세요." required>
                                    <label for="name">이름</label><input type="text" id="name" required placeholder="이름을 입력해주세요.">
                                    <label for="tel-number">휴대폰 번호</label><br><input type="tel" id="tel-number" required placeholder="휴대폰번호를 입력해주세요.">
                                    <input type="button" value="인증번호 받기">
                                    <input type="text" required placeholder="인증번호를 입력해주세요.">
                                </div>
                            </div>
                           
                            <div class="mail-box">
                                <div class="mail-button"><span></span>이메일로 찾기</div>
                                <div class="mail-content">
                                   <label for="id-name">아이디</label>
                                   <input type="text" id="id-name" placeholder="아이디를 입력해주세요." required>
                                    <label for="name">이름</label><input type="text" id="name" required placeholder="이름을 입력해주세요.">
                                    <label for="email">이메일</label><br><input type="email" id="email" required placeholder="이메일을 입력해주세요.">
                                    <input type="button" value="인증번호 받기">
                                    <input type="text" required placeholder="인증번호를 입력해주세요.">
                                </div>
                            </div>
                        </div>
                        <input type="submit" value="비밀번호 찾기 "onClick="location.href='<%=request.getContextPath()%>/citizen/deep/account_02.do'">
                    </form>  
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
	$(".sub-header-wrap").removeClass("sub-header-wrap");
</script>
<%@include file="/WEB-INF/jsp/main/inc/citizen/mobileDialog.jsp" %> 
<%@include file="/WEB-INF/jsp/main/inc/citizen/footer.jsp" %>