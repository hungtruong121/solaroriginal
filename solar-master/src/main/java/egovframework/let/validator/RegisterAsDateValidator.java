package egovframework.let.validator;

import java.text.ParseException;

import org.springframework.stereotype.Component;

/**
 * @author itphutran
 */

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import egovframework.com.cmm.DateUtil;
import egovframework.let.citizen.service.RegisterAsVO;

@Component("registerAsDateValidator")
public class RegisterAsDateValidator implements Validator {

	public boolean supports(Class<?> clazz) {
		return RegisterAsVO.class.isAssignableFrom(clazz);
	}

	public void validate(Object target, Errors errors) {
		RegisterAsVO registerAsVO = (RegisterAsVO) target;
		try {
			if (!DateUtil.isValidDate(registerAsVO.getAsDate().toString())) {
				errors.rejectValue("asDate", "registerAsVO.asDate", null, null);
			}
		} catch (ParseException e) {
			e.printStackTrace();
		}
	}
}
