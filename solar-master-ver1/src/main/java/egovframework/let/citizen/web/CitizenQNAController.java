package egovframework.let.citizen.web;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CitizenQNAController {

		@RequestMapping("citizen/qna.do")
		public String index(Model model, HttpServletRequest request) {
			

			return "citizen/qna/qna";
		}

	
}
