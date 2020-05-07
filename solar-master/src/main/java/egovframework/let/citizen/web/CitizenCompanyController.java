package egovframework.let.citizen.web;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import egovframework.let.citizen.service.CompanyService;
import egovframework.let.citizen.service.CompanyVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.LinkedHashMap;

@Controller
public class CitizenCompanyController {

	@Resource(name = "companyService")
	private CompanyService companyService;


	@RequestMapping("citizen/company.do")
	public String company(Model model) {

		return "citizen/company/company_info";
	}
	
	@RequestMapping(value = "citizen/company-information.do",method = RequestMethod.POST)
	public String companyInformation(Model model,HttpServletRequest request) {
		CompanyVO vo = this.getCompany(request.getParameter("id"));
		vo.setName(request.getParameter("name"));
		vo.setLogo(request.getParameter("src"));
		model.addAttribute("company", vo);
		return "citizen/company/mobile_company_deep";
	}

	@RequestMapping(value = "citizen/company-information/{id}.do",method = RequestMethod.GET)
	public @ResponseBody CompanyVO companyInformation(@PathVariable String id) {
		return this.getCompany(id);
	}

	private CompanyVO getCompany(String id) {
		CompanyVO vo = companyService.findById(Integer.valueOf(id));
		if (vo == null) {
			vo = new CompanyVO();
		}
		return  vo;
	}
}
