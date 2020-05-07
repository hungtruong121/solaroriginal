<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String contextPath = request.getContextPath()+"/templates";%>
<%@include file="/WEB-INF/jsp/main/inc/citizen/header.jsp" %>
<style type="text/css">
	.section.mtm-content-wrap .section-content .tabs-wrap .panels #tab2 .table tbody tr {
        background: white  !important;
        color: unset;
     }
</style>
<input type="hidden" id=titleMessage name="titleMessage" value="${titleMessage}"/>
<input type="hidden" id="messages" name="messages" value="${message}"/>
<div class="content-body">
    <div class="sub-content-head-wrap sub-content5">
        <div class="sub-content-head">
    <div class="sub-content-title-wrap">
        <h2 class="sub-content-title">
            1:1문의
        </h2>
    </div>
</div>

        <div class="sub-navigation-wrap">
            <div class="sub-navigation">
                <div class="dropdown">
                    <button class="dropdown-button">
                        <span>게시판</span>
                        <img src="<%=contextPath%>/img/ico_small_next.png" alt="small_next">
                    </button>
                    <div class="dropdown-menu">
                        <%@include file="/WEB-INF/jsp/main/inc/citizen/side/left.jsp"%>
                    </div>
                </div>
                <div class="dropdown">
                    <button class="dropdown-button">
                        <span>1:1 문의</span>
                        <img src="<%=contextPath%>/img/ico_small_next.png" alt="small_next">
                    </button>
                    <div class="dropdown-menu">
                        <%@include file="/WEB-INF/jsp/main/inc/citizen/side/right-notice.jsp"%>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="section mtm-content-wrap">
        <div class="section-content mtm-content">
            <button class="top-button">up</button>
            <div class="sub-title-wrap">
                <h2 class="content-title">1:1문의</h2>
                <p class="content-contents">1:1문의를 남겨주시면 서울시 햇빛마루 전문 상담직원이 답변을 드립니다.</p>
            </div>
            <div class="tabs-wrap">
                <ul class="tabs" id="tabmtmt">
                    <li><a href="#tab1" class="on" id="fwTab1">1:1문의</a></li>
                    <li><a href="#tab2" id="fwTab2">문의내역</a></li>
                </ul>
                <div class="panels">
                    <div class="panel mtm-item-wrap" id="tab1">
                        <form action="<%=request.getContextPath()%>/citizen/mtm/proc.do" method="POST" enctype="multipart/form-data" class="mtm-item-content" name="mtmForm">
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
                                    <label id="tel-error" class="tel-error" for="tel">이름을 입력하십시오.</label>
                                </div>
                            </div>
                            <div class="mid-item">
                                 <!--     문의유형<span>*</span>
                                <select name="case" id="q-case">
                                    <option value="" disabled selected>문의유형을 선택해주세요.</option>
                                    <option value="case1">유형1</option>
                                    <option value="case2">유형2</option>
                                    <option value="case3">유형3</option>
                                </select> -->
                                                                        제목<span>*</span>
                                <input type="text" name="title" placeholder="제목을 입력해주세요." required>
                                                                        내용<span>*</span>
                                <textarea name="titleContent" id="titile-content" cols="30" rows="10" placeholder="내용을 입력해주세요." required></textarea>                                                   
                               <!--  <div class="fileBox">
                                   <input class="upload-name" dsiabled placeholder="첨부파일을 등록해주세요." readonly>
                                    <label for="ex-file">찾아보기</label>
                                    <input type="file" id="ex-file" class="upload-hidden" name="fileup">
                                </div> -->
                            </div>
                            <div class="bot-item">
                                <input type="button" class="cancel" value="취소" onclick="location.href='<%=request.getContextPath()%>/citizen/index.do'">
                                <input type="submit" class="complete"  value="신청 완료" id="submitCt">
                            </div>
                        </form>
                    </div>
                    <div class="panel" id="tab2"> 
                        <div class="tables">                                         
                            <table border="1" frame="void" class="table content-tab2" id="numTBmtm">
                                <caption>문의내역</caption>
                                <thead>
	                                <tr>
	                                    <th>번호</th>
	                                    <th>제목</th>
	                                    <th>진행상황</th>
	                                    <th>작성일</th>
	                                </tr>    
                                </thead>              
                           <tbody id="content">
                           <c:forEach var="contact" items="${ contacts }" varStatus="index">
                                <tr>
                                    <td>${ index.index +1 }</td>
                                    <td><a href="${pageContext.request.contextPath}/citizen/mtm-detail/${contact.id}.do">${ contact.title }</a></td>
                                    <td class="${ contact.respondedAt == null ?  'red-text' : ''}">${ contact.respondedAt != null ? '답변완료' : '진행중'  }</td>
                                    <td><fmt:formatDate value="${ contact.createAt }" pattern="yyyy-MM-dd" />  </td>
                                </tr>
                                </c:forEach>
                            </tbody>
                            </table>        
                           
                        </div>
                        
                    </div>
                </div>
            </div>
            <div style="display: none" class="pager number-bar" id="pagingControls">
            </div>
        </div>
    </div>
</div>

	
 <script type="text/javascript" src="<%=request.getContextPath()%>/templates/js/validate.js"></script>
 <script type="text/javascript" src="<%=request.getContextPath()%>/templates/js/jquery.validate.min.js"></script>
 <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/templates/css/pagination.css">
 <script type="text/javascript" src="<%=request.getContextPath()%>/templates/js/pagination.js"></script>
 <script type="text/javascript">
			
				window.onload = function(){
					var message = document.querySelector('input[name=messages]').value;
					var titleMessage = document.querySelector('input[name=titleMessage]').value;
				    
				    if (message != "") {
				    	 openModel(message, titleMessage);
				    }
				};
			
		             // init paging mtm
			    var pager = new Imtech.Pager(20, "content");
			// start ready		 
				$(document).ready(function(e){	
					
					$.validator.addMethod("isPhoneKorea", function(value, element) {

						return checkPhoneNotRequired(value);


					}, "유효한 값을 입력하십시오 (XXX-XXXX-XXXX, XXXXXXXXXXX)");
					
			 
						 $("#fwTab1").click(function(){
					         if($(this).hasClass("on")){
					             return;
					         }
					        $('#pagingControls').hide();
					     });
					     $("#fwTab2").click(function(){
					         if($(this).hasClass("on")){
					             return;
					         }
					         $('#numTBmtm').show();
					         $('#pagingControls').show();
					     });
						 					 
						// paging table
						 pager.pagingContainer = $('#content'); // set of main container
						 pager.paragraphs = $('tr', $('#content')) // set of required containers
						 pager.showPage(1);
						//end paging table
						
						
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
			
<%@include file="/WEB-INF/jsp/main/inc/citizen/dialog.jsp" %> 
<%@include file="/WEB-INF/jsp/main/inc/citizen/footer.jsp" %>
<c:if test="${not empty message}">
	<script type="text/javascript">
		$(document).ready(function(){
			 $("#fwTab2").trigger('click');
		});
	</script>
</c:if>
<script type="text/javascript">
    $(document).ready(function(){
        if(window.location.href.indexOf('?' + 'list') != -1) {
            $("#fwTab2").trigger('click');
        }
    });
</script>