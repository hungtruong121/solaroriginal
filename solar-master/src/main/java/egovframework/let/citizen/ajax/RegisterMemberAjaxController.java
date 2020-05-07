package egovframework.let.citizen.ajax;

import java.util.HashMap;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import egovframework.com.cmm.EgovMessageSource;
import egovframework.com.cmm.TokenVO;
import egovframework.let.citizen.service.MessageService;
import egovframework.let.uat.token.service.TokenService;
import egovframework.let.uat.uia.service.impl.LoginDAO;
import egovframework.let.utl.fcc.service.CitizenPhoneUtil;
import egovframework.let.utl.fcc.service.EgovNumberUtil;
import egovframework.let.validator.PhoneValidator;

@Controller
public class RegisterMemberAjaxController {

	@Resource(name = "messageService")
	MessageService messageService;

	@Resource(name = "egovMessageSource")
	EgovMessageSource egovMessageSource;

	@Resource(name = "tokenService")
	private TokenService tokenService;

	@Resource(name = "loginDAO")
	private LoginDAO loginDAO;

	@Autowired
	@Qualifier("phoneValidator")
	private PhoneValidator phoneValidator;

	@RequestMapping(value = "citizen/ajax/code-number-phone.do", method = RequestMethod.POST)
	@ResponseBody()
	public HashMap<String, String> getCodeNumberByPhone(Model model, @RequestParam("phone") String phone) {
		HashMap<String, String> rs = new HashMap<String, String>();
		rs.put("title", egovMessageSource.getMessage("success.citizen.title"));
		rs.put("message", egovMessageSource.getMessage("success.citizen.verify"));

		phoneValidator.validate(phone);
		phone = CitizenPhoneUtil.convertToPhoneDash(phone);
		
		boolean valid = loginDAO.checkValid(phone);

		// Phone number validation exists
		if (valid) {
			rs.put("title", egovMessageSource.getMessage("fail.citizen.title"));
			rs.put("message", egovMessageSource.getMessage("fail.citizen.alreadyexistsphone"));
			return rs;
		}
		TokenVO tokenVO = new TokenVO();
		tokenVO.setPhone(phone);

		String verifyCode = EgovNumberUtil.generateToken();
		tokenVO.setNumber(verifyCode);
		String status = messageService.sendSMS(phone, verifyCode);
		if ("success".equals(status)) {
			try {
				tokenService.insertToken(tokenVO);
			} catch (Exception e) {
				rs.put("title", egovMessageSource.getMessage("fail.citizen.title"));
				rs.put("message", egovMessageSource.getMessage("fail.citizen.verify"));
			}
		} else {
			rs.put("title", egovMessageSource.getMessage("fail.citizen.title"));
			rs.put("message", egovMessageSource.getMessage("fail.citizen.verify"));
		}
		return rs;

	}
}
