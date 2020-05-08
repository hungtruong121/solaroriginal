package egovframework.let.citizen.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CitizenGoalController {

	@RequestMapping("citizen/goal.do")
	public String goal() {
		return "citizen/goal/goal";
	}
}
