function rowSpanTable(idTable,index, groupIndex) {
    groupIndex = (groupIndex !== null || groupIndex !== undefined) ? groupIndex : -1;
	var pagingContainer = $('#content'); // set of main container
	var paragraphs = $('tr', $('#content')); // set of required containers
	
	var no = 0,
    rowCompany = "",
	prevRowCompany = "",
	rowspanCompany = 0,
	
	rowProduct = "",
	prevRowProduct = "",
	rowspanProduct = 0,
	group = false;
	
	var html = "", xValue = "", yValue = "";
	var preGroupValuei, groupValuei, groupValuej;
	 
	
	for (var i = 0; i < paragraphs.length; i++) {
        var elemi = paragraphs.get(i);
        var x = elemi.getElementsByTagName("td")[index];
        
        
        xValue = x.textContent || x.innerText;
        if(!xValue == prevRowCompany){
  			no = no + 1;
  		}
  		rowCompany = xValue;
  		if(groupIndex !== -1){
        	groupValuei = elemi.getElementsByTagName("td")[groupIndex].textContent || elemi.getElementsByTagName("td")[groupIndex].innerText;
        	if(groupValuei == preGroupValuei){
        		group = true;
        	}else{
        		group = false;
        		preGroupValuei = groupValuei;
        	}

  		}
  		if(!group || !(rowCompany == prevRowCompany)){
  			rowspanCompany = 0;
  			for(var j = i; j < paragraphs.length; j++){
  				var elemj = paragraphs.get(j);
  				var y = elemj.getElementsByTagName("td")[index];
  		        yValue = y.textContent || y.innerText;
  		        
  		        if(groupIndex !== -1){
  		        	groupValuej = elemj.getElementsByTagName("td")[groupIndex].textContent || elemj.getElementsByTagName("td")[groupIndex].innerText;
  		        	if(groupValuei == groupValuej
	  	        		&& xValue == yValue){
	      				rowspanCompany =  rowspanCompany+1;
	      			}else{
	      				break;
	      			}
	  	        } else {
	  	        	if(xValue == yValue){
	      				rowspanCompany =  rowspanCompany+1;
	      			}else{
	      				break;
	      			}
	  	        }
      		}
  			$(x).attr("rowspan", rowspanCompany);
  			group = true;
  		} else {
  			$(x).attr("hidden", "hidden");
  		}
  		prevRowCompany = rowCompany;
    }
}