package egovframework.let.citizen.service;

import java.util.List;

public interface CompanyService {
	List<CompanyVO> findAll();
	CompanyVO findById(int id);
	List<CompanyVO> findOrderCompany(String id);
}
