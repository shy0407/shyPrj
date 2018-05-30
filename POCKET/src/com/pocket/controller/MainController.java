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
		
		//������ ���� Ű���� 
		String key=userService.getUserNo(email);
		
		
		
		System.out.println("key �ϱ��? ?: " +key);
		log.info("����� ���ž�" + key); 
		log.info("����� �����" + userDTO.getEmail());
		String setfrom = "project.booknight@gmail.com";					//�۽��� ���� �ּ�
		String tomail = userDTO.getEmail();					        //������ ���� �ּ�
		String title = "ȸ�� ���� �̸��� ����";		//���� ����
		StringBuffer contents = new StringBuffer();
		
		contents.append("�̸��� ������ Ŭ���Ͻø� ȸ�� ������ �Ϸ�˴ϴ�. <br/>")
				.append("<a href='http://192.168.170.145:8080/emailConfirm.do?key=")
				.append(key)
				.append("'><h2>�̸��� ����</h2></a>");
		
		MimeMessage message = mailSender.createMimeMessage();
		MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");
		
		messageHelper.setFrom(setfrom);						//�۽��ڸ� �����ϸ� �����۵��� ����
		messageHelper.setTo(tomail);						//������ ����
		messageHelper.setSubject(title);					//���� ������ ���� ����
		messageHelper.setText(contents.toString(),true);	//���� ����
		
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
		log.info("result�� ����ϴ�.............. :"+result);
		if(result!=0) {
			System.out.println("��������");
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