package egovframework.let.validator;

import egovframework.com.cmm.LoginVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;
import org.springframework.util.Assert;
import org.springframework.util.StringUtils;

/**
 * @author pho.vo
 */
@Component("nonMemberValidator")
public class NonMemberValidator extends AbstractThrowableValidator<LoginVO, IllegalArgumentException> {

	@Autowired
	@Qualifier("emailValidator")
	private EmailValidator emailValidator;
	
	@Override
	public void validate(LoginVO input) throws IllegalArgumentException {
		Assert.notNull(input, "invalid NonMemberLoginVo@" + input);
		Assert.isTrue(!StringUtils.isEmpty(input.getName()));
//		Assert.isTrue(!StringUtils.isEmpty(input.getUserPhone()));
	}
}
