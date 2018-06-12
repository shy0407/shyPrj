package com.pocket.persistence.mapper;

import java.util.List;
import java.util.Map;

import com.pocket.DTO.PocketDTO;
import com.pocket.config.Mapper;


@Mapper("PocketMapper")
public interface PocketMapper {

	List<PocketDTO> expense()throws Exception;
	List<PocketDTO> expenseCal(String user_no)throws Exception;
	void edit(PocketDTO pocketDTO)throws Exception;
	void insertPocket(PocketDTO pocketDTO)throws Exception;
	void deletePocket(String pocket_no)throws Exception;
	void addAttach(PocketDTO pocketDTO)throws Exception;
	List<String> pocketImgAll(String user_no)throws Exception;
	PocketDTO getPocketInfoImg(String fullName)throws Exception;
	void deletePocketImg(String pocket_no)throws Exception;
	void removePocket(String pocket_no) throws Exception;
	List<String> getPocketAttach(String pocket_no)throws Exception;
	//void replacePocketAttach(String fullName, String pocket_no, String user_no)throws Exception;
	void editPocket(PocketDTO pocketDTO) throws Exception;
	void replacePocketAttach(Map<String, Object> paramMap);

}
