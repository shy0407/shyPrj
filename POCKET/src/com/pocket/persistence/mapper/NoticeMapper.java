package com.pocket.persistence.mapper;

import java.util.List;

import com.pocket.DTO.Criteria;
import com.pocket.DTO.NoticeDTO;
import com.pocket.DTO.userDTO;
import com.pocket.config.Mapper;


@Mapper("NoticeMapper")
public interface NoticeMapper {

	List<NoticeDTO> getNotice()throws Exception;
	void insertNotice(NoticeDTO noticeDTO)throws Exception;
	
	List<NoticeDTO> nlistPage(int page)throws Exception;
	List<NoticeDTO> nlistCriteria(Criteria cri) throws Exception;
	int ncountPaging(Criteria cri) throws Exception;
	int nlistCountCriteria(Criteria cri) throws Exception;

	void deleteNoticeList(NoticeDTO noticeDTO) throws Exception;

}
