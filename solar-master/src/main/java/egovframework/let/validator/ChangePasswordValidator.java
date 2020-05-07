package egovframework.let.validator;

import java.util.regex.Pattern;

import org.springframework.stereotype.Component;
import org.springframework.util.Assert;
import org.springframework.util.StringUtils;

import egovframework.com.cmm.ChangePassVO;

/**
 * @author pho.vo
 */
@Component("changePasswordValidator")
public class ChangePasswordValidator extends AbstractThrowableValidator<ChangePassVO, IllegalArgumentException> {
	public static final String regexPassword = "^[A-Za-z0-9\\\\\\!\\@\\#\\$\\%\\^\\&\\*\\(\\)\\_\\-\\=\\+\\|]{8,20}$";
	
	@Override
	public void validate(ChangePassVO input) throws IllegalArgumentException {
		Assert.notNull(input, "invalid ChangePassVo@" + input);
		Assert.isTrue(!StringUtils.isEmpty(input.getUid()));
		Assert.isTrue(!StringUtils.isEmpty(input.getToken()));
		Assert.isTrue(!StringUtils.isEmpty(input.getNewPassword()));
		Assert.isTrue(!StringUtils.isEmpty(input.getCheckPassword()));

		Assert.isTrue(input.getNewPassword().equals(input.getCheckPassword()));
		Assert.isTrue(Pattern.matches(regexPassword, input.getNewPassword()));
		
	}
}
