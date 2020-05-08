package egovframework.let.citizen.web;

import java.util.Arrays;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import egovframework.com.cmm.util.EgovUserDetailsHelper;
import egovframework.let.citizen.service.NoticeService;
import egovframework.let.citizen.service.NoticeVO;

@Controller
public class CitizenNoticeController {
	

	@Resource(name = "noticeService")
    private	NoticeService noticeService;
		
	@RequestMapping("citizen/notice.do")
	public String index(Model model) {
		List<NoticeVO> noticeAll=noticeService.findAll();
		
		List<CateEnum> noticeType =Arrays.asList(CateEnum.values());	
		model.addAttribute("nEnum", noticeType);
		model.addAttribute("data", noticeAll);
		
		return "citizen/notice/notice";
	
	}
	
	@RequestMapping("citizen/noticeDetail/{id}.do")
	public String noticeDetail(@PathVariable Integer id, Model model) {
		NoticeVO objNotice = noticeService.findById(id);
		model.addAttribute("objNotice", objNotice);
		return "citizen/notice/notice_detail";
	
	}
	
		// db design not happy
	public   enum CateEnum{		
		ALL(-1),NOTICE(0),CHECK(1)	;	
		
		private int type;
		CateEnum(int type){
			this.type =type;
		}
		public int type() {
			return type;
		}
	}
	
}

