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
	public HashMap<String, String> genderCountByMonth() throws Exception {
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
	public HashMap<String, String> userAnalysis() throws Exception {
		
		return dataMapper.userAnalysis();
	}

	@Override
	public HashMap<String, String> incomeByGender() throws Exception {
		// TODO Auto-generated method stub
		return dataMapper.incomeByGender();
	}

	@Override
	public HashMap<String, String> jobCount() throws Exception {
		// TODO Auto-generated method stub
		return dataMapper.jobCount();
	}

	@Override
	public List<HashMap<String, String>> allData() throws Exception {		
		return dataMapper.allData();
	}

	@Override
	public List<HashMap<String, String>> dataForStoreInfo() throws Exception {
		return dataMapper.dataForStoreInfo();
	}

	@Override
	public HashMap<String, Object> storeLocalData() throws Exception {
		// TODO Auto-generated method stub
		return dataMapper.storeLocalData();
	}

	

	@Override
	public List<HashMap<String, String>> expenseUserData(String user_no) throws Exception {
		// TODO Auto-generated method stub
		return dataMapper.expenseUserData(user_no);
	}

	@Override
	public List<HashMap<String, String>> compIncomeTwo() throws Exception {
		// TODO Auto-generated method stub
		return dataMapper.compIncomeTwo();
	}

	
	
		
}