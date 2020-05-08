package egovframework.let.citizen.web;

import java.util.Collections;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springmodules.validation.commons.DefaultBeanValidator;

import egovframework.com.cmm.LoginVO;
import egovframework.com.cmm.util.EgovUserDetailsHelper;
import egovframework.let.citizen.service.AsService;
import egovframework.let.citizen.service.BuildMemoService;
import egovframework.let.citizen.service.BuildMemoVO;
import egovframework.let.citizen.service.CompanyService;
import egovframework.let.citizen.service.CompanyVO;
import egovframework.let.citizen.service.RegisterAsVO;
import egovframework.let.validator.RegisterAsDateValidator;

@Controller
public class CitizenAsController {
	
	@Autowired
	private DefaultBeanValidator beanValidator;
	
	@Autowired
	private RegisterAsDateValidator registerAsDateValidator;
	
	@Autowired
	@Qualifier("companyService")
    private CompanyService companyService;

	@Autowired
	@Qualifier("asService")
    private	AsService asService;

	@Autowired
	@Qualifier("buildMemoService")
	private BuildMemoService buildMemoService;

	
	@RequestMapping("citizen/as.do")
	public String registerAs(Model model, HttpSession session) {
		Boolean isAuthenticated = EgovUserDetailsHelper.isAuthenticated();		
		if (!isAuthenticated) {
			return "redirect:/citizen/login.do";
		}
		model.addAttribute("registerAsVO", new RegisterAsVO());
		LoginVO loginVO = (LoginVO) session.getAttribute("LoginVO");
		List<CompanyVO> companyList = null;
		try {
			companyList = companyService.findOrderCompany(loginVO.getUid());
		} catch (Exception e) {
			companyList = Collections.emptyList();
		}
		model.addAttribute("companyList", companyList);

		return "citizen/as/as";
	}
	
	@RequestMapping(value="citizen/as.do", method=RequestMethod.POST)
	public String registerAs(@ModelAttribute("registerAsVO") RegisterAsVO registerAsVO, 
			BindingResult bindingResult, HttpSession session, Model model,RedirectAttributes redirectAttributes) {
		Boolean isAuthenticated = EgovUserDetailsHelper.isAuthenticated();		
		if (!isAuthenticated) {
			return "redirect:/citizen/login.do";
		}
		beanValidator.validate(registerAsVO, bindingResult);
		registerAsDateValidator.validate(registerAsVO, bindingResult);
		
		LoginVO loginVO = (LoginVO) session.getAttribute("LoginVO");
		List<CompanyVO> companyList = companyService.findOrderCompany(loginVO.getUid());
		if(bindingResult.hasErrors()) {
			model.addAttribute("companyList", companyList);
			model.addAttribute("companyId", registerAsVO.getBuildCompanyId());
			return "citizen/as/as";
		}
		try {
			LoginVO resultVO = (LoginVO) session.getAttribute("LoginVO");
			registerAsVO.setUsersId(resultVO.getId());
			String selectID = registerAsVO.getBuildCompanyId();
			registerAsVO.setBuildCompanyId(selectID.split("-")[0]);
			registerAsVO.setBuildOrderId(selectID.split("-")[1]);
			int aid = asService.insertAs(registerAsVO);

			BuildMemoVO buildMemoVO = new BuildMemoVO(Integer.valueOf(aid), "as", null, "시민이 as 를 등록하였습니다.");
			buildMemoService.save(buildMemoVO);
            redirectAttributes.addFlashAttribute("titleMessage", "A/S 신청 완료");
            redirectAttributes.addFlashAttribute("message", "A/S 신청이 완료되었습니다. </br>자세한 내용은 진행상황 조회 > A/S 현황에서 확인하실수 있습니다.");
			return "redirect:/citizen/situationAs.do";
		} catch (Exception e) {
			model.addAttribute("companyList", companyList);
			return "citizen/as/as";
		}
	}
}
		