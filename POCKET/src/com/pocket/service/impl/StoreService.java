package com.pocket.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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
	
	@Transactional
	@Override
	public void update(StoreDTO storeDTO) throws Exception {
		storeMapper.update(storeDTO);
		
		String store_no = storeDTO.getStore_no();
		
		storeMapper.deleteStoreAttach(store_no);
		
		String[]files=storeDTO.getFiles();
		for(String filName:files) {
			
			Map<String, Object> paramMap = new HashMap<String, Object>();
		    
		    paramMap.put("store_no", store_no);
		    paramMap.put("fullName", filName);
		    
		    System.out.println(paramMap.toString());
			storeMapper.replaceStoreAttach(paramMap);
			
		}
		
	}

	@Override
	public void delete(String store_no) throws Exception {
		storeMapper.delete(store_no);
	}
	
	
	//梅何颇老苞 汽 insert
	@Transactional
	@Override
	public void regist(StoreDTO storeDTO) throws Exception {
		
		storeMapper.create(storeDTO);
		String[]files =storeDTO.getFiles();
		if(files==null) {return ;}
		
		for(String fileName : files) {
			storeMapper.addStoreAttach(fileName);
		}
		
	}
	
	
	//梅何颇老 insert
	@Override
	public void addStoreAttach(String fullName) throws Exception {
		storeMapper.addStoreAttach(fullName);
		
	}
	//弊成 form insert
	@Override
	public void create(StoreDTO storeDTO) throws Exception {
		storeMapper.create(storeDTO);
	}

	@Override
	public List<String> getStoreAttach(String store_no) throws Exception {
		return storeMapper.getStoreAttach(store_no);
	}

	@Override
	public void deleteStoreAttach(String store_no) throws Exception {
		storeMapper.delete(store_no);
		
	}

	@Override
	public void replaceStoreAttach(String fullName, String store_no) throws Exception {
		 Map<String, Object> paramMap = new HashMap<String, Object>();
		    
		    paramMap.put("store_no", store_no);
		    paramMap.put("fullName", fullName);
		    System.out.println(paramMap.get(fullName));
		storeMapper.replaceStoreAttach(paramMap);
		
		
	}
	
	@Transactional
	@Override
	public void remove(String store_no) throws Exception {
		storeMapper.deleteStoreAttach(store_no);
		storeMapper.delete(store_no);
		
	}

	@Override
	public List<String> storeImgAll() throws Exception {

		return storeMapper.storeImgAll();
	}

	@Override
	public List<Map<String, Object>> getStoreByDate() throws Exception {
		return storeMapper.getStoreByDate();
	}
	
		
	
		
}