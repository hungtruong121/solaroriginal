package egovframework.let.citizen.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CitizenChecklistController {
	
	@RequestMapping(value="citizen/checklist.do")
	public String checklist() {
		return "citizen/check_list/check_list";
	}

}
