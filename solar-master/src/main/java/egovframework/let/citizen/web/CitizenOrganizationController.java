package egovframework.let.citizen.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CitizenOrganizationController {

	@RequestMapping("citizen/organization.do")
	public String organization() {
		return "citizen/organization/organization_chart";
	}
}
