package egovframework.let.citizen.web;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.mobile.device.Device;
import org.springframework.mobile.device.DeviceUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.FlashMap;
import org.springframework.web.servlet.FlashMapManager;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.support.RequestContextUtils;

import egovframework.com.cmm.EgovMessageSource;
import egovframework.com.cmm.LoginVO;
import egovframework.com.cmm.util.EgovUserDetailsHelper;
import egovframework.com.cmm.util.FileUtil;
import egovframework.let.citizen.service.AsService;
import egovframework.let.citizen.service.BuildAsVO;
import egovframework.let.citizen.service.BuildOrderService;
import egovframework.let.citizen.service.BuildOrderVO;
import egovframework.let.citizen.service.CompanyService;

@Controller
public class CitizenSituationController {

	@Autowired
	@Qualifier("companyService")
	private CompanyService companyService;

	@Autowired
	@Qualifier("buildOrderService")
	private BuildOrderService buildOrderService;

	@Autowired
	@Qualifier("asService")
	private AsService asService;

	@Resource(name = "egovMessageSource")
	private EgovMessageSource egovMessageSource;

	@RequestMapping("citizen/situation.do")
	public String situation(Model model, HttpServletRequest request) throws Exception {
		Boolean isAuthenticated = EgovUserDetailsHelper.isAuthenticated();
		if (!isAuthenticated) {
			return "redirect:/citizen/login.do";
		}
		// send list situation as
		Device currentDevice = DeviceUtils.getCurrentDevice(request);
		if (currentDevice.isMobile() || currentDevice.isTablet()) {
			LoginVO loginVO = (LoginVO) request.getSession().getAttribute("LoginVO");
			List<BuildAsVO> vo = asService.findByUserId(loginVO.getUid());
			model.addAttribute("buildAsDatas", vo);
		}
		LoginVO loginVO = (LoginVO) request.getSession().getAttribute("LoginVO");
		List<BuildOrderVO> orderVO = buildOrderService.findByByUserId(loginVO.getUid());
		model.addAttribute("buildData", orderVO);
		return "citizen/situation/situation";
	}

	@RequestMapping("citizen/situationAs.do")
	public String situationAs(Model model, HttpServletRequest request) throws Exception {
		Boolean isAuthenticated = EgovUserDetailsHelper.isAuthenticated();
		if (!isAuthenticated) {
			return "redirect:/citizen/login.do";
		}
		LoginVO loginVO = (LoginVO) request.getSession().getAttribute("LoginVO");
		List<BuildAsVO> vo = asService.findByUserId(loginVO.getUid());
		List<BuildOrderVO> orderVO = buildOrderService.findByByUserId(loginVO.getUid());
		model.addAttribute("buildData", orderVO);
		model.addAttribute("buildAsDatas", vo);
		return "citizen/situation/situation";
	}

	@RequestMapping("citizen/situationAsDetail/{buildOrderId}.do")
	public String situationAsDetail(@PathVariable Integer buildOrderId, Model model, HttpServletRequest request)
			throws Exception {
		Boolean isAuthenticated = EgovUserDetailsHelper.isAuthenticated();
		if (!isAuthenticated) {
			return "redirect:/citizen/login.do";
		}
		LoginVO loginVO = (LoginVO) request.getSession().getAttribute("LoginVO");
		List<BuildAsVO> vo = asService.findByUserId(loginVO.getUid());
		BuildAsVO asVO = new BuildAsVO();
		asVO.setUserId(loginVO.getId());
		asVO.setBuildOrderAsId(buildOrderId);
		BuildAsVO buildASDetail = asService.findByUserIdAndBuildOrderId(asVO);
		List<BuildOrderVO> orderVO = buildOrderService.findByByUserId(loginVO.getUid());
		model.addAttribute("buildData", orderVO);
		model.addAttribute("buildAsDatas", vo);
		model.addAttribute("buildASDetail", buildASDetail);
		return "citizen/situation/situation_as_detail";
	}

	@RequestMapping("citizen/situationDetail.do")
	public String situationDetail(@RequestParam(value = "order_id", required = true) int id, Model model,
			HttpServletRequest request) throws Exception {
		Boolean isAuthenticated = EgovUserDetailsHelper.isAuthenticated();
		if (!isAuthenticated) {
			return "redirect:/citizen/login.do";
		}
		LoginVO loginVO = (LoginVO) request.getSession().getAttribute("LoginVO");
		BuildOrderVO vo = buildOrderService.findById(id);
		List<BuildAsVO> asVos = asService.findByUserId(loginVO.getUid());
		if (vo == null || !loginVO.getUid().equals(vo.getUserPhone())) {
			return "redirect:/citizen/login.do";
		}
		model.addAttribute("builinfo", vo);
		model.addAttribute("buildAsDatas", asVos);
		return "citizen/situation/situation_detail";
	}

	@RequestMapping(value = {"/citizen/{buildOrderId}/{fileName}/downloadFile.do"}, method = RequestMethod.GET)
	public void downloadFile(Model model, HttpServletRequest request, HttpServletResponse response,
			@PathVariable( "fileName") String fileName, @PathVariable("buildOrderId") Integer buildOrderId,
			RedirectAttributes ra) throws IOException {

		Boolean isAuthenticated = EgovUserDetailsHelper.isAuthenticated();
		if (!isAuthenticated) {
			response.sendRedirect(request.getContextPath() + "/citizen/login.do");
		}

		String filePath = "/data" + File.separator + "pdf" + File.separator
					+ String.valueOf(buildOrderId) + File.separator + fileName;
		if (!new File(filePath).exists()) {
			String urlFail = request.getContextPath() + "/citizen/situation.do";
			FlashMap outputFlashMap = RequestContextUtils.getOutputFlashMap(request);
            outputFlashMap.put("msg", egovMessageSource.getMessage("citizen.fail"));
            FlashMapManager flashMapManager = RequestContextUtils.getFlashMapManager(request);
            flashMapManager.saveOutputFlashMap(outputFlashMap, request, response);
			response.sendRedirect(urlFail);
			return;
		}
		
		FileUtil.downloadFile(response, filePath, fileName);
	}
}
