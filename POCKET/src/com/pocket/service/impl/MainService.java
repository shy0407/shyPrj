package com.pocket.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.pocket.DTO.mainDTO;
import com.pocket.persistence.mapper.MainMapper;
import com.pocket.service.IMainService;

@Service("MainService")
public class MainService implements IMainService {
		
	@Resource(name="MainMapper")
	private MainMapper mainMapper;

	@Override
	public List<mainDTO> getInfo() throws Exception {
		return mainMapper.getInfo();
	}
		
	
		
}