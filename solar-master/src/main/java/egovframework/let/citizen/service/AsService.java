package egovframework.let.citizen.service;

import java.util.List;

public interface AsService {
	int insertAs(RegisterAsVO registerAsVO) throws Exception;
	List<BuildAsVO> findByUserId(String id)throws Exception;
	BuildAsVO findByUserIdAndBuildOrderId(BuildAsVO buildAsVO)throws Exception;
}
