package com.pocket.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//import org.apache.commons.httpclient.HttpStatus;
import org.apache.log4j.Logger;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pocket.DTO.DataDTO;
import com.pocket.DTO.TestDTO;
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
		
	
		log.info("age평균 json데이터.................");
		return dataDTO;
		
	}
	
	@RequestMapping(value="getAgeThirty", method=RequestMethod.POST)
	public @ResponseBody DataDTO getAgeThirty(HttpServletRequest request, HttpServletResponse response, 
					ModelMap model) throws Exception {
		
		DataDTO dataDTO=dataService.getAgeThirty();
		
	
		log.info("39세이하.................");
		return dataDTO;
		
	}
	
	@RequestMapping(value="getAgeForty", method=RequestMethod.POST)
	public @ResponseBody DataDTO getAgeForty(HttpServletRequest request, HttpServletResponse response, 
					ModelMap model) throws Exception {
		
		DataDTO dataDTO=dataService.getAgeForty();
		
	
		log.info("40대.................");
		return dataDTO;
		
	}
	
	@RequestMapping(value="getAgeFiFty", method=RequestMethod.POST)
	public @ResponseBody DataDTO getAgeFiFty(HttpServletRequest request, HttpServletResponse response, 
					ModelMap model) throws Exception {
		
		DataDTO dataDTO=dataService.getAgeFiFty();
		
	
		log.info("50대.................");
		return dataDTO;
		
	}
	
	@RequestMapping(value="getAgeSixty", method=RequestMethod.POST)
	public @ResponseBody DataDTO getAgeSixty(HttpServletRequest request, HttpServletResponse response, 
					ModelMap model) throws Exception {
		
		DataDTO dataDTO=dataService.getAgeSixty();
		
	
		log.info("60대.................");
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
	
	@RequestMapping(value="/admin/joinCount", method=RequestMethod.POST)
	public ResponseEntity<List<HashMap<String, String>>> joinCount(HttpServletRequest request, HttpServletResponse response, 
					ModelMap model) throws Exception {
		log.info("월별 가입자 수 .................");
		
		ResponseEntity<List<HashMap<String, String>>> entity = null;
		
		 try{
		        entity = new ResponseEntity<>(dataService.joinCount(), HttpStatus.OK);
		    } catch(Exception e){
		        e.printStackTrace();
		        entity = new ResponseEntity<>( HttpStatus.BAD_REQUEST );
		    }
		 
		return entity;
		
	}
		
	/*@RequestMapping(value="/admin/genderCountByMonth", method=RequestMethod.POST)
	public ResponseEntity<List<HashMap<String, String>>> genderCountByMonth(HttpServletRequest request, HttpServletResponse response, 
					ModelMap model) throws Exception {
		log.info("성별 월별 가입자 수 .................");
		
		ResponseEntity<List<HashMap<String, String>>> entity = null;
		
		 try{
		        entity = new ResponseEntity<>(dataService.genderCountByMonth(), HttpStatus.OK);
		        //entity=ResponseEntity<>(dataService.countAll(), HttpStatus.OK));
		    } catch(Exception e){
		        e.printStackTrace();
		        entity = new ResponseEntity<>( HttpStatus.BAD_REQUEST );
		    }

		return entity;
		
	}*/
	
	@RequestMapping(value="/admin/userAnalysis", method=RequestMethod.POST)
	public ResponseEntity<List<HashMap<String, String>>> userAnalysis(HttpServletRequest request, HttpServletResponse response, 
					ModelMap model) throws Exception {
		log.info("userAnalysis .................");
		ResponseEntity<List<HashMap<String, String>>> entity = null;
		HashMap<String, String>hash1=dataService.incomeByGender();		
		HashMap<String, String>hash2=dataService.jobCount();
		HashMap<String, String>hash3=dataService.userAnalysis();
		HashMap<String, String>hash4=dataService.genderCountByMonth();
		
		List<HashMap<String,String>> list= new ArrayList<HashMap<String,String>>();
		list.add(hash1);
		list.add(hash2);
		list.add(hash3);
		list.add(hash4);
		
		 try{
		        entity = new ResponseEntity<>(list, HttpStatus.OK);
		        //entity=ResponseEntity<>(dataService.countAll(), HttpStatus.OK));
		    } catch(Exception e){
		        e.printStackTrace();
		        entity = new ResponseEntity<>( HttpStatus.BAD_REQUEST );
		    }

		return entity;

	}
	
	@RequestMapping(value="/admin/userChart", method=RequestMethod.GET)
	public String userChart(HttpServletRequest request, HttpServletResponse response, 
					ModelMap model) throws Exception {
		
		log.info("dayCount..!!!");
		return "/admin/userChart";
		
	}
	
}