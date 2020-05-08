package egovframework.let.citizen.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CitizenServiceController {
		
		@RequestMapping("citizen/service.do")
		public String service() {
			return "citizen/service/service";
		}
}
