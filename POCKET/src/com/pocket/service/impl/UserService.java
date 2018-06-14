package com.pocket.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.pocket.DTO.Criteria;
import com.pocket.DTO.LoginDTO;
import com.pocket.DTO.userDTO;
import com.pocket.persistence.mapper.UserMapper;
import com.pocket.service.IUserService;


@Service("UserService")
public class UserService implements IUserService {
		
	@Resource(name="UserMapper")
	private UserMapper userMapper;
	

	@Override
	public List<userDTO> getUser() throws Exception {
		return userMapper.getUser();
	}
		
	@Override
	public void insert(userDTO userDTO) throws Exception{
		userMapper.insert(userDTO);
	}
	
	@Override
	public void insertJoin(userDTO userDTO) throws Exception{
		userMapper.insertJoin(userDTO);
	}

	@Override
	public String getUserNo(String email) throws Exception {
		
		return userMapper.getUserNo(email);
	}

	@Override
	public int updateAuth(String user_no) throws Exception {
		
		return userMapper.updateAuth(user_no);
	}
	
	@Override
	public userDTO login(LoginDTO loginDTO) throws Exception {
		
		return userMapper.login(loginDTO);
	}

	@Override
	public int emailDuple(String email) throws Exception {
		return userMapper.emailDuple(email);
	}

	@Override
	public void tempPwdChange(LoginDTO loginDTO) throws Exception {
		userMapper.tempPwdChange(loginDTO);
	}

	@Override
	public LoginDTO getTempPwd(String email) throws Exception {
		return userMapper.getTempPwd(email);
	}

	@Override
	public void updateUserInfo(userDTO userDTO) throws Exception {
		userMapper.updateUserInfo(userDTO);
		
	}

	@Override
	public userDTO getUserInfo(String user_no) throws Exception {
		return userMapper.getUserInfo(user_no);
	}

	@Override
	public List<userDTO> ulistPage(int page) throws Exception {
		if(page<=0) {
			page=1;
		}
		page =(page-1)*10;
		return userMapper.ulistPage(page);
	}

	@Override
	public List<userDTO> ulistCriteria(Criteria cri) throws Exception {
		return userMapper.ulistCriteria(cri);
	}

	@Override
	public int ucountPaging(Criteria cri) throws Exception {
		return userMapper.ucountPaging(cri);
	}

	@Override
	public int ulistCountCriteria(Criteria cri) throws Exception {
		return userMapper.ucountPaging(cri);
	}

	@Override
	public void deleteUserList(userDTO userDTO) throws Exception {
		userMapper.deleteUserList(userDTO);
	}

	@Override
	public void deleteUser(String user_no) throws Exception {
		userMapper.deleteUser(user_no);
	}

	
	
	

	
	

	
		
}