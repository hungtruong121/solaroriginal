package egovframework.let.citizen.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.let.citizen.service.CompanyVO;
import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

@Repository("companyDao")
public class CompanyDao extends EgovAbstractDAO {
	
	public List<CompanyVO> findALl(){		
		return (List<CompanyVO>) list("company.findALL");
	}
	public CompanyVO findById(int id) {
		return (CompanyVO) select("company.findById", id);
	}
	public List<CompanyVO> findOrderCompany(String id){	
		return (List<CompanyVO>) list("company.findOrderCompany", id);
	}
	
	public Integer findByStatus(String id) {
		return (Integer) select("company.findByStatus", id);
	}
}
