package com.pocket.service;

import java.util.HashMap;
import java.util.List;

import com.pocket.DTO.DataDTO;
import com.pocket.DTO.TestDTO;

public interface IDataService {

	DataDTO getAgeAvg()throws Exception;
	DataDTO getAgeThirty()throws Exception;
	DataDTO getAgeForty()throws Exception;
	DataDTO getAgeFiFty()throws Exception;
	DataDTO getAgeSixty()throws Exception;
	List<HashMap<String, String>> joinCount()throws Exception;
	HashMap<String, String> genderCountByMonth()throws Exception;
	TestDTO countAll()throws Exception;
	TestDTO genderCount()throws Exception;
	HashMap<String, String> userAnalysis()throws Exception;
	HashMap<String, String> incomeByGender()throws Exception;
	HashMap<String, String> jobCount()throws Exception;
}