<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<footer>
        <div class="footer-wrap">
            <h1 class="logo">
                <a href="<%=request.getContextPath()%>/citizen/index.do"></a>
            </h1>
            <div class="address">
                <p class="copyright">COPYRIGHT(C) 2018 BY 서울에너지공사. All rights reserved.</p>
                <ul>
                    <li><a href="${pageContext.request.contextPath}/citizen/condition.do">이용약관</a></li>
                    <li><a href="${pageContext.request.contextPath}/citizen/condition2.do">개인정보 처리방침</a></li>
                </ul>
            </div>
        </div>
    </footer>

  </div>
<script type="text/javascript" src="<%=request.getContextPath()%>/templates/js/common.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/templates/js/validate.js"></script>
<script type="text/javascript">
	$("#all-check").click(function(){
	    $('input:checkbox').not(this).prop('checked', this.checked);
	});
	$( window ).resize(function() {
        resizeHeader();
    });
    $( window ).load(function() {
        resizeHeader();
    });
    function resizeHeader(){
        var scroll = window.innerWidth;
        var width;
        var header = $("header");
        var headerWrap = parseInt($("header div").css("width"));
        if(scroll > headerWrap){
            width = "100%";
        }
        else{
            width = headerWrap + "px";
        }
        header.css("width", width);
    }
</script>
</body>
</html>