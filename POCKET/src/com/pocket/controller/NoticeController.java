package com.pocket.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.pocket.DTO.Criteria;
import com.pocket.DTO.NoticeDTO;
import com.pocket.DTO.PageMaker;
import com.pocket.DTO.userDTO;
import com.pocket.service.INoticeService;
import com.pocket.util.CmmUtil;

	
@Controller

public class NoticeController {
	private Logger log = Logger.getLogger(this.getClass());
		

	@Resource(name = "NoticeService")
	private INoticeService noticeService;
	
	@RequestMapping(value="/admin/notice", method=RequestMethod.GET)
	public String noticeGet(HttpServletRequest request, HttpServletResponse response, 
			ModelMap model) throws Exception {
		
		log.info("noticeRead GET!!!!!!..............");
		return "/admin/notice";

	}
	
	@RequestMapping(value="/admin/notice", method=RequestMethod.POST)
	public String noticePost(HttpServletRequest request, HttpServletResponse response, 
			ModelMap model,NoticeDTO noticeDTO) throws Exception {
		
		log.info("noticeRead POST!!!!!!..............");
		noticeService.insertNotice(noticeDTO);
		
		return "/admin/notice";

	}
	
	@RequestMapping(value = "/admin/noticeList", method = RequestMethod.GET)
	  public void noticelistPage(@ModelAttribute("cri")Criteria cri, Model model) throws Exception {

			log.info(cri.toString());
			log.info(cri);
	  
	    model.addAttribute("list", noticeService.nlistCriteria(cri));
	    log.info(noticeService.nlistCriteria(cri));
	    PageMaker pageMaker = new PageMaker();
	    pageMaker.setCri(cri);
	   // pageMaker.setTotalCount(131);

	    pageMaker.setTotalCount(noticeService.nlistCountCriteria(cri));

	    model.addAttribute("pageMaker", pageMaker);
	  }
	
	
	//공지사항 목록 체크박스
		@RequestMapping(value="/admin/noticeCheckDel.do", method=RequestMethod.POST)
		public String noticeCheckDel(HttpServletRequest request, HttpServletResponse response,
						ModelMap model,RedirectAttributes rttr) throws Exception {
			
			log.info(this.getClass().getName() + "noticeCheckDel start!");
			
			String[] deleteSelect = request.getParameterValues("deleteSelect");
			String notice_no = CmmUtil.nvl(request.getParameter("notice_no"));
			
			log.info("user_no: "+ notice_no);
			
			NoticeDTO noticeDTO = new NoticeDTO();

			noticeDTO.setNoticeNo(notice_no);
			noticeDTO.setAllCheckSeq(deleteSelect);
			
			noticeService.deleteNoticeList(noticeDTO);
			
			log.info(this.getClass().getName() + ".noticeCheckDel end!");
			
			rttr.addFlashAttribute("msg", "success");		

			
			return "redirect:/admin/noticeList.do";
			
		}	

	

		
}