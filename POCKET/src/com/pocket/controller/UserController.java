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
import com.pocket.util.AES256Util;
import com.pocket.util.CmmUtil;

	
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
			log.info("gdgdgd");
			rttr.addFlashAttribute("msg", "loginFail");
			returnURL="redirect:/indexNoSignUp.do";
		}
		return returnURL;

	}
	
	@RequestMapping(value="emailDuple", method=RequestMethod.POST)
	public @ResponseBody int emailDuple(HttpSession session, Model model,HttpServletRequest request, HttpServletResponse response) throws Exception {
		log.info("email Duple.........................................");
		 String email = request.getParameter("email");
		log.info(email);
		int result =userService.emailDuple(email);
		
		//String emaill = userDTO.getEmail();
		return result;

	}
	

	
	@RequestMapping(value="/admin/userList", method=RequestMethod.GET)
	public String all(HttpServletRequest request, HttpServletResponse response, 
					ModelMap model) throws Exception {
		List<userDTO> uList = userService.getUser();
		
		
		System.out.println("dgds"+uList.size());
	
		
		model.addAttribute("uList",uList);
		
		return "/admin/userList";
		
	}
	
	@RequestMapping(value="storeRegister", method=RequestMethod.GET)
	public String loginGet(HttpServletRequest request, HttpServletResponse response, 
			ModelMap model) throws Exception {
		
		log.info("storeRegister GET!!!!!!..............");
		return "/storeRegister";

	}
	
	@RequestMapping(value="detailChange", method=RequestMethod.GET)
	public String detailChange(HttpServletRequest request, HttpServletResponse response, 
			ModelMap model,HttpSession session) throws Exception {
		
		log.info("detailChange GET!!!!!!..............");
		userDTO uDTO=(userDTO)session.getAttribute("userDTO");
		
		String user_no =uDTO.getUser_no();
		//String user_no=(String) session.getAttribute(uDTO.getUser_no());
		log.info(user_no);

		
		userDTO userDTO = userService.getUserInfo(user_no);
		log.info(userDTO.getAge());
		model.addAttribute(userDTO);
		return "/detailChange";

	}
	
	@RequestMapping(value="detailChange", method=RequestMethod.POST)
	public String detailChangePost(HttpServletRequest request, HttpServletResponse response, 
			ModelMap model,HttpSession session,RedirectAttributes rttr) throws Exception {
		
		log.info("detailChange POST!!!!!!..............");
		
		userDTO uDTO=(userDTO)request.getSession().getAttribute("userDTO");
		
		String user_no =uDTO.getUser_no();
		//String user_no=(String) session.getAttribute(uDTO.getUser_no());
		log.info(user_no);
		
		String user_id = CmmUtil.nvl(request.getParameter("user_id"));
		String email = CmmUtil.nvl(request.getParameter("email"));
		String income = CmmUtil.nvl(request.getParameter("income"));
		String job = CmmUtil.nvl(request.getParameter("job"));
		String gender = CmmUtil.nvl(request.getParameter("gender"));
		String age = CmmUtil.nvl(request.getParameter("age"));
		
		userDTO userDTO =new userDTO();
		
		userDTO.setUser_no(user_no);
		userDTO.setUser_id(user_id);
		userDTO.setEmail(email);
		userDTO.setIncome(income);
		userDTO.setJob(job);
		userDTO.setGender(gender);
		userDTO.setAge(age);
		
		userService.updateUserInfo(userDTO);
		rttr.addFlashAttribute("msg", "success");		

		return "redirect:/detailChange.do";

	}
}