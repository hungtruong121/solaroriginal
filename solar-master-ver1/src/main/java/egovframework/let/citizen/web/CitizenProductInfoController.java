package egovframework.let.citizen.web;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import egovframework.let.citizen.service.ProductInfoService;
import egovframework.let.citizen.service.ProductInfoVO;

@Controller
public class CitizenProductInfoController {
		@Resource(name="productInfoService")
		ProductInfoService productInfoService;
		
		@RequestMapping("citizen/product/info.do")
		public String info(Model model) {
			 
			List<ProductInfoVO> infos =new ArrayList<>();
			infos = productInfoService.findAll();
			model.addAttribute("infos", infos);
			return "citizen/product/product_info";
		}
		
		@RequestMapping("citizen/product/information.do")
		public String information() {
			return "citizen/product/product_information";
		}
}
