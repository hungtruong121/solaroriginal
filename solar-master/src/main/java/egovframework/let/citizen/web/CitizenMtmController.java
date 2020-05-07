package egovframework.let.citizen.web;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import egovframework.com.cmm.LoginVO;
import egovframework.com.cmm.util.EgovUserDetailsHelper;
import egovframework.let.citizen.service.ContactService;
import egovframework.let.citizen.service.ContactVO;
import egovframework.let.validator.ContacValidatorMessage;
import egovframework.let.validator.ContactValidator;
import egovframework.let.validator.PhoneValidator;

@Controller
public class CitizenMtmController {
	
	@Autowired
	private ContactValidator contactValidator;
	@Autowired
	private PhoneValidator phoneValidator;
	
	@Resource(name = "contactService")
	private ContactService contactService;

	@RequestMapping("citizen/mtm.do")
	public String index(Model model,HttpServletRequest request) {
		Boolean isAuthenticated = EgovUserDetailsHelper.isAuthenticated();
		if (!isAuthenticated) {
			return "redirect:/citizen/login.do";
		}
		LoginVO loginVO =(LoginVO) request.getSession().getAttribute("LoginVO");
		List<ContactVO> data =contactService.findByUserId(Integer.valueOf(loginVO.getId()));
		model.addAttribute("contacts", data);
		return "citizen/mtm/mtm";
	}
	
	@RequestMapping(value="/citizen/mtm/proc.do",method = RequestMethod.POST)
	public String submit( HttpServletRequest request,RedirectAttributes attributes, Model  mm) {
		Boolean isAuthenticated = EgovUserDetailsHelper.isAuthenticated();
		if (!isAuthenticated) {
			return "redirect:/citizen/login.do";
		}
		LoginVO loginVO = (LoginVO) request.getSession().getAttribute("LoginVO");
		 String _fPhone =request.getParameter("tel"); 
		 String _fName=request.getParameter("name"); 
		 String _fTitle =request.getParameter("title");
		 String _fContent =request.getParameter("titleContent"); 
		 if (!ContacValidatorMessage.validMessage(request)) {
		  mm.addAttribute("message", "필수 입력란을 입력하십시오."); 
		  return "citizen/mtm/mtm";
		  }
		  ContactVO contactVO =new ContactVO();
		  if (!"".equals(_fPhone)) {
			 phoneValidator.validate(_fPhone); 
			 contactVO.setPhone(_fPhone);
		 }
		contactVO.setUid(Integer.valueOf(loginVO.getId()));
		 contactVO.setName(_fName); 
		 contactVO.setTitle(_fTitle);
		 contactVO.setContent(_fContent);
		 contactValidator.validate(contactVO);
		 contactService.save(contactVO);
		 attributes.addFlashAttribute("titleMessage", "1:1문의 전송 완료");
		 attributes.addFlashAttribute("message", "1:1문의가 성공적으로 전송 되었습니다. 빠르게 답변 드리도록 하겠습니다. 감사합니다.");
		 return "redirect:/citizen/mtm.do";
	}
	
	@RequestMapping("citizen/mtm-detail/{id}.do")
	public String mtmDetail(@PathVariable Integer id, Model model) {
		Boolean isAuthenticated = EgovUserDetailsHelper.isAuthenticated();
		if (!isAuthenticated) {
			return "redirect:/citizen/login.do";
		}
		ContactVO objContact = contactService.findById(id);
		model.addAttribute("objContact", objContact);
		return "citizen/mtm/mtm_detail";
	}
}
