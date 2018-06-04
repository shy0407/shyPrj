package com.pocket.service;

import java.util.List;

import com.pocket.DTO.StoreDTO;

public interface IStoreService {

	List<StoreDTO> getStoreList()throws Exception;
	
}