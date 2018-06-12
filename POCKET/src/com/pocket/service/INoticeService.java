package com.pocket.service;

import java.util.List;

import com.pocket.DTO.Criteria;
import com.pocket.DTO.NoticeDTO;


public interface INoticeService {

	List<NoticeDTO> getNotice()throws Exception;
	void insertNotice(NoticeDTO noticeDTO)throws Exception;
	
	List<NoticeDTO> nlistPage(int page)throws Exception;
	List<NoticeDTO> nlistCriteria(Criteria cri) throws Exception;
	int ncountPaging(Criteria cri) throws Exception;
	int nlistCountCriteria(Criteria cri) throws Exception;

	void deleteNoticeList(NoticeDTO noticeDTO) throws Exception;
	
	NoticeDTO noticeDetail(String notice_no)throws Exception;
	void noticeModify(NoticeDTO noticeDTO)throws Exception;
	void noticeDelete(String notice_no)throws Exception;

}