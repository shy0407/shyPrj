package com.pocket.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.IOUtils;
import org.apache.log4j.Logger;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.pocket.DTO.PocketDTO;
import com.pocket.service.IPocketService;
import com.pocket.util.MediaUtils;
import com.pocket.util.UploadFileUtils;

	
@Controller
public class PocketController {
	private Logger log = Logger.getLogger(this.getClass());
		

	@Resource(name = "PocketService")
	private IPocketService pocketService;
	

	@Resource(name = "uploadPath")
	  private String uploadPath;
	
	
	@RequestMapping(value="jqgridTest", method=RequestMethod.GET)
	
	public String accountBookGet(HttpServletRequest request, HttpServletResponse response ,ModelMap model) throws Exception {
		log.info("jqgridTest............ .....");
		
		return "/jqgridTest";
		
	}
	
	@RequestMapping(value="gridTest", method=RequestMethod.GET)
	
	public String gridTest(HttpServletRequest request, HttpServletResponse response ,ModelMap model) throws Exception {
		log.info("gridTest............ .....");
		
		return "/gridTest";
		
	}
	
	
	@RequestMapping(value="gridServer", method=RequestMethod.GET)
	
	public String gridServer(HttpServletRequest request, HttpServletResponse response ,ModelMap model) throws Exception {
		log.info("gridServer............ .....");
		
		return "/gridServer";
		
	}

	@RequestMapping(value="expense", method=RequestMethod.GET)
	public @ResponseBody List<PocketDTO> getExpense() throws Exception {
		log.info("gdssss");
		List<PocketDTO> entity=null;
		
		try {
			entity = pocketService.expense();
		}catch(Exception e) {
			e.printStackTrace();
		}
		log.info("2����@!!@!");
		return entity;
	}
	
	@RequestMapping(value="expenseCal", method=RequestMethod.POST)
	public @ResponseBody List<PocketDTO> expenseCal() throws Exception {
		log.info("expenseCal");
		List<PocketDTO> entity=null;
		
		try {
			entity = pocketService.expenseCal();
		}catch(Exception e) {
			e.printStackTrace();
		}
		log.info("2����@!!@!");
		return entity;
	}
	
	
	@RequestMapping(value="insertPocket", method=RequestMethod.POST)
	public void insertPocket(HttpServletRequest request, HttpServletResponse response,
							@RequestParam("expense_date")String expense_date,
							@RequestParam("expense_detail")String expense_detail,
							@RequestParam("expense_cash")String expense_cash,
							@RequestParam("expense_card")String expense_card,
							@RequestParam("expense_category")String expense_category,
							@RequestParam("oper")String oper,
							@RequestParam("id")String pocket_no) throws Exception {
		log.info("insertPocket..................");
		
		log.info(expense_detail);
		log.info(expense_cash);
		log.info(expense_card);
		log.info(expense_category);
		log.info(oper);
		log.info("pocket :"+pocket_no);
		
		PocketDTO pocketDTO=new PocketDTO();
		
		
		if(oper.equals("add")) {
			
			pocketDTO.setExpense_date(expense_date);
			pocketDTO.setExpense_detail(expense_detail);
			pocketDTO.setExpense_cash(expense_cash);
			pocketDTO.setExpense_card(expense_card);
			pocketDTO.setExpense_category(expense_category);
			
			
			pocketService.insertPocket(pocketDTO);
		}else if(oper.equals("edit")) {
			pocketDTO.setPocket_no(pocket_no);
			pocketDTO.setExpense_date(expense_date);
			pocketDTO.setExpense_detail(expense_detail);
			pocketDTO.setExpense_cash(expense_cash);
			pocketDTO.setExpense_card(expense_card);
			pocketDTO.setExpense_category(expense_category);
			pocketService.edit(pocketDTO);
		}	
		
	}
	
	
	@RequestMapping(value="deletePocket", method=RequestMethod.POST)
	public void deletePocket(HttpServletRequest request, HttpServletResponse response,
							@RequestParam("id")String pocket_no) throws Exception {
		log.info("deletePocket..................");
		pocketService.deletePocket(pocket_no);
	}
	
