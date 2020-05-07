package egovframework.let.citizen.web;

import java.text.SimpleDateFormat;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.context.request.RequestAttributes;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springmodules.validation.commons.DefaultBeanValidator;

import egovframework.com.cmm.EgovMessageSource;
import egovframework.com.cmm.LoginVO;
import egovframework.com.cmm.util.EgovUserDetailsHelper;
import egovframework.let.citizen.service.BuildMemoService;
import egovframework.let.citizen.service.BuildMemoVO;
import egovframework.let.citizen.service.BuildOrderService;
import egovframework.let.citizen.service.BuildOrderVO;
import egovframework.let.citizen.service.CompanyService;
import egovframework.let.citizen.service.CompanyVO;
import egovframework.let.validator.AddressValidator;
import egovframework.let.validator.BirthDayValidator;
import egovframework.let.validator.InstallDateValidator;

@Controller
public class CitizenInstallController {
	
	@Autowired 
	@Qualifier("companyService")
	private CompanyService companyService;
	
	@Autowired 
	@Qualifier("buildOrderService")
	private BuildOrderService buildOrderService;

	@Autowired
	@Qualifier("buildMemoService")
	private BuildMemoService buildMemoService;

	@Autowired
	private DefaultBeanValidator beanValidator;
	
	@Autowired
	private AddressValidator addressValidator;
	
	@Autowired
	private InstallDateValidator installDateValidator;
	
	@Autowired
	private BirthDayValidator birthDayValidator;
	
	@Autowired
	private BirthDayValidator hostRelationValidator;
	
	/** EgovMessageSource */
	@Resource(name = "egovMessageSource")
	EgovMessageSource egovMessageSource;
	
	@RequestMapping("citizen/install.do")
	public String index() {
		return "/citizen/install/install";
	}
	
	@RequestMapping("citizen/install-apply.do")
	public String apply(Model model,HttpServletRequest request) {
		Boolean isAuthenticated = EgovUserDetailsHelper.isAuthenticated();
		if (!isAuthenticated) {
			return "redirect:/citizen/login.do";
		}
		model.addAttribute("buildOrderVO", new BuildOrderVO());
		List<CompanyVO> companyList = companyService.findAll();
		model.addAttribute("companyList", companyList);
		return "/citizen/install/install_apply";
	}
	
	@RequestMapping(value="citizen/install-apply.do", method=RequestMethod.POST)
	public String apply(@ModelAttribute("buildOrderVO") BuildOrderVO buildOrderVO, 
			BindingResult rs, HttpSession session,HttpServletRequest request, Model model) {
		Boolean isAuthenticated = EgovUserDetailsHelper.isAuthenticated();
		if (!isAuthenticated) {
			return "redirect:/citizen/login.do";
		}

		LoginVO loginVO = null;
		// validation BuildOrderVO
		beanValidator.validate(buildOrderVO, rs);
		hostRelationValidator.validate(buildOrderVO, rs);
		birthDayValidator.validate(buildOrderVO, rs);
		addressValidator.validate(buildOrderVO, rs);
		installDateValidator.validate(buildOrderVO, rs);
		if(rs.hasErrors()) {
			List<CompanyVO> companyList = companyService.findAll();
			model.addAttribute("companyList", companyList);
			model.addAttribute("currentCpmId", buildOrderVO.getBuildCompanyId());
			return "/citizen/install/install_apply";
		}
		// insert database
		try {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			buildOrderVO.setInstallDate(sdf.parse(sdf.format(buildOrderVO.getInstallDate())));
			loginVO = (LoginVO)session.getAttribute("LoginVO");
			if(loginVO != null) {
				buildOrderVO.setWriteUserId(Integer.parseInt(loginVO.getId()));
				buildOrderVO.setUserPhone(loginVO.getUid());
			}
			
			buildOrderVO.setWriteUserType("citizen_user");
			request.getSession().setAttribute("buildVO", buildOrderVO);
			
		} catch (Exception e) {
			e.printStackTrace();
			List<CompanyVO> companyList = companyService.findAll();
			model.addAttribute("companyList", companyList);
			model.addAttribute("msg", egovMessageSource.getMessage("citizen.fail"));
			return "/citizen/install/install_apply";
		}
		return "redirect:/citizen/install-apply-step2.do";
	}
	
