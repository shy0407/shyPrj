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

import com.pocket.DTO.LoginDTO;
import com.pocket.DTO.userDTO;
import com.pocket.service.IUserService;

	
@Controller

public class UserController {
	private Logger log = Logger.getLogger(this.getClass());
		

	@Resource(name = "UserService")
	private IUserService userService;
/*
	@RequestMapping(value="login", method=RequestMethod.GET)
	public String loginGet(HttpServletRequest request, HttpServletResponse response, 
			ModelMap model) throws Exception {
		
		log.info("login GET!!!!!!..............");
		return "/indexNoSignUp";

	}*/
	
	@RequestMapping(value="loginPost", method=RequestMethod.GET)
	public String loginPost(LoginDTO loginDTO,HttpSession session, Model model,RedirectAttributes rttr) throws Exception {
		 String returnURL = "";

		userDTO userDTO =userService.login(loginDTO);
		if(userDTO!=null) {
			if(userDTO.getUser_auth().equals("Y")) {
				session.setAttribute("userDTO", userDTO);
				
				returnURL="redirect:/index.do";
				
			}
			else {
				//rttr.addFlashAttribute("auth", "fail");
				log.info("인증안함!~!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
				returnURL="redirect:/indexNoSignUp.do";
			}
			
		}else {
			//rttr.addFlashAttribute("join", "fail");
			returnURL="redirect:/indexNoSignUp.do";
		}
		return returnURL;

	}
	
	@RequestMapping(value="emailDuple", method=RequestMethod.POST)
	public @ResponseBody String emailDuple(@RequestParam("email")String email,HttpSession session, Model model) throws Exception {
		log.info("email Duple.........................................");
		userDTO userDTO =userService.emailDuple(email);
		String emaill = userDTO.getEmail();
		return emaill;

	}
	

	
	@RequestMapping(value="/admin/userList", method=RequestMethod.GET)
	public String all(HttpServletRequest request, HttpServletResponse response, 
					ModelMap model) throws Exception {
		List<userDTO> uList = userService.getUser();
		
		
		System.out.println("dgds"+uList.size());
	
		
		model.addAttribute("uList",uList);
		
		return "/admin/userList";
		
	}
	
	
}