package egovframework.let.citizen.service.impl;

import egovframework.let.citizen.service.BuildMemoService;
import egovframework.let.citizen.service.BuildMemoVO;
import egovframework.let.citizen.service.ContactService;
import egovframework.let.citizen.service.ContactVO;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("buildMemoService")
public class BuildMemoServiceImpl implements BuildMemoService {
	
	@Resource(name = "buildMemoDao")
	private BuildMemoDao buildMemoDao;

	@Override
	public void save(BuildMemoVO buildMemoVO) {
		buildMemoDao.Save(buildMemoVO);
		
	}
}
