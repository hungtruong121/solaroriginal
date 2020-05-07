package egovframework.let.citizen.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.let.citizen.service.NoticeVO;
import egovframework.rte.psl.dataaccess.EgovAbstractDAO;
@Repository("noticeDao")
public class NoticeDao extends EgovAbstractDAO {
	
	@SuppressWarnings("unchecked")
	public List<NoticeVO> findAll(){
		return (List<NoticeVO>) list("notice.FindAll");
	}
	
	public NoticeVO findById(int id){
		return  (NoticeVO) select("notice.findById",id);
	}

}
