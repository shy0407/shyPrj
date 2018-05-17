package com.pocket.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.pocket.DTO.DataDTO;
import com.pocket.persistence.mapper.DataMapper;
import com.pocket.service.IDataService;

@Service("DataService")
public class DataService implements IDataService {
		
	@Resource(name="DataMapper")
	private DataMapper dataMapper;

	@Override
	public DataDTO getAgeAvg() throws Exception {
		return dataMapper.getAgeAvg();
	}

	@Override
	public DataDTO getAgeThirty() throws Exception {
		return dataMapper.getAgeThirty();
	}
	
	@Override
	public DataDTO getAgeForty() throws Exception {
		return dataMapper.getAgeThirty();
	}
	
	@Override
	public DataDTO getAgeFiFty() throws Exception {
		return dataMapper.getAgeThirty();
	}
	
	@Override
	public DataDTO getAgeSixty() throws Exception {
		return dataMapper.getAgeThirty();
	}
	
		
}