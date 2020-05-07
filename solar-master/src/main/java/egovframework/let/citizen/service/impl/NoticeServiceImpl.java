package egovframework.let.citizen.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.let.citizen.service.NoticeService;
import egovframework.let.citizen.service.NoticeVO;

@Service("noticeService")
public class NoticeServiceImpl implements NoticeService {
	
	@Resource(name = "noticeDao")
	NoticeDao noticeDao;

	@Override
	public List<NoticeVO> findAll() {
		return noticeDao.findAll();
	}

	@Override
	public NoticeVO findById(int id) {
		return noticeDao.findById(id);
	}
}
