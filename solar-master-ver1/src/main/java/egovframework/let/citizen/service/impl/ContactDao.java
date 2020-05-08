package egovframework.let.citizen.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.let.citizen.service.ContactVO;
import egovframework.rte.psl.dataaccess.EgovAbstractDAO;
@Repository("contactDao")
public class ContactDao  extends EgovAbstractDAO{
	public void Save(ContactVO contactVO) {
		insert("Contact.insert",contactVO);
	}
	public List<ContactVO> findAll(){
		return (List<ContactVO>) list("Contact.findAll");
	}
	
	public ContactVO findById(int id){
		return (ContactVO) select("Contact.findById", id);
	}
	public List<ContactVO> findByUserId(int userId){
		return (List<ContactVO>)  list("Contact.findByUserId", userId);
	}

}
