package egovframework.let.citizen.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
import egovframework.let.citizen.service.BuildOrderVO;

@Repository("buildOrderDAO")
public class BuildOrderDAO extends EgovComAbstractDAO {

	public int insertBuildOrder(BuildOrderVO buildOrderVO)  throws Exception{
		return (int)insert("buildOrderDAO.insert", buildOrderVO);
	}
	public BuildOrderVO getById(int id)  throws Exception{
	 return   (BuildOrderVO)select("buildOrderDAO.findById", id);
	}
	public List<BuildOrderVO>  getByUserId(String id)  throws Exception{
		 return   (List<BuildOrderVO>) list("buildOrderDAO.findByUserId", id);
		}
	
	public int checkExistBuildOrder(String userId)  throws Exception{
		return (int) select("buildOrderDAO.checkExistBuildOrder", userId);
	}
}
