package com.pocket.persistence.mapper;

import java.util.List;

import com.pocket.DTO.Criteria;
import com.pocket.DTO.StoreDTO;
import com.pocket.config.Mapper;


@Mapper("StoreMapper")
public interface StoreMapper {

	List<StoreDTO> getStoreList()throws Exception;
	List<StoreDTO> listPage(int page)throws Exception;
	List<StoreDTO> listCriteria(Criteria cri) throws Exception;
	int countPaging(Criteria cri) throws Exception;
	StoreDTO read(String store_no)throws Exception;
	void update(StoreDTO storeDTO)throws Exception;
	void delete(String store_no)throws Exception;
	void regist(StoreDTO storeDTO)throws Exception;
	void addStoreAttach(String fullName)throws Exception;
}
