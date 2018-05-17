package com.pocket.service;

import java.util.List;

import com.pocket.DTO.PocketDTO;

public interface IPocketService {

	List<PocketDTO> expense()throws Exception;
	List<PocketDTO>	edit(String pocket_no)throws Exception;
	void insertPocket(PocketDTO pocketDTO)throws Exception;

}