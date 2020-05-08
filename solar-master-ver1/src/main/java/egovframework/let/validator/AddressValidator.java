package egovframework.let.validator;

import org.springframework.stereotype.Component;

/**
 * @author itphutran
 */

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import egovframework.let.citizen.service.BuildOrderVO;

@Component("addressValidator")
public class AddressValidator implements Validator {

	public boolean supports(Class<?> clazz) {
		return BuildOrderVO.class.isAssignableFrom(clazz);
	}

	public void validate(Object target, Errors errors) {

		BuildOrderVO buildOrderVO = (BuildOrderVO) target;
		if(buildOrderVO.getAptType() == 1 || buildOrderVO.getAptType() == 2 || buildOrderVO.getAptType() == 3) {
			/*
			if("".equals(buildOrderVO.getAddr4())) {
				errors.rejectValue("addr4", "buildOrderVO.addr4", null, null);
			} 
			*/
		} else if(buildOrderVO.getAptType() == 5 || buildOrderVO.getAptType() == 5 || buildOrderVO.getAptType() == 0) {
			if("".equals(buildOrderVO.getAddr5())) {
				errors.rejectValue("addr5", "buildOrderVO.addr5", null, null);
			} 
		}
		
	}
}
