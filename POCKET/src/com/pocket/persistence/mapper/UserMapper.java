package com.pocket.persistence.mapper;

import java.util.List;

import com.pocket.DTO.Criteria;
import com.pocket.DTO.LoginDTO;
import com.pocket.DTO.userDTO;
import com.pocket.config.Mapper;



@Mapper("UserMapper")
public interface UserMapper {

	List<userDTO> getUser()throws Exception;

	void insert(userDTO userDTO)throws Exception;

	void insertJoin(userDTO userDTO)throws Exception;
	
	String getUserNo(String email)throws Exception;
	
	int updateAuth(String user_no)throws Exception;
	
	userDTO login(LoginDTO loginDTO)throws Exception;
	
	int emailDuple(String email)throws Exception;
	
	void tempPwdChange(LoginDTO loginDTO)throws Exception;
	
	LoginDTO getTempPwd(String email)throws Exception;
	
	void updateUserInfo(userDTO userDTO)throws Exception;
	
	userDTO getUserInfo(String user_no)throws Exception;
	
	List<userDTO> ulistPage(int page)throws Exception;
	List<userDTO> ulistCriteria(Criteria cri) throws Exception;
	int ucountPaging(Criteria cri) throws Exception;
	
	void deleteUserList(userDTO userDTO) throws Exception;
	
	void deleteUser(String user_no)throws Exception;
}
