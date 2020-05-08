package egovframework.let.citizen.web;

import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import egovframework.com.cmm.LoginVO;
import egovframework.let.citizen.service.BuildOrderService;
import egovframework.let.citizen.service.BuildOrderVO;

@Controller
public class CitizenIndexController {
	
	@Autowired
	@Qualifier("buildOrderService")
	private BuildOrderService buildOrderService;
	
	@Autowired
	private ServletContext context;
	
	private List<BuildOrderVO> buildOrderListByUserId = null;
	
	@RequestMapping("citizen/index.do")
	public String index(HttpSession session) throws Exception {
		String userId = "";
		if(session.getAttribute("LoginVO") != null) {
			LoginVO loginVO =  (LoginVO) session.getAttribute("LoginVO");
			userId = loginVO.getUid();
		}
		// save infomation build order when login
		int checkExistBuildOrder = buildOrderService.checkExistBuildOrder(userId);
		session.setAttribute("checkExistBuildOrder", checkExistBuildOrder);
		return "citizen/index/index";
	}
}
