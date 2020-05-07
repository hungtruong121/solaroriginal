package egovframework.let.citizen.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CitizenEmailController {
	
	@RequestMapping("citizen/emailNumber.do")
	public String acount() {
		return "citizen/email/email_number";
	}
}
