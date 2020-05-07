package egovframework.let.citizen.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CitizenIntroductionController {

	@RequestMapping("citizen/introduction.do")
	public String introduction() {
		return "citizen/introduction/introduction";
	}
}
