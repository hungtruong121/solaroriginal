package egovframework.let.citizen.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CitizenAboutController {
	
	
	@RequestMapping("citizen/about.do")
	public String about() {
		return "citizen/about/about";
	}
}
