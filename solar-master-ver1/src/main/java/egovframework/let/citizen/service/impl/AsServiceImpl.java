package egovframework.let.citizen.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import egovframework.let.citizen.service.AsService;
import egovframework.let.citizen.service.BuildAsVO;
import egovframework.let.citizen.service.RegisterAsVO;


@Service("asService")
public class AsServiceImpl implements AsService {
	
	@Autowired
	@Qualifier("asDao")
	private AsDAO asDAO;
	@Autowired
	@Qualifier("companyDao")
	private CompanyDao companyDao;

	@Override
	public int insertAs(RegisterAsVO registerAsVO) throws Exception {
		registerAsVO.setBuildCompanyId(companyDao.findByStatus(registerAsVO.getBuildCompanyId()).toString());
		return asDAO.insertAs(registerAsVO);
	}
	@Override
	public List<BuildAsVO> findByUserId(String id) throws Exception {
		return asDAO.getByUserId(id);
	}
	@Override
	public BuildAsVO findByUserIdAndBuildOrderId(BuildAsVO buildAsVO) throws Exception {
		return asDAO.findByUserIdAndBuildOrderId(buildAsVO);
	}
}
