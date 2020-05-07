<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String contextPath = request.getContextPath() + "/templates";
%>
<%@include file="/WEB-INF/jsp/main/inc/citizen/header.jsp"%>
<style type="text/css">
	.section.notice-content-wrap .section-content .main-table table tbody tr:first-child {
		background: white;
   		color: unset;
   	}
	.section.notice-content-wrap .section-content .main-table table tr th {
		text-align: left;
	}
</style>
<div class="content-body">
	<div class="sub-content-head-wrap sub-content5">
		<div class="sub-content-head">
			<div class="sub-content-title-wrap">
				<h2 class="sub-content-title">공지사항</h2>
			</div>
		</div>

		<div class="sub-navigation-wrap">
			<div class="sub-navigation">
				<div class="dropdown">
					<button class="dropdown-button">
						<span>게시판</span> <img
							src="<%=contextPath%>/img/ico_small_next.png" alt="small_next">
					</button>
					<div class="dropdown-menu">
						  <%@include file="/WEB-INF/jsp/main/inc/citizen/side/left.jsp"%>
					</div>
				</div>
				<div class="dropdown">
					<button class="dropdown-button">
						<span>공지사항</span> <img
							src="<%=contextPath%>/img/ico_small_next.png" alt="small_next">
					</button>
					<div class="dropdown-menu">
						  <%@include file="/WEB-INF/jsp/main/inc/citizen/side/right-notice.jsp"%>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="section notice-content-wrap">
		<div class="section-content notice-content">
			<button class="top-button">up</button>
			<div class="sub-title-wrap">
				<h2 class="content-title">공지사항</h2>
				<p class="content-contents">서울 햇빛마루의 새로운 소식과 안내사항을 확인하세요.</p>
			</div>
			
			<div class="panels main-table">
				<table border="1" frame="void" class="panel" id="tab1">
					<caption>공지사항</caption>
					<thead>
						<tr>
							<th>NO</th>
							<th>제목</th>
							<th>작성일</th>
							<th>조회수</th>
						</tr>
					</thead>
					<tbody id="content1">
						<c:forEach items="${ data }" var="notice" varStatus="index">
							<tr>
								<td>${index.index + 1}</td>
								<td><a href="${pageContext.request.contextPath}/citizen/noticeDetail/${notice.id}.do">${notice.title}</a></td>
								<td><fmt:formatDate value="${notice.createAt}"
										pattern="yyyy-MM-dd" /></td>
								<td>${notice.views}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<div class="pager number-bar" id="pagingControls">

				<ul class="tabs" id="tab-page" >
					<li><a href="#tab1" class="on" style="display:none">1</a></li>
				</ul>

			</div>
			<div id="resultSearch" style="display:none"></div>
		</div>
	</div>
</div>
<%@include file="/WEB-INF/jsp/main/inc/citizen/footer.jsp"%>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/templates/js/pagination.js"></script>
<script type="text/javascript">
	var perPage = ${perPage};
	var pager = new Imtech.Pager(perPage, "content1");
	$(document).ready(function() {
		var paragraphsTab1 = $('tr', $('#content1')); // set of main container

		pager.paragraphs = paragraphsTab1 // set of required containers
		pager.showPage(1);
	});
</script>