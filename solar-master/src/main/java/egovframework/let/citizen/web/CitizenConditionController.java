package egovframework.let.citizen.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CitizenConditionController {

	@RequestMapping(value = "citizen/condition.do")
	public String condition() {
		return "citizen/condition/condition";
	}
	
	@RequestMapping(value = "citizen/condition2.do")
	public String condition2() {
		return "citizen/condition/condition_2";
	}

}
