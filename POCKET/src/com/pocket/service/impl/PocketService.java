package com.pocket.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.pocket.DTO.PocketDTO;
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
	public List<PocketDTO> expenseCal() throws Exception {
		// TODO Auto-generated method stub
		return pocketMapper.expenseCal();
	}
		
	
		
}