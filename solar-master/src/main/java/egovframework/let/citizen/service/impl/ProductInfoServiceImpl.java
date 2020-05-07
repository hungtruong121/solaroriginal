package egovframework.let.citizen.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.let.citizen.service.ProductInfoService;
import egovframework.let.citizen.service.ProductInfoVO;

@Service("productInfoService")
public class ProductInfoServiceImpl implements ProductInfoService {
	
	@Resource(name = "productInfoDao")
	ProductInfoDAO productInfoDao;

	@Override
	public List<ProductInfoVO> findAll() {
		return productInfoDao.findAll();
	}
}
