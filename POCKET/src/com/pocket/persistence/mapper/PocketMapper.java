package com.pocket.persistence.mapper;

import java.util.List;

import com.pocket.DTO.PocketDTO;
import com.pocket.config.Mapper;


@Mapper("PocketMapper")
public interface PocketMapper {

	List<PocketDTO> expense()throws Exception;
	List<PocketDTO>	edit(PocketDTO pocketDTO)throws Exception;
	void insertPocket(PocketDTO pocketDTO)throws Exception;
	

}