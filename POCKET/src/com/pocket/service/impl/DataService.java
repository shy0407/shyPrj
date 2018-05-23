package com.pocket.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.pocket.DTO.DataDTO;
import com.pocket.DTO.TestDTO;
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

	@Override
	public List<HashMap<String, String>> joinCount() throws Exception {
		return dataMapper.joinCount();
	}

	@Override
	public List<HashMap<String, String>> genderCountByMonth() throws Exception {
		return dataMapper.genderCountByMonth();
	}

	@Override
	public TestDTO countAll() throws Exception {
		
		return dataMapper.countAll();
	}

	@Override
	public TestDTO genderCount() throws Exception {
		return dataMapper.genderCount();
	}

	@Override
	public List<HashMap<String, Object>> count() throws Exception {
		List<HashMap<String, Object>> list = new ArrayList<HashMap<String, Object>>();
		TestDTO hash1=countAll();
		TestDTO hash2=genderCount();
		
		
		return list;
	}
	
		
}