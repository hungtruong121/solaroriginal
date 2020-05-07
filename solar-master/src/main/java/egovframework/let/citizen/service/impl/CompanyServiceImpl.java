package egovframework.let.citizen.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.let.citizen.service.CompanyService;
import egovframework.let.citizen.service.CompanyVO;

@Service("companyService")
public class CompanyServiceImpl implements CompanyService {

    @Resource(name = "companyDao")
    private CompanyDao companyDao;

    @Override
    public List<CompanyVO> findAll() {
        return companyDao.findALl();
    }

	@Override
	public CompanyVO findById(int id) {
		return companyDao.findById(id);
	}

	@Override
	public List<CompanyVO> findOrderCompany(String id) {
		return companyDao.findOrderCompany(id);
	}
}
