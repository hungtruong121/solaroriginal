package egovframework.let.citizen.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CitizenBackgroundController {
	@RequestMapping("citizen/background.do")
	public String about() {
		return "citizen/background/background";
	}
}