	@RequestMapping(value = "uploadAjax", method = RequestMethod.GET)
	  public void uploadAjax() {
	  }

	  private String uploadFile(String originalName, byte[] fileData) throws Exception {

	    UUID uid = UUID.randomUUID();

	    String savedName = uid.toString() + "_" + originalName;

	    File target = new File(uploadPath, savedName);

	    FileCopyUtils.copy(fileData, target);

	    return savedName;

	  }
	  
	  @ResponseBody
	  @RequestMapping(value ="uploadAjax", method=RequestMethod.POST, 
	                  produces = "text/plain;charset=UTF-8")
	  public ResponseEntity<String> uploadAjax(MultipartFile file)throws Exception{
	    
	    log.info("originalName: " + file.getOriginalFilename());
	    
	   
	    return 
	      new ResponseEntity<>(
	          UploadFileUtils.uploadFile(uploadPath, 
	                file.getOriginalFilename(), 
	                file.getBytes()), 
	          HttpStatus.CREATED);
	  }
	
	@ResponseBody
	  @RequestMapping("displayFile")
	  public ResponseEntity<byte[]>  displayFile(String fileName)throws Exception{
	    
	    InputStream in = null; 
	    ResponseEntity<byte[]> entity = null;
	    
	    log.info("FILE NAME: " + fileName);
	    
	    try{
	      
	      String formatName = fileName.substring(fileName.lastIndexOf(".")+1);
	      
	      MediaType mType = MediaUtils.getMediaType(formatName);
	      
	      HttpHeaders headers = new HttpHeaders();
	      
	      in = new FileInputStream(uploadPath+fileName);
	      
	      if(mType != null){
	        headers.setContentType(mType);
	      }else{
	        
	        fileName = fileName.substring(fileName.indexOf("_")+1);       
	        headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
	        headers.add("Content-Disposition", "attachment; filename=\""+ 
	          new String(fileName.getBytes("UTF-8"), "ISO-8859-1")+"\"");
	      }

	      entity = new ResponseEntity<byte[]>(IOUtils.toByteArray(in), 
	              headers, 
	              HttpStatus.CREATED);
	    }catch(Exception e){
	      e.printStackTrace();
	      entity = new ResponseEntity<byte[]>(HttpStatus.BAD_REQUEST);
	    }finally{
	      in.close();
	    }
	      return entity;    
	  }
	  
	  @ResponseBody
	  @RequestMapping(value="deleteFile", method=RequestMethod.POST)
	  public ResponseEntity<String> deleteFile(String fileName){
	    
	    log.info("delete file: "+ fileName);
	    
	    String formatName = fileName.substring(fileName.lastIndexOf(".")+1);
	    
	    MediaType mType = MediaUtils.getMediaType(formatName);
	    
	    if(mType != null){      
	      
	      String front = fileName.substring(0,12);
	      String end = fileName.substring(14);
	      new File(uploadPath + (front+end).replace('/', File.separatorChar)).delete();
	    }
	    
	    new File(uploadPath + fileName.replace('/', File.separatorChar)).delete();
	    
	    
	    return new ResponseEntity<String>("deleted", HttpStatus.OK);
	  }  
	  
	  @ResponseBody
	  @RequestMapping(value="deleteAllFiles", method=RequestMethod.POST)
	  public ResponseEntity<String> deleteFile(@RequestParam("files[]") String[] files){
	    
	    log.info("delete all files: "+ files);
	    
	    if(files == null || files.length == 0) {
	      return new ResponseEntity<String>("deleted", HttpStatus.OK);
	    }
	    
	    for (String fileName : files) {
	      String formatName = fileName.substring(fileName.lastIndexOf(".")+1);
	      
	      MediaType mType = MediaUtils.getMediaType(formatName);
	      
	      if(mType != null){      
	        
	        String front = fileName.substring(0,12);
	        String end = fileName.substring(14);
	        new File(uploadPath + (front+end).replace('/', File.separatorChar)).delete();
	      }
	      
	      new File(uploadPath + fileName.replace('/', File.separatorChar)).delete();
	      
	    }
	    return new ResponseEntity<String>("deleted", HttpStatus.OK);
	  }  
	
	
}