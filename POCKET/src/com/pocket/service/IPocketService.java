package com.pocket.service;

import java.util.List;

import com.pocket.DTO.PocketDTO;

public interface IPocketService {

	List<PocketDTO> expense()throws Exception;
	List<PocketDTO> expenseCal()throws Exception;
	void edit(PocketDTO pocketDTO)throws Exception;
	void insertPocket(PocketDTO pocketDTO)throws Exception;
	void deletePocket(String pocket_no)throws Exception;
	void addAttach(String fullName)throws Exception;
	void insertExpense(PocketDTO pocketDTO) throws Exception;
}