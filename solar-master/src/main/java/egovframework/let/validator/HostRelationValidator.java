package egovframework.let.validator;

import org.springframework.stereotype.Component;

/**
 * @author itphutran
 */

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import egovframework.let.citizen.service.BuildOrderVO;
import egovframework.let.citizen.service.RegisterAsVO;

@Component("hostRelationValidator")
public class HostRelationValidator implements Validator {

	public boolean supports(Class<?> clazz) {
		return RegisterAsVO.class.isAssignableFrom(clazz);
	}

	public void validate(Object target, Errors errors) {
		BuildOrderVO buildOrderVO = (BuildOrderVO) target;
		if(!"".equals(buildOrderVO.getHostRelation())) {
			if(buildOrderVO.getHostRelation().length() > 5) {
				errors.rejectValue("hostRelation", "buildOrderVO.birthday.hostRelation",null, null);
			}
		}
	}
}
