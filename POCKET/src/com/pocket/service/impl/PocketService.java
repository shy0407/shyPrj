package com.pocket.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.pocket.DTO.PocketDTO;
import com.pocket.DTO.StoreDTO;
import com.pocket.persistence.mapper.PocketMapper;
import com.pocket.service.IPocketService;

@Service("PocketService")
public class PocketService implements IPocketService {
		
	@Resource(name="PocketMapper")
	private PocketMapper pocketMapper;

	@Override
	public List<PocketDTO> expense() throws Exception {
		return pocketMapper.expense();
	}

	@Override
	public void edit(PocketDTO pocketDTO) throws Exception {
		 pocketMapper.edit(pocketDTO);
	}

	@Override
	public void insertPocket(PocketDTO pocketDTO) throws Exception {
		pocketMapper.insertPocket(pocketDTO);
		
	}

	@Override
	public void deletePocket(String pocket_no) throws Exception {
		pocketMapper.deletePocket(pocket_no);
		
	}

	@Override
	public List<PocketDTO> expenseCal(String user_no) throws Exception {
		return pocketMapper.expenseCal(user_no);
	}

	@Override
	public void addAttach(PocketDTO pocketDTO) throws Exception {
		 pocketMapper.addAttach(pocketDTO);
		
	}
		
	@Transactional
	@Override
	public void insertExpense(PocketDTO pocketDTO) throws Exception{
		pocketMapper.insertPocket(pocketDTO);
		
		String[] files = pocketDTO.getFiles();
		
		if(files==null) {return;}
		for(String fileName :files) {
			pocketDTO.setFullName(fileName);			
			pocketMapper.addAttach(pocketDTO);
		}
	}

	@Override
	public List<String> pocketImgAll(String user_no) throws Exception {	
		return pocketMapper.pocketImgAll(user_no);
	}

	@Override
	public PocketDTO getPocketInfoImg(String fullName) throws Exception {
		return pocketMapper.getPocketInfoImg(fullName);
	}

	@Override
	public void deletePocketImg(String pocket_no) throws Exception {
		pocketMapper.deletePocketImg(pocket_no);
		
	}
	
	@Transactional
	@Override
	public void removePocket(String pocket_no) throws Exception {
		pocketMapper.deletePocketImg(pocket_no);
		pocketMapper.deletePocket(pocket_no);
		
	}

	@Override
	public List<String> getPocketAttach(String pocket_no) throws Exception {
		return pocketMapper.getPocketAttach(pocket_no);
	}

	@Transactional
	@Override
	public void editPocket(PocketDTO pocketDTO) throws Exception {
		pocketMapper.edit(pocketDTO);
		
		String pocket_no = pocketDTO.getPocket_no();
		String user_no =pocketDTO.getUser_no();
		System.out.println(pocket_no);
		System.out.println(user_no);

		pocketMapper.deletePocketImg(pocket_no);
		
		String[]files=pocketDTO.getFiles();
		if(files ==null) {return;}
		for(String fullName:files) {
			System.out.println(fullName);
			Map<String,Object> paramMap =new HashMap<String, Object>();
			paramMap.put("fullName", fullName);
			paramMap.put("pocket_no", pocket_no);
			paramMap.put("user_no", user_no);
		    pocketMapper.replacePocketAttach(paramMap);
		    
			
		}	
	}

	

	@Override
	public void replacePocketAttach(String fullName, String pocket_no, String user_no) {
		Map<String,Object> paramMap =new HashMap<String, Object>();
		paramMap.put("fullname", fullName);
		paramMap.put("pocket_no", pocket_no);
		paramMap.put("user_no", user_no);

		pocketMapper.replacePocketAttach(paramMap);
		
	}
	
	
}