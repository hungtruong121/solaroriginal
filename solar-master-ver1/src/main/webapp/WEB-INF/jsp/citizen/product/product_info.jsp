<%@ page import="egovframework.let.citizen.service.ProductInfoVO" %>
<%@ page import="java.util.ArrayList" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String contextPath = request.getContextPath()+"/templates";%>
<%@include file="/WEB-INF/jsp/main/inc/citizen/header.jsp" %>

<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/templates/css/pagination.css">
<style type="text/css">

    #pricebttn, #efficienbttn, #weightbttn {
        background-color : #b2b2b6;
    }
    #pricebttn.active, #efficienbttn.active, #weightbttn.active {
        background-color : #485574;
    }
</style>
<div class="content-body">
    <div class="sub-content-head-wrap sub-content3">
        <div class="sub-content-head">
    <div class="sub-content-title-wrap">
        <h2 class="sub-content-title">
         상품 정보
        </h2>
    </div>
</div>

        <div class="sub-navigation-wrap">
            <div class="sub-navigation">
                <div class="dropdown">
                    <button class="dropdown-button">
                        <span>설치안내</span>
                        <img src="<%=contextPath%>/img/ico_small_next.png" alt="small_next">
                    </button>
                    <div class="dropdown-menu">
                        <%@include file="/WEB-INF/jsp/main/inc/citizen/side/left.jsp"%>
                    </div>
                </div>
                <div class="dropdown">
                    <button class="dropdown-button">
                        <span>상품정보</span>
                        <img src="<%=contextPath%>/img/ico_small_next.png" alt="small_next">
                    </button>
                    <div class="dropdown-menu">
                       <%@include file="/WEB-INF/jsp/main/inc/citizen/side/right-checklist.jsp"%>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="section product-content-wrap">
        <div class="section-content product-content">
          <button class="top-button">up</button>
          <div class="product-title">
              <input type="search" id="searchInput"  placeholder="찾고 계신 보급회사명, 상품명 혹은 용량을 입력해주세요.">
              <button class="search-button" id="btnSearch">search</button>
              <div class="title-button">
                  <button class="price-button" id="pricebttn"><img src="<%=contextPath%>/img/mini-icon1.png" alt="price">낮은 가격순</button>
                  <button class="efficien-button" id="efficienbttn"><img src="<%=contextPath%>/img/mini-icon2.png" alt="efficien">높은 효율순</button>
                  <button class="weight-button" id="weightbttn"><img src="<%=contextPath%>/img/mini-icon3.png" alt="weight">낮은 중량순</button>
              </div>
          </div>
          <div class="product-table">
                <table border="1" sumary="info" frame="void">
                    <caption>상품정보</caption>
                    <thead>
                    <tr>
                        <th>보급업체</th>
                        <th>종류</th>
                        <th>상품명</th>
                        <th>설비용량 <b>(w)</b></th>
                        <th>제품규격 <b>(mm)</b></th>
                        <th>제품가격 <b>(원)</b></th>
                        <th>자부담금<b>(원)</b></th>
                        <th>효율<b>(%)</b></th>
                        <th>중량<b>(kg)</b></th>
                        <th>모듈 보증기간</th>
                    </tr>
                    </thead>
                    <tbody id="content">
                    <c:forEach var="info" items="${ infos }">
                    <tr>
                    	<td>${ info.supplier }</td>
                    	<td>${ info.kinds }</td>
                    	<td>${ info.productName }</td>
                    	<td>${ info.capacity }</td>
                    	<td>${ info.specification }</td>
                    	<td>${ info.price }</td>
                    	<td>${ info.charge }</td>
                    	<td>${ info.efficiency }</td>
                    	<td>${ info.weight }</td>
                    	<td>${ info.period }</td>
					</tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
          <div class="pager number-bar" id="pagingControls"></div>
          <table id="resultSearch" style="display:none"></table>
        </div>
    </div>
