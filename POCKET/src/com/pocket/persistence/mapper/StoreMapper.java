package com.pocket.persistence.mapper;

import java.util.List;

import com.pocket.DTO.StoreDTO;
import com.pocket.config.Mapper;


@Mapper("StoreMapper")
public interface StoreMapper {

	List<StoreDTO> getStoreList()throws Exception;
	

	

}
