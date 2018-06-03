package com.pocket.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.pocket.DTO.StoreDTO;
import com.pocket.persistence.mapper.StoreMapper;
import com.pocket.service.IStoreService;

@Service("StoreService")
public class StoreService implements IStoreService {
		
	@Resource(name="StoreMapper")
	private StoreMapper storeMapper;

	@Override
	public List<StoreDTO> getStoreList() throws Exception {
		return storeMapper.getStoreList();
	}

	
		
	
		
}