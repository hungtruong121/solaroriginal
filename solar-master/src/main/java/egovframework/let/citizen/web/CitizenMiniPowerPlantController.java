package egovframework.let.citizen.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CitizenMiniPowerPlantController {

	@RequestMapping("citizen/miniPower.do")
	public String miniPower() {
		return "citizen/mini/mini_power_plant";
	}
}
