<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jsp/main/inc/citizen/taglib.jsp" %>
<fmt:bundle basename="message-common_*" />
<footer>
	<div class="footer-wrap"></div>
</footer>
</div>

<!-- Get title to message resource for all page -->
<fmt:message key="citizen.paging.perPage" var="perPage" />
<script type="text/javascript">
    
	var perPage = ${perPage};
	$( document ).ready(function() {
	    var subtitle = $("input.sub-title").length > 0 ? $("input.sub-title")[0].value : "";
		$(".logo").text(subtitle);
		
		var currentActive = $("input.sub-title").attr("id");
		
	    $("#active"+currentActive).addClass("active");
	});
</script>
<!-- @end -->

</body>
</html>