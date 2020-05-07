package egovframework.let.citizen.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CitizenFundController {
	
	@RequestMapping("citizen/fund.do")
	public String Fund(Model model) {

		return "citizen/fund/fund";
	}

}
