package com.pocket.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.pocket.DTO.Criteria;
import com.pocket.DTO.NoticeDTO;
import com.pocket.DTO.userDTO;
import com.pocket.persistence.mapper.NoticeMapper;
import com.pocket.service.INoticeService;

@Service("NoticeService")
public class NoticeService implements INoticeService {
		
	@Resource(name="NoticeMapper")
	private NoticeMapper noticeMapper;

	@Override
	public List<NoticeDTO> getNotice() throws Exception {
		return noticeMapper.getNotice();
	}

	@Override
	public void insertNotice(NoticeDTO noticeDTO) throws Exception {
		 noticeMapper.insertNotice(noticeDTO);
		
	}

	@Override
	public List<NoticeDTO> nlistPage(int page) throws Exception {
		if(page<=0) {
			page=1;
		}
		page =(page-1)*10;
		return noticeMapper.nlistPage(page);
	}

	@Override
	public List<NoticeDTO> nlistCriteria(Criteria cri) throws Exception {
		return noticeMapper.nlistCriteria(cri);
	}

	@Override
	public int ncountPaging(Criteria cri) throws Exception {
		return noticeMapper.ncountPaging(cri);
	}

	@Override
	public int nlistCountCriteria(Criteria cri) throws Exception {
		return noticeMapper.ncountPaging(cri);
	}
	
	
	@Override
	public void deleteNoticeList(NoticeDTO noticeDTO) throws Exception {
		noticeMapper.deleteNoticeList(noticeDTO);
	}
		
}