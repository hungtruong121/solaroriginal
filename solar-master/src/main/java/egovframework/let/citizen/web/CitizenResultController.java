package egovframework.let.citizen.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CitizenResultController {
	
	@RequestMapping("citizen/result.do")
	public String result() {
		return "citizen/result/result";
	}
	@RequestMapping("citizen/idResult.do")
	public String idResult() {
		return "citizen/result/id_result";
	}
}
