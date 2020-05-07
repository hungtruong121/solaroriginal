package egovframework.let.citizen.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
import egovframework.let.citizen.service.BuildAsVO;
import egovframework.let.citizen.service.RegisterAsVO;

@Repository("asDao")
public class AsDAO extends EgovComAbstractDAO {

	public int insertAs(RegisterAsVO registerAsVO) throws Exception {
		return (int) insert("asDao.insertAs", registerAsVO);
	}

	public List<BuildAsVO> getByUserId(String id) throws Exception {
		return (List<BuildAsVO>) list("asDao.findByUserId", id);
	}

	public BuildAsVO findByUserIdAndBuildOrderId(BuildAsVO buildAsVO) throws Exception {
		return (BuildAsVO) select("asDao.findByUserIdAndBuildOrderId", buildAsVO);
	}
}
