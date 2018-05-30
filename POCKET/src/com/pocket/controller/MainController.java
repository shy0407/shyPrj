package com.pocket.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.pocket.DTO.userDTO;
import com.pocket.service.IMainService;
import com.pocket.service.IUserService;
import com.pocket.util.AES256Util;
import com.pocket.util.CmmUtil;

	
@Controller
public class MainController {
	private Logger log = Logger.getLogger(this.getClass());
		
	@Resource(name = "MainService")
	private IMainService mainService;
	
	@Resource(name = "UserService")
	private IUserService userService;
	
	
	
	@Autowired
	private JavaMailSender mailSender;
	
	
	@RequestMapping(value="index", method=RequestMethod.GET)
	public String main(HttpServletRequest request, HttpServletResponse response, 
					ModelMap model) throws Exception {

		log.info("index");
		return "/index";
		
	}
	
	@RequestMapping(value="indexNoSignUp", method=RequestMethod.GET)
	public String indexNoSignUp(HttpServletRequest request, HttpServletResponse response, 
					ModelMap model) throws Exception {
		
		return "/indexNoSignUp";
		
	}
	
	
	
	@RequestMapping(value="join", method =RequestMethod.POST)
	public String insertPost(HttpServletRequest request, HttpServletResponse response, 
					RedirectAttributes rttr) throws Exception {
		log.info("fasgsdgsdgsdgsd get.....");
		String user_id = CmmUtil.nvl(AES256Util.strEncode(request.getParameter("user_id")));
		String email = CmmUtil.nvl(request.getParameter("email"));
		String password = CmmUtil.nvl(request.getParameter("password"));
		String income = CmmUtil.nvl(request.getParameter("income"));
		String job = CmmUtil.nvl(request.getParameter("job"));
		String gender = CmmUtil.nvl(request.getParameter("gender"));
		String age = CmmUtil.nvl(request.getParameter("age"));
		
		userDTO userDTO =new userDTO();
		
		userDTO.setUser_id(user_id);
		userDTO.setEmail(email);
		userDTO.setPassword(password);
		userDTO.setIncome(income);
		userDTO.setJob(job);
		userDTO.setGender(gender);
		userDTO.setAge(age);
		
		userService.insertJoin(userDTO);
		
		//인증을 위한 키생성 
		String key=userService.getUserNo(email);
		
		
		
		System.out.println("key 일까요? ?: " +key);
		log.info("여기야 병신아" + key); 
		log.info("여기야 찐따야" + userDTO.getEmail());
		String setfrom = "project.booknight@gmail.com";					//송신자 메일 주소
		String tomail = userDTO.getEmail();					        //수신자 메일 주소
		String title = "회원 가입 이메일 인증";		//메일 제목
		StringBuffer contents = new StringBuffer();
		
		contents.append("이메일 인증을 클릭하시면 회원 가입이 완료됩니다. <br/>")
				.append("<a href='http://192.168.170.145:8080/emailConfirm.do?key=")
				.append(key)
				.append("'><h2>이메일 인증</h2></a>");
		
		MimeMessage message = mailSender.createMimeMessage();
		MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");
		
		messageHelper.setFrom(setfrom);						//송신자를 생략하면 정상작동을 안함
		messageHelper.setTo(tomail);						//수신자 메일
		messageHelper.setSubject(title);					//메일 제목은 생략 가능
		messageHelper.setText(contents.toString(),true);	//메일 내용
		
		mailSender.send(message);
	
		rttr.addFlashAttribute("msg", "success");		
		
		
		return "redirect:/indexNoSignUp.do";
		
	}
	
	@RequestMapping(value="join", method=RequestMethod.GET)
	public String insertGet(HttpServletRequest request, HttpServletResponse response) throws Exception {
		log.info("write get.....");
		
		return "/indexNoSignUp";
		
	}
	@RequestMapping(value="emailConfirm", method=RequestMethod.GET)
	public String emailConfirm(HttpServletRequest request, HttpServletResponse response,RedirectAttributes rttr) throws Exception {
		log.info("write get.....");
		String key =request.getParameter("key");
		int result=userService.updateAuth(key);
		log.info("result값 찍습니다.............. :"+result);
		if(result!=0) {
			System.out.println("인증성공");
		}
		return "/indexNoSignUp";
		
	}
	
	
	//admin
	@RequestMapping(value="/admin/index", method=RequestMethod.GET)
	public String adminIndex(HttpServletRequest request, HttpServletResponse response, 
					ModelMap model) throws Exception {
		log.info("admin index..........................................................");
		return "/admin/index";
		
	}
	
	@RequestMapping(value="/calTest", method=RequestMethod.GET)
	public String calTest(HttpServletRequest request, HttpServletResponse response, 
					ModelMap model) throws Exception {
		log.info("/calTest.........................................................");
		return "/calTest";
		
	}
	
	@RequestMapping(value="/Calender", method=RequestMethod.GET)
	public String Calender(HttpServletRequest request, HttpServletResponse response, 
					ModelMap model) throws Exception {
		log.info("/calTest.........................................................");
		return "/Calender";
		
	}
	
}