package egovframework.let.citizen.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CitizenDissController {

	@RequestMapping("citizen/diss.do")
	public String diss() {
		return "citizen/diss/diss";
	}
}
