package egovframework.let.citizen.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CitizenMapController {
	@RequestMapping(value="citizen/map.do")
	public String checklist() {
		return "citizen/map/map";
	}

}
