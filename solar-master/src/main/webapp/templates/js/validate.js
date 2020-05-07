// Check phone number
function checkPhone(phone){
	var phoneRegex
    if(phone.indexOf("-") >= 0) {
		phoneRegex = /^[0-9]{3}-[0-9]{4}-[0-9]{4}$/;
	} else {
		phoneRegex = /^\d{11}$/;
	}
	if(!phoneRegex.test(phone)){
    	return false;
    }
	return true
}
// Check valid Email
function CheckEmail(email) {
    var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;

    if(!filter.test(email)){
     return false;
    }
    return true;
}
function checkPassword(password){
	var passwordRegex =/^[A-Za-z0-9\\\!\@\#\$\%\^\&\*\(\)\_\-\=\+\|]{8,20}$/
	if(!passwordRegex.test(password)){
     return false;
    }
    return true;
}
//
function checkPhoneNotRequired(phone){
	var phoneRegex
	if(phone ==''){
		return true;
	}else{
        if(phone.indexOf("-") >= 0){
			phoneRegex = /^[0-9]{3}-[0-9]{4}-[0-9]{4}$/;
		} else {
			phoneRegex = /^\d{11}$/;
		}
		if(!phoneRegex.test(phone)){
	    	return false;
	    }	
		return true;
	}
}

