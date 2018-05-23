package com.pocket.persistence.mapper;

import java.util.HashMap;
import java.util.List;

import com.pocket.DTO.DataDTO;
import com.pocket.DTO.TestDTO;
import com.pocket.config.Mapper;


@Mapper("DataMapper")
public interface DataMapper {
	
	DataDTO getAgeAvg()throws Exception;
	DataDTO getAgeThirty()throws Exception;
	DataDTO getAgeForty()throws Exception;
	DataDTO getAgeFiFty()throws Exception;
	DataDTO getAgeSixty()throws Exception;
	List<HashMap<String, String>> joinCount()throws Exception;
	List<HashMap<String, String>> genderCountByMonth()throws Exception;
	TestDTO countAll()throws Exception;
	TestDTO genderCount()throws Exception;
	List<HashMap<String, Object>> count()throws Exception;
}