</div>
<%@include file="/WEB-INF/jsp/main/inc/citizen/footer.jsp" %>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/templates/js/pagination.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/templates/js/sortTable.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/templates/js/rowSpan.js"></script>
<script type="text/javascript">
	var perPage = ${perPage};
	var sort = "0";
	var pager = new Imtech.Pager(perPage, "content","productInfo");
	
	$.urlParam = function(name){
		var results = new RegExp('[\?&]' + name + '=([^&#]*)').exec(decodeURIComponent(window.location.href));
        if(results === null || results === undefined){
            return null;
        }
        return results[1] || null;
	}
	$(document).ready(function() {
		var pagingContainer = $('#content');
		var paragraphs = $('tr', $('#content'));
		pager.pagingContainer = pagingContainer  // set of main container
		pager.paragraphs = paragraphs; // set of required containers
		pager.showPage(1);
		document.getElementById("searchInput").addEventListener("search", function(event) {
			$("#searchInput").trigger("change");
		});
		$("#searchInput").on("keyup change",function(){
			var filter = $(this).val().toUpperCase();
			search(filter);
		});
		$("#btnSearch").on("click",function(){
			var filter = $("#searchInput").val().toUpperCase();
			search(filter);
		});
		$(document).on("click","#pricebttn, #efficienbttn, #weightbttn",function(){
			if("pricebttn" === this.id){
				sort = "1";
                if ( $("#pricebttn").toggleClass("active").hasClass("active")) {
                    $("#efficienbttn").removeClass("active")
                    $("#weightbttn").removeClass("active")
                }
			}
			if("efficienbttn" === this.id){
				sort = "2";
                if ($("#efficienbttn").toggleClass("active").hasClass("active")) {
                    $("#pricebttn").removeClass("active")
                    $("#weightbttn").removeClass("active")
                }
			}
			
			if("weightbttn" === this.id){
				sort = "3";
                if ($("#weightbttn").toggleClass("active").hasClass("active")) {
                    $("#pricebttn").removeClass("active")
                    $("#efficienbttn").removeClass("active")
                }
			}

			$("#searchInput").trigger("change");
		});
		
		function search(filter){
			pager.pagingCweighbtttnontainer = pagingContainer; // set of main container
			pager.paragraphs = paragraphs // set of required containers
			pager.showPage(1);
			
			var searchRs = pager.paragraphs;
			var html = "", txtValue = "", txtValue1 = "", txtValue2 = "";
			for (var i = 0; i < searchRs.length; i++) {
	            var elem = searchRs.get(i);
	            var td = elem.getElementsByTagName("td")[0];
	            var td1 = elem.getElementsByTagName("td")[3];
	            var td2 = elem.getElementsByTagName("td")[2];
	            if (td || td1 || td2 ) {
	                txtValue = td.textContent || td.innerText;
	                txtValue1 = td1.textContent || td1.innerText;
	                txtValue2 = td2.textContent || td2.innerText;
	                
	                if (txtValue.toUpperCase().indexOf(filter) > -1
	                		|| txtValue1.toUpperCase().indexOf(filter) > -1
	                		|| txtValue2.toUpperCase().indexOf(filter) > -1) {
	                	html += "<" + elem.tagName + ">" + elem.innerHTML + "</" + elem.tagName + ">";
	                }
              	}                
	        }
			var resultSearch = $("#resultSearch").html(html);
			
			if(sort != undefined && sort != null){
				var index, type;
				if("1" === sort){
					index = 5;
                    type = $("#pricebttn").hasClass("active") ?  "asc" : "desc"
				}
				if("2" === sort){
					index = 7;
                    type = $("#efficienbttn").hasClass("active") ?  "desc" : "asc"
				}
				if("3" === sort){
					index = 8;
                    type = $("#weightbttn").hasClass("active") ?  "asc" : "desc"
				}
				sortTable("resultSearch", index, type);
			}
			pager.paragraphs = $('tr', $("#resultSearch")); // set of required containers
			pager.showPage(1);
		};
		var name = decodeURIComponent($.urlParam("name"));
		if(name !== "null" && name !== "undefined"){
			$("#searchInput").val(name);
			$("#searchInput").trigger("change");
		}
	});
</script>