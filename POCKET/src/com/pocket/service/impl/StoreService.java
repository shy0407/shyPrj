package com.pocket.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.pocket.DTO.Criteria;
import com.pocket.DTO.StoreDTO;
import com.pocket.persistence.mapper.StoreMapper;
import com.pocket.service.IStoreService;

@Service("StoreService")
public class StoreService implements IStoreService {
		
	@Resource(name="StoreMapper")
	private StoreMapper storeMapper;

	@Override
	public List<StoreDTO> getStoreList() throws Exception {
		return storeMapper.getStoreList();
	}

	@Override
	public List<StoreDTO> listPage(int page) throws Exception {
		if(page<=0) {
			page=1;
		}
		page =(page-1)*10;
		return storeMapper.listPage(page);
	}

	@Override
	public List<StoreDTO> listCriteria(Criteria cri) throws Exception {
		return storeMapper.listCriteria(cri);
	}

	@Override
	public int countPaging(Criteria cri) throws Exception {
		return storeMapper.countPaging(cri);
	}

	@Override
	public int listCountCriteria(Criteria cri) throws Exception {

		return storeMapper.countPaging(cri);
	}

	@Override
	public StoreDTO read(String store_no) throws Exception {
		
		return storeMapper.read(store_no);
	}

	@Override
	public void update(StoreDTO storeDTO) throws Exception {
		storeMapper.update(storeDTO);
	}

	@Override
	public void delete(String store_no) throws Exception {
		storeMapper.delete(store_no);
	}

	@Override
	public void regist(StoreDTO storeDTO) throws Exception {
		storeMapper.regist(storeDTO);
	}

	@Override
	public void addStoreAttach(String fullName) throws Exception {
		storeMapper.addStoreAttach(fullName);
		
	}
	
		
	
		
}