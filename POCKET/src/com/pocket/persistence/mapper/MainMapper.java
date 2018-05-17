package com.pocket.persistence.mapper;

import java.util.List;

import com.pocket.DTO.mainDTO;
import com.pocket.config.Mapper;


@Mapper("MainMapper")
public interface MainMapper {

	List<mainDTO> getInfo()throws Exception;
	

	

}
