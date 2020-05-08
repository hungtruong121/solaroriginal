package egovframework.let.validator;

import org.springframework.stereotype.Component;
import org.springframework.util.Assert;
import org.springframework.util.StringUtils;

import egovframework.com.cmm.LoginVO;
import egovframework.let.citizen.service.ContactVO;

@Component("contactValidator")
public class ContactValidator extends AbstractThrowableValidator<ContactVO, IllegalArgumentException> {

	@Override
	public void validate(ContactVO input) throws IllegalArgumentException {	
		Assert.isTrue(!StringUtils.isEmpty(input.getName()));
		/* Assert.isTrue(!StringUtils.isEmpty(input.getEmail())); */
		Assert.isTrue(!StringUtils.isEmpty(input.getTitle()));
		Assert.isTrue(!StringUtils.isEmpty(input.getContent()));
	}

}
