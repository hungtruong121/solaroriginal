package egovframework.let.citizen.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.let.citizen.service.ContactService;
import egovframework.let.citizen.service.ContactVO;

@Service("contactService")
public class ContactServiceImpl implements ContactService {
	
	@Resource(name = "contactDao")
	private ContactDao contactDao;

	@Override
	public void save(ContactVO contactVO) {
		contactDao.Save(contactVO);
		
	}

	@Override
	public List<ContactVO> findAll() {
		return contactDao.findAll();
	}

	@Override
	public ContactVO findById(int id) {
		return contactDao.findById(id);
	}

	@Override
	public List<ContactVO> findByUserId(int uid) {
		return contactDao.findByUserId(uid);
	}
}
