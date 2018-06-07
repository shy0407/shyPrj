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

import com.pocket.DTO.Criteria;
import com.pocket.DTO.PageMaker;
import com.pocket.service.IStoreService;

	
@Controller

public class StoreController {
	private Logger log = Logger.getLogger(this.getClass());
		

	@Resource(name = "StoreService")
	private IStoreService storeService;

	@RequestMapping(value="/admin/storeRegister", method=RequestMethod.GET)
	public String loginGet(HttpServletRequest request, HttpServletResponse response, 
			ModelMap model) throws Exception {
		
		log.info("/admin/storeRegister!!!!!..............");
		return "/admin/storeRegister";

	}
	

	@RequestMapping(value="/admin/storeList", method=RequestMethod.GET)
	public String storeList(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws Exception {
		
		log.info("/admin/storeList!!!!!..............");
		
		
	    
	  
		
		/*List<StoreDTO> sList= storeService.getStoreList();
		
		model.addAttribute(sList);*/
		
		return "/admin/storeList";

	}
	
	@RequestMapping(value = "/admin/listCri", method = RequestMethod.GET)
	  public void listAll(Criteria cri, Model model) throws Exception {

	    log.info("show list Page with Criteria......................");

	    model.addAttribute("list", storeService.listCriteria(cri));
	  }

	@RequestMapping(value = "/admin/listPage", method = RequestMethod.GET)
	  public void listPage(@ModelAttribute("cri")Criteria cri, Model model) throws Exception {

			log.info(cri.toString());
			log.info(cri);
	    model.addAttribute("list", storeService.listCriteria(cri));
	    log.info(storeService.listCriteria(cri));
	    PageMaker pageMaker = new PageMaker();
	    pageMaker.setCri(cri);
	   // pageMaker.setTotalCount(131);

	    pageMaker.setTotalCount(storeService.listCountCriteria(cri));

	    model.addAttribute("pageMaker", pageMaker);
	  }


	

	
	
	
}