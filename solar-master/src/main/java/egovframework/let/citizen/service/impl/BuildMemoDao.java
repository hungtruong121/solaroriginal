package egovframework.let.citizen.service.impl;

import egovframework.let.citizen.service.BuildMemoVO;
import egovframework.let.citizen.service.ContactVO;
import egovframework.rte.psl.dataaccess.EgovAbstractDAO;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("buildMemoDao")
public class BuildMemoDao extends EgovAbstractDAO {
	public void Save(BuildMemoVO buildMemoVO) {
		insert("buildMemoDAO.insert", buildMemoVO);
	}
}
