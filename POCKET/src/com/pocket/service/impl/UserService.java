package com.pocket.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

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
	
	

	
	

	
		
}