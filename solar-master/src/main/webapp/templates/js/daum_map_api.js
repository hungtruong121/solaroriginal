/** :: EnjoyWorks ::
 ***********************************************************************************************************************
 * @source  :
 * @project : 태양광
 *----------------------------------------------------------------------------------------------------------------------
 * VER  DATE           AUTHOR          DESCRIPTION
 * ---  -------------  --------------  ---------------------------------------------------------------------------------
 * 1.0  2019/03/25     EnjoyWorks
 * ---  -------------  --------------  ---------------------------------------------------------------------------------
 * Project Description
 * Copyright(c) 2015 enjoyworks Co., Ltd. All rights reserved.
 **********************************************************************************************************************/

"use strict";

$(document).ready(function() {
    //# 다음 주소 API
	$(document).keypress(function (e) {
	    if (e.which == 13) {
	        return false;
	    }
	});
	
	var showPopup = new daum.Postcode({
        oncomplete: function(data) {
            console.log(data);
            var jibunAddr = data.jibunAddress?data.jibunAddress:data.autoJibunAddress;
            var addrArr = jibunAddr.split(' ');
            $("input[name=addrFull]").val(jibunAddr);
            $("input[name=newAddr]").val(data.roadAddress);
            $("input[name=addr1]").val(data.sido);
            $("input[name=postCode]").val(data.zonecode);

            if(data.sigungu == "")
                $("input[name=addr2]").val(data.bname1);
            else
                $("input[name=addr2]").val(data.sigungu);

            $("input[name=addr3]").val(data.bname);
            //$("input[name=addr4]").val(addrArr[addrArr.length-1]);
            $("input[name=buildingName]").val(data.buildingName);
        }
    });
	
	$("#searchAddress").click(function(){ //search-addr : map search button class name
		showPopup.open();
	});
});

