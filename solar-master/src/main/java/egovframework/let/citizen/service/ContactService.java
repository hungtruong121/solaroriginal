package egovframework.let.citizen.service;

import java.util.List;

public interface ContactService {
	public void save(ContactVO contactVO);
	public List<ContactVO> findAll();
	public ContactVO findById(int id);
	public List<ContactVO> findByUserId(int uid);
}
