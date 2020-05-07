/*****************************************
 * SORT TABLE
 * ***************************************
 * @author ThanHP
 * ***************************************
 * @param idTable : id of table sort
 * @param index   : index of column sort
 * @param typesort: type sort (asc/desc)
/*****************************************/

function sortTable(idTable,index, typesort) {
	var table, rows, switching, i, j, x, y, shouldSwitch;
	table = document.getElementById(idTable);
	rows = table.rows;
	for (i = 0; i < (rows.length - 1); i++) {
		for (j = i + 1; j <= rows.length - 1; j++) {
			x = rows[i].getElementsByTagName("TD")[index];
			y = rows[j].getElementsByTagName("TD")[index];
			if(x !==  null && x !==  undefined && y !==  null && y !==  undefined) {
                if(typesort == "asc"){
                    if (x.innerHTML.toLowerCase() > y.innerHTML
                            .toLowerCase()) {
                        rows[i].parentNode.insertBefore(
                            rows[j], rows[i]);
                    }
                }
                else{
                    if (x.innerHTML.toLowerCase() < y.innerHTML
                            .toLowerCase()) {
                        rows[i].parentNode.insertBefore(
                            rows[j], rows[i]);
                    }
                }
            }
		}

	}
}
