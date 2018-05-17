package com.pocket.service;

import com.pocket.DTO.DataDTO;

public interface IDataService {

	DataDTO getAgeAvg()throws Exception;
	DataDTO getAgeThirty()throws Exception;
	DataDTO getAgeForty()throws Exception;
	DataDTO getAgeFiFty()throws Exception;
	DataDTO getAgeSixty()throws Exception;
}