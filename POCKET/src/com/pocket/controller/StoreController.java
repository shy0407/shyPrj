package com.pocket.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.pocket.DTO.StoreDTO;
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
	public String storeList(HttpServletRequest request, HttpServletResponse response, 
			ModelMap model) throws Exception {
		
		log.info("/admin/storeList!!!!!..............");
		
		List<StoreDTO> sList= storeService.getStoreList();
		
		model.addAttribute(sList);
		
		return "/admin/storeList";

	}
	
	
	
	
	
	
}