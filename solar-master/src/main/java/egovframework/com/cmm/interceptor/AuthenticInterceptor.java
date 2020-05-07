package egovframework.com.cmm.interceptor;

import egovframework.com.cmm.LoginVO;
import egovframework.com.cmm.util.EgovUserDetailsHelper;
import egovframework.let.citizen.service.BuildOrderService;
import egovframework.let.uat.uia.service.impl.LoginDAO;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.ModelAndViewDefiningException;
import org.springframework.web.servlet.mvc.WebContentInterceptor;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 인증여부 체크 인터셉터
 * @author 공통서비스 개발팀 서준식
 * @since 2011.07.01
 * @version 1.0
 * @see
 *
 * <pre>
 * << 개정이력(Modification Information) >>
 *
 *   수정일      수정자          수정내용
 *  -------    --------    ---------------------------
 *  2011.07.01  서준식          최초 생성
 *  2011.09.07  서준식          인증이 필요없는 URL을 패스하는 로직 추가
 *  2014.06.11  이기하          인증이 필요없는 URL을 패스하는 로직 삭제(xml로 대체)
 *  </pre>
 */

public class AuthenticInterceptor extends WebContentInterceptor {

	/** EgovLoginService */
	@Resource(name = "loginDAO")
	private LoginDAO connectionRepository;

	@Resource(name = "buildOrderService")
	private BuildOrderService buildOrderService;

	/** CookieGenerator */
	private final UserCookieGenerator cookieGenerator = new UserCookieGenerator();

	/**
	 * 세션에 계정정보(LoginVO)가 있는지 여부로 인증 여부를 체크한다.
	 * 계정정보(LoginVO)가 없다면, 로그인 페이지로 이동한다.
	 */
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws ServletException {
		if (!EgovUserDetailsHelper.isAuthenticated()) {
			rememberUser(request, response);
		}
		return true;
	}

	private void rememberUser(HttpServletRequest request, HttpServletResponse response) {
		String userId = cookieGenerator.readCookieValue(request);
		if (userId != null) {
			LoginVO connectionUser = this.getRememberUser(userId);
			if (connectionUser == null) {
				cookieGenerator.removeCookie(response);
				return;
			}
			// save infomation build order when login
			int checkExistBuildOrder = this.getBuildOrderNo(connectionUser.getUid());
			request.getSession().setAttribute("checkExistBuildOrder", checkExistBuildOrder);
			request.getSession().setAttribute("LoginVO", connectionUser);
		}
	}

	private LoginVO getRememberUser(String userId) {
		try {
			return connectionRepository.connectRepository(userId);
		} catch (Exception e) {
			return null;
		}
	}

	private int getBuildOrderNo(String userId) {
		try {
			return buildOrderService.checkExistBuildOrder(userId);
		} catch (Exception e) {
			return 0;
		}
	}
}
