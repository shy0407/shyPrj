package com.pocket.persistence.mapper;

import com.pocket.DTO.DataDTO;
import com.pocket.config.Mapper;


@Mapper("DataMapper")
public interface DataMapper {

	DataDTO getAgeAvg()throws Exception;
	DataDTO getAgeThirty()throws Exception;
	DataDTO getAgeForty()throws Exception;
	DataDTO getAgeFiFty()throws Exception;
	DataDTO getAgeSixty()throws Exception;
	

}
