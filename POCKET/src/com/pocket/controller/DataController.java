package com.pocket.controller;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.httpclient.HttpConnection;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pocket.DTO.DataDTO;
import com.pocket.service.IDataService;

	
@Controller
public class DataController {
	private Logger log = Logger.getLogger(this.getClass());
		
	@Resource(name = "DataService")
	private IDataService dataService;
	
	
	@RequestMapping(value="getData", method=RequestMethod.POST)
	public @ResponseBody DataDTO getData(HttpServletRequest request, HttpServletResponse response, 
					ModelMap model) throws Exception {
		
		DataDTO dataDTO=dataService.getAgeAvg();
		
	
		log.info("age��� json������.................");
		return dataDTO;
		
	}
	
	@RequestMapping(value="getAgeThirty", method=RequestMethod.POST)
	public @ResponseBody DataDTO getAgeThirty(HttpServletRequest request, HttpServletResponse response, 
					ModelMap model) throws Exception {
		
		DataDTO dataDTO=dataService.getAgeThirty();
		
	
		log.info("39������.................");
		return dataDTO;
		
	}
	
	@RequestMapping(value="getAgeForty", method=RequestMethod.POST)
	public @ResponseBody DataDTO getAgeForty(HttpServletRequest request, HttpServletResponse response, 
					ModelMap model) throws Exception {
		
		DataDTO dataDTO=dataService.getAgeForty();
		
	
		log.info("40��.................");
		return dataDTO;
		
	}
	
	@RequestMapping(value="getAgeFiFty", method=RequestMethod.POST)
	public @ResponseBody DataDTO getAgeFiFty(HttpServletRequest request, HttpServletResponse response, 
					ModelMap model) throws Exception {
		
		DataDTO dataDTO=dataService.getAgeFiFty();
		
	
		log.info("50��.................");
		return dataDTO;
		
	}
	
	@RequestMapping(value="getAgeSixty", method=RequestMethod.POST)
	public @ResponseBody DataDTO getAgeSixty(HttpServletRequest request, HttpServletResponse response, 
					ModelMap model) throws Exception {
		
		DataDTO dataDTO=dataService.getAgeSixty();
		
	
		log.info("60��.................");
		return dataDTO;
		
	}
	
	@RequestMapping(value="chart", method=RequestMethod.GET)
	public String chart(HttpServletRequest request, HttpServletResponse response, 
					ModelMap model) throws Exception {
		/*List<mainDTO>  mlist = mainService.getInfo();
		
		System.out.println(mlist.size());
		
		model.addAttribute("mList",mlist);*/
		log.info("chart..!!!");
		return "/chart";
		
	}
	
	@RequestMapping(value="apiTest", method=RequestMethod.GET)
	public String apiTest(HttpServletRequest request, HttpServletResponse response, 
					ModelMap model) throws Exception {
		
		log.info("apiTest..!!!");
		return "/apiTest";
		
	}
	
	@RequestMapping(value="apiData", method=RequestMethod.GET)
	public String apiData(HttpServletRequest request, HttpServletResponse response, 
					ModelMap model) throws Exception {
		
		log.info("apiData..!!!");
		return "/apiData";
		
	}
	
	@RequestMapping(value="apiData2", method=RequestMethod.GET)
	public String apiData2(HttpServletRequest request, HttpServletResponse response, 
					ModelMap model) throws Exception {
		
		log.info("apiData2..!!!");
		return "/apiData2";
		
	}

		
	


	
}