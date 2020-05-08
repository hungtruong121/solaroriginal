package egovframework.let.citizen.service;

import java.util.List;

public interface NoticeService {
	public List<NoticeVO> findAll();
	
	public NoticeVO findById(int id);

}
