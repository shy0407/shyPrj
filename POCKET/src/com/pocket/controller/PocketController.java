package com.pocket.controller;

import java.io.FileInputStream;
import java.io.InputStream;
import java.util.List;

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
	
	
/*	@RequestMapping(value="jqgridTest", method=RequestMethod.GET)
	
	public String accountBookGet(HttpServletRequest request, HttpServletResponse response ,ModelMap model) throws Exception {
		log.info("jqgridTest............ .....");
		
		return "/jqgridTest";
		
	}
	*/
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
	@RequestMapping(value="edit", method=RequestMethod.GET)
	
	public @ResponseBody List<PocketDTO> edit(HttpServletRequest request, HttpServletResponse response ,ModelMap model,String no) throws Exception {
		
		List<PocketDTO> entity=null;
		
		try {
			entity = pocketService.edit(no);
		}catch(Exception e) {
			e.printStackTrace();
			//entity=new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		log.info("2¹ø¤Š@!!@!");
		return entity;
		
	}
	
	
	
	@RequestMapping(value="expense", method=RequestMethod.GET)
	public @ResponseBody List<PocketDTO> getExpense() throws Exception {
		log.info("gdssss");
		List<PocketDTO> entity=null;
		
		try {
			entity = pocketService.expense();
		}catch(Exception e) {
			e.printStackTrace();
			//entity=new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		log.info("2¹ø¤Š@!!@!");
		return entity;
	}
	
	@RequestMapping(value="insertPocket", method=RequestMethod.POST)
	public void insertPocket(HttpServletRequest request, HttpServletResponse response,
							@RequestParam("expense_date")String expense_date,
							@RequestParam("expense_detail")String expense_detail,
							@RequestParam("expense_cash")String expense_cash,
							@RequestParam("expense_card")String expense_card,
							@RequestParam("expense_category")String expense_category) throws Exception {
		log.info("insertPocket..................");
		log.info(expense_detail);
		log.info(expense_detail);
		log.info(expense_cash);
		log.info(expense_card);
		log.info(expense_category);
		
		PocketDTO pocketDTO=new PocketDTO();
		pocketDTO.setExpense_date(expense_date);
		pocketDTO.setExpense_detail(expense_detail);
		pocketDTO.setExpense_cash(expense_cash);
		pocketDTO.setExpense_card(expense_card);
		pocketDTO.setExpense_category(expense_category);
		
		pocketService.insertPocket(pocketDTO);
		
		
		
		
	}
	
	
	@ResponseBody
	@RequestMapping(value="uploadAjax",method =RequestMethod.POST,produces="text/plain;chartset=UTF-8")	
	public ResponseEntity<String> uploadAjax(MultipartFile file) throws Exception {
		log.info("orginalName............ ....."+file.getOriginalFilename());
		log.info("size: "+file.getSize());
		log.info("contentType"+file.getContentType());
		
		return new ResponseEntity<>(
				UploadFileUtils.uploadFile(uploadPath, file.getOriginalFilename(), file.getBytes()),HttpStatus.CREATED);
		
	}
	
	@RequestMapping(value="uploadAjax", method=RequestMethod.GET)
	
	public String uploadAjaxGet(HttpServletRequest request, HttpServletResponse response ,ModelMap model) throws Exception {
		log.info("account Book............ .....");
		
		return "/uploadAjax";
		
	}
	
	@ResponseBody
	  @RequestMapping("/displayFile")
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
	
	
}