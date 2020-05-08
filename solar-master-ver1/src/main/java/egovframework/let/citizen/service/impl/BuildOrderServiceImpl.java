package egovframework.let.citizen.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import egovframework.let.citizen.service.BuildOrderService;
import egovframework.let.citizen.service.BuildOrderVO;


@Service("buildOrderService")
public class BuildOrderServiceImpl implements BuildOrderService {
	
	@Autowired
	@Qualifier("buildOrderDAO")
	private BuildOrderDAO buildOrderDAO;
	
	@Override
	public int insertBuildOrder(BuildOrderVO buildOrderVO) throws Exception {
		return buildOrderDAO.insertBuildOrder(buildOrderVO);
	}

	@Override
	public BuildOrderVO findById(int id) throws Exception {
		return buildOrderDAO.getById(id);
	}

	@Override
	public List<BuildOrderVO> findByByUserId(String id) throws Exception {
		return buildOrderDAO.getByUserId(id);
	}

	@Override
	public int checkExistBuildOrder(String userId) throws Exception {
		return buildOrderDAO.checkExistBuildOrder(userId);
	}

}
