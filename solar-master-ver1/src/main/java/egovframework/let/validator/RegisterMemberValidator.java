package egovframework.let.validator;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;

/**
 * @author itphutran
 */

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import egovframework.let.citizen.service.RegisterMemberVO;
import egovframework.let.utl.fcc.service.EgovStringUtil;

@Component("registerMemberValidator")
public class RegisterMemberValidator implements Validator {

	@Autowired
	@Qualifier("userIdValidator")
	private UserIdValidator userIdValidator;	

	@Autowired
	@Qualifier("passwordValidator")
	private PasswordValidator passwordValidator;
	public boolean supports(Class<?> clazz) {
		return RegisterMemberVO.class.isAssignableFrom(clazz);
	}

	public void validate(Object target, Errors errors) {
		userIdValidator.validate(target, errors);
		passwordValidator.validate(target, errors);
		RegisterMemberVO registerMember = (RegisterMemberVO) target;
		if(EgovStringUtil.isEmptyOrWhitespace(registerMember.getName())){ 
			errors.rejectValue("name", "registerMember.required");
		}
		if(EgovStringUtil.isEmptyOrWhitespace(registerMember.getNumber())){ 
			errors.rejectValue("number", "registerMember.required");
		}
		
	}
	
}
