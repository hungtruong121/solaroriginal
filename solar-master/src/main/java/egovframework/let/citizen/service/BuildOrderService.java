package egovframework.let.citizen.service;

import java.util.List;

public interface BuildOrderService {
	BuildOrderVO findById(int id)throws Exception;
	List<BuildOrderVO> findByByUserId(String uid)throws Exception;	
	int insertBuildOrder(BuildOrderVO buildOrderVO) throws Exception;
	int checkExistBuildOrder(String userId) throws Exception;
}
