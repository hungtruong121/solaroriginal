package egovframework.let.citizen.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;
import egovframework.let.citizen.service.ProductInfoVO;
import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

@Repository("productInfoDao")
public class ProductInfoDAO extends EgovAbstractDAO{
	public List<ProductInfoVO> findAll(){
		return (List<ProductInfoVO>) list("product.FindAll");
	}
}
