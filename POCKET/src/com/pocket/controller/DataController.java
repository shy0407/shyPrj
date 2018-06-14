package com.pocket.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
import com.pocket.DTO.userDTO;
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
	
	@RequestMapping(value="/admin/joinCount", method=RequestMethod.POST)
	public ResponseEntity<List<HashMap<String, String>>> joinCount(HttpServletRequest request, HttpServletResponse response, 
					ModelMap model) throws Exception {
		log.info("���� ������ �� .................");
		
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
		log.info("���� ���� ������ �� .................");
		
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
	@RequestMapping(value="/admin/allData", method=RequestMethod.POST)
	public ResponseEntity<List<HashMap<String, String>>> genderCountByMonth(HttpServletRequest request, HttpServletResponse response, 
					ModelMap model) throws Exception {
		log.info("��ü �����Ͱ����ɴϴ� .................");
		
		ResponseEntity<List<HashMap<String, String>>> entity = null;
		
		 try{
		        entity = new ResponseEntity<>(dataService.allData(), HttpStatus.OK);
		        //entity=ResponseEntity<>(dataService.countAll(), HttpStatus.OK));
		    } catch(Exception e){
		        e.printStackTrace();
		        entity = new ResponseEntity<>( HttpStatus.BAD_REQUEST );
		    }

		return entity;
		
	}
	
	@RequestMapping(value="/admin/storeChart", method=RequestMethod.GET)
	public String storeChart(HttpServletRequest request, HttpServletResponse response, 
					ModelMap model) throws Exception {
		
		log.info("storeChart..!!!");
		
		HashMap<String, Object> hash=dataService.storeLocalData();
		String[] keys = hash.keySet().toArray(new String[0]);

		for(int i=0;i<keys.length;i++){
		 String key = keys[i];
		 String val = hash.get(key).toString();
		 
		 System.out.println(key+" : "+val);
		}
		model.addAttribute("hash",hash);
		return "/admin/storeChart";
		
	}
	
	@RequestMapping(value="/admin/dataForStore", method=RequestMethod.POST)
	public @ResponseBody ResponseEntity<List<HashMap<String, String>>> storeChartData(HttpServletRequest request, HttpServletResponse response, 
					ModelMap model) throws Exception {
		log.info("����� ��ü �����Ͱ����ɴϴ� .................");
			
		ResponseEntity<List<HashMap<String, String>>> entity = null;
		
		 try{
		        entity = new ResponseEntity<>(dataService.dataForStoreInfo(), HttpStatus.OK);
		        //entity=ResponseEntity<>(dataService.countAll(), HttpStatus.OK));
		    } catch(Exception e){
		        e.printStackTrace();
		        entity = new ResponseEntity<>( HttpStatus.BAD_REQUEST );
		    }

		return entity;
	 
		
	}
	
	@RequestMapping(value="/expenseUserData", method=RequestMethod.GET)
	public ResponseEntity<List<HashMap<String, String>>> expenseUserData(HttpServletRequest request, HttpServletResponse response, 
					ModelMap model,HttpSession session) throws Exception {
		log.info("���� ���� �����Ͱ����ɴϴ� .................");
		userDTO uDTO=(userDTO)session.getAttribute("userDTO");
		
		String user_no =uDTO.getUser_no();
		ResponseEntity<List<HashMap<String, String>>> entity = null;
		
		 try{
		        entity = new ResponseEntity<>(dataService.expenseUserData(user_no), HttpStatus.OK);
		        //entity=ResponseEntity<>(dataService.countAll(), HttpStatus.OK));
		    } catch(Exception e){
		        e.printStackTrace();
		        entity = new ResponseEntity<>( HttpStatus.BAD_REQUEST );
		    }

		return entity;
	 
		
	}
	
	@RequestMapping(value="expenseChart", method=RequestMethod.GET)
	public String expenseChart(HttpServletRequest request, HttpServletResponse response, 
					ModelMap model) throws Exception {
		//log.info("����� ��ü �����Ͱ����ɴϴ� .................");
			
		
		return "/expenseChart";
	 
		
	}
	@RequestMapping(value="compareChart", method=RequestMethod.GET)
	public String compareChart(HttpServletRequest request, HttpServletResponse response, 
					ModelMap model,HttpSession session) throws Exception {
		log.info("compareChart .................");	
		userDTO uDTO=(userDTO)session.getAttribute("userDTO");		
		String user_no =uDTO.getUser_no();
		
		
		
		return "/compareChart";
	 
		
	}
	
	@RequestMapping(value="/compIncomeTwo", method=RequestMethod.GET)
	public ResponseEntity<List<HashMap<String, String>>> compIncomeTwo(HttpServletRequest request, HttpServletResponse response, 
					ModelMap model,HttpSession session) throws Exception {
		log.info("compIncomeTwo .................");
		
		ResponseEntity<List<HashMap<String, String>>> entity = null;
		
		 try{
		        entity = new ResponseEntity<>(dataService.compIncomeTwo(), HttpStatus.OK);
		        //entity=ResponseEntity<>(dataService.countAll(), HttpStatus.OK));
		    } catch(Exception e){
		        e.printStackTrace();
		        entity = new ResponseEntity<>( HttpStatus.BAD_REQUEST );
		    }

		return entity;
	 
		
	}
	
	
	
	
	
	
	
}