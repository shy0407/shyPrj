package com.pocket.service;

import java.util.List;

import com.pocket.DTO.LoginDTO;
import com.pocket.DTO.userDTO;

public interface IUserService {

	List<userDTO> getUser()throws Exception;
	void insert(userDTO userDTO)throws Exception;
	void insertJoin(userDTO userDTO)throws Exception;
	String getUserNo(String email)throws Exception;
	int updateAuth(String user_no)throws Exception;
	userDTO login(LoginDTO loginDTO)throws Exception;
}