	@RequestMapping("citizen/install-apply-step2.do")
	public String applyStep2(HttpServletRequest request, HttpSession session, Model model) throws Exception {
		Boolean isAuthenticated = EgovUserDetailsHelper.isAuthenticated();
		if (!isAuthenticated) {
			return "redirect:/citizen/login.do";
		}
		BuildOrderVO buildData = (BuildOrderVO) session.getAttribute("buildVO");
		LoginVO loginVO = (LoginVO) session.getAttribute("LoginVO");
		if (buildData == null) {
			model.addAttribute("buildOrderVO", new BuildOrderVO());
			List<CompanyVO> companyList = companyService.findAll();
			model.addAttribute("companyList", companyList);
			model.addAttribute("msg", egovMessageSource.getMessage("citizen.fail"));
			return "/citizen/install/install_apply";
		}
		CompanyVO cVo = companyService.findById(buildData.getBuildCompanyId());
		model.addAttribute("company", cVo);
		model.addAttribute("buildData", buildData);

		return "/citizen/install/install_apply_step2";
	}
	
	@RequestMapping(value="citizen/install-apply-step2/submit.do",method = RequestMethod.GET)
	public String applySubmit (Model model,HttpServletRequest request,HttpSession session, RedirectAttributes redirect) throws Exception {
		Boolean isAuthenticated = EgovUserDetailsHelper.isAuthenticated();
		if (!isAuthenticated) {
			return "redirect:/citizen/login.do";
		}
		BuildOrderVO buildData =(BuildOrderVO) session.getAttribute("buildVO");
		if (buildData == null) {
			model.addAttribute("buildOrderVO", new BuildOrderVO());
			List<CompanyVO> companyList = companyService.findAll();
			model.addAttribute("companyList", companyList);
			model.addAttribute("msg", egovMessageSource.getMessage("citizen.fail"));
			return "/citizen/install/install_apply";
		}

		int oid = buildOrderService.insertBuildOrder(buildData);

		BuildMemoVO buildMemoVO = new BuildMemoVO(Integer.valueOf(oid), "order", null, "시민이 주문서를 생성하였습니다.");
		buildMemoService.save(buildMemoVO);

		RequestContextHolder.getRequestAttributes().removeAttribute("buildVO", RequestAttributes.SCOPE_SESSION);
		
		// get session infomation user login
		String userId = "";
		if(session.getAttribute("LoginVO") != null) {
			LoginVO loginVO =  (LoginVO) session.getAttribute("LoginVO");
			userId = loginVO.getUid();
		} else {
			redirect.addFlashAttribute("msg", egovMessageSource.getMessage("citizen.success"));
			return "redirect:/citizen/index.do";
		}
		// save session with build order when new register
		int checkExistBuildOrder = buildOrderService.checkExistBuildOrder(userId);
		session.setAttribute("checkExistBuildOrder", checkExistBuildOrder);
		return "redirect:/citizen/situation.do";
	}
	
	@RequestMapping("citizen/cancel/apply.do")
	public String cancelApply(HttpSession session,Model model) {
		Boolean isAuthenticated = EgovUserDetailsHelper.isAuthenticated();		
		if (!isAuthenticated) {
			return "redirect:/citizen/login.do";
		}
		BuildOrderVO buildData =(BuildOrderVO) session.getAttribute("buildVO");
		LoginVO        loginVO =(LoginVO) session.getAttribute("LoginVO");
		if (buildData==null || !(loginVO.getUid().equals(buildData.getUserPhone()))) {		
			model.addAttribute("buildOrderVO", new BuildOrderVO());
			List<CompanyVO> companyList = companyService.findAll();
			model.addAttribute("companyList", companyList);
			model.addAttribute("msg", egovMessageSource.getMessage("citizen.fail"));
			return "/citizen/install/install_apply";
		}		
		RequestContextHolder.getRequestAttributes().removeAttribute("buildVO", RequestAttributes.SCOPE_SESSION);
		return "redirect:/citizen/index.do";
	}
	
	@RequestMapping("citizen/installation.do")
	public String installation() {
		return "/citizen/install/installation_case";
	}

}
