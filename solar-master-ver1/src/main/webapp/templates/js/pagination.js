/*****************************************
 * PAGING
 * ***************************************
 * @author ThanhHP
 * ***************************************
 * Example:
 * Import:
 * 		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/templates/css/pagination.css">
 *		<script type="text/javascript" src="<%=request.getContextPath()%>/templates/js/pagination.js"></script>
 * 	
 * 	<div id="content">
 *      <p>record1</p>
 *      <p>record2</p>
 *      <p>record3</p>
 *      <p>record4</p>
 *      <p>record5</p>
 *      <p>record6</p>
 *  </div>
 *  <div class="pager number-bar" id="pagingControls"></div>
 *
 * 	var pager = new Imtech.Pager(2, "content");
 *	$(document).ready(function() {
 *		pager.pagingContainer = $('#content'); // set of main container
 *		pager.paragraphs = $('p', $('#content')) // set of required containers
 *		pager.showPage(1);
 *	});
 * 
/*****************************************/
var Imtech = {};
Imtech.Pager = function(inPerPage, inContainerPath, idScreen) {
	this.idScreen = (idScreen !== null && idScreen !== undefined) ? idScreen : "";
    this.paragraphsPerPage = (inPerPage != null && inPerPage != undefined) ? inPerPage : 12;
    this.currentPage = 1;
    this.pagingControlsContainer = "#pagingControls";
    this.pagingContainerPath = (inContainerPath != null && inContainerPath != undefined) ? "#" + inContainerPath : "#" + "content";
    this.pagingContainer = (inContainerPath != null && inContainerPath != undefined) ? $("#" + inContainerPath) : $("#" + "content");
    
    this.pageStart = 1;
    this.pageEnd = 10;

    this.numPages = function() {
        var numPages = 0;
        if (this.paragraphs != null && this.paragraphsPerPage != null) {
            numPages = Math.ceil(this.paragraphs.length / this.paragraphsPerPage);
        }
        return numPages;
    };
    
    this.showPage = function(page) {
        this.currentPage = page;
        var html = "";
        for (var i = (page-1)*this.paragraphsPerPage; i < ((page-1)*this.paragraphsPerPage) + this.paragraphsPerPage; i++) {
            if (i < this.paragraphs.length) {
                var elem = this.paragraphs.get(i);
                html += "<" + elem.tagName + ">" + elem.innerHTML + "</" + elem.tagName + ">";
            }
        }
        if(html===""){
        	html='<tr><td colspan="15" style="text-align: left;">데이터 없음</td></tr>';
        }
        $(this.pagingContainerPath).html(html);
        if(this.idScreen !== ""){
        	mergeCell(this.pagingContainerPath.id, this.idScreen)
        }
        this.renderControls(this.pagingControlsContainer, this.currentPage, this.numPages());
    }
    
    this.renderControls = function(container, currentPage, numPages) {
    	var pagingControls = '<ul id="tab-page">';
    	// If not paging => return;
        if(numPages == 1 || this.paragraphs.length <= 0){
        	pagingControls += "</ul>";
    		$(container).html(pagingControls);
    		return;
    	}
        pagingControls += "<li onclick='pager.showPage(1); return false;'><span class='material-icons' style='cursor: pointer;font-size: 20px; padding-top: 8px;'>first_page</span></li>";
        
        if(currentPage == numPages){
        	this.pageStart = numPages - 9;
        	this.pageEnd = numPages;
        }
        if(currentPage == 1){
        	this.pageStart = 1;
        	this.pageEnd = 10;
        }
        if(this.pageStart + 9 == currentPage){
        	if(currentPage != numPages){
        		this.pageStart = this.pageStart + 1;
            	this.pageEnd = this.pageStart + 9;
        	}
        }
        if((this.pageEnd - 9) == currentPage){
        	if(currentPage != 1) {
        		this.pageStart = this.pageStart - 1;
            	this.pageEnd = this.pageStart + 9;
        	}
        }
        if(this.pageStart < 1){
        	this.pageStart = 1;
        }
        if(this.pageEnd > numPages){
        	this.pageEnd = numPages;
        }
        for (var i = this.pageStart; i <= this.pageEnd; i++) {
            if (i != currentPage) {
                pagingControls += "<li><a href='#' onclick='pager.showPage(" + i + "); return false;'>" + i + "</a></li>";
            } else {
                pagingControls += '<li> <a class="on">' + i + '</a></li>';
            }
        }
        pagingControls += "<li onclick='pager.showPage(" + numPages + "); return false;'><span class='material-icons'  style='cursor: pointer;font-size: 20px; padding-top: 8px;'>last_page</span></li>";
        pagingControls += "</ul>";
        
        $(container).html(pagingControls);
    }
    function mergeCell(idTable, idScreen){
    	if("productInfo"==idScreen){
    		/*rowSpanTable(idTable, 0);
            rowSpanTable(idTable, 1);
            rowSpanTable(idTable, 2, 1);*/
    	}   
    }
}