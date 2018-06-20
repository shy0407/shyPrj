package com.pocket.controller;

import java.io.File;
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
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.pocket.DTO.Criteria;
import com.pocket.DTO.PageMaker;
import com.pocket.DTO.StoreDTO;
import com.pocket.service.IStoreService;
import com.pocket.util.GeoCodeUtil;
import com.pocket.util.MediaUtils;
import com.pocket.util.UploadFileUtils;

	
@Controller

public class StoreController {
	private Logger log = Logger.getLogger(this.getClass());
		

	@Resource(name = "StoreService")
	private IStoreService storeService;
	
	@Resource(name = "uploadPathStore")
	  private String uploadPathStore;
	

	@RequestMapping(value="/admin/read", method=RequestMethod.GET)
	public String read(HttpServletRequest request, HttpServletResponse response, 
			ModelMap model,@RequestParam("store_no")String store_no,@ModelAttribute("cri")Criteria cri) throws Exception {
		log.info(store_no);
		log.info("/admin/read!!!!!..............");
		log.info(storeService.read(store_no));
		
		model.addAttribute("sDTO",storeService.read(store_no));
		
		
		return "/admin/read";

	}
	@RequestMapping(value="/admin/readByFile", method=RequestMethod.GET)
	public String storeDetailFile(HttpServletRequest request, HttpServletResponse response, 
			ModelMap model,@RequestParam("fullName")String fullName,@ModelAttribute("cri")Criteria cri) throws Exception {
		log.info(fullName);
		log.info("/admin/read!!!!!..............");
		
		
		model.addAttribute("sDTO",storeService.storeDetailFile(fullName));
		
		
		return "/admin/read";

	}
	
	
	@RequestMapping(value="/admin/modifyPage", method=RequestMethod.GET)
	public String midifyPage(HttpServletRequest request, HttpServletResponse response, 
			ModelMap model,@RequestParam("store_no")String store_no,@ModelAttribute("cri")Criteria cri) throws Exception {
		log.info(store_no);
		log.info("/admin/midifyPage!!!!!..............");
		log.info(storeService.read(store_no));
		
		model.addAttribute("sDTO",storeService.read(store_no));
		
		
		return "/admin/modifyPage";

	}
	
	
	@RequestMapping(value="/admin/modifyPage", method=RequestMethod.POST)
	public String midifyPagePost(HttpServletRequest request, HttpServletResponse response, 
			ModelMap model,StoreDTO storeDTO,@ModelAttribute("cri")Criteria cri
			,RedirectAttributes rttr) throws Exception {
		
		log.info("/admin/midifyPage Post!!!!!..............");
		log.info(storeDTO);
		String addr = storeDTO.getJibun_addr();
		String []code =new String [2];
		
		
		String[]arr=request.getParameterValues("files");
		log.info(arr.length);
		for(int i=0;i<arr.length;i++) {
		System.out.println(arr[i]);
		}
		
		Float[] coords = GeoCodeUtil.geoCoding(addr);
		for(int i=0;i<2;i++) {
			code[i]=Float.toString(coords[i]);
		}
		
		storeDTO.setLat(code[0]);	
		storeDTO.setLng(code[1]);
		storeDTO.setFiles(arr);
		storeService.update(storeDTO);
		
		rttr.addAttribute("page",cri.getPage());
		rttr.addAttribute("perPageNum",cri.getPerPageNum());
		rttr.addFlashAttribute("msg","success");
		
		
		return "redirect:/admin/listPage.do";

	}
	
	
	@RequestMapping(value="/admin/removePage", method=RequestMethod.POST)
	public String remove(HttpServletRequest request, HttpServletResponse response, 
			ModelMap model,@RequestParam("store_no")String store_no,
			@ModelAttribute("cri")Criteria cri,RedirectAttributes rttr) throws Exception {
		log.info(cri);
		log.info(store_no);
		log.info("/admin/remove!!!!!..............");
		
		storeService.remove(store_no);
		
		rttr.addAttribute("page",cri.getPage());
		rttr.addAttribute("perPageNum",cri.getPerPageNum());
		rttr.addFlashAttribute("msg","success");
		
		
		return "redirect:/admin/listPage.do";

	}
	

	
	
	@RequestMapping(value = "/admin/listCri", method = RequestMethod.GET)
	  public void listAll(Criteria cri, Model model) throws Exception {

	    log.info("show list Page with Criteria......................");

	    model.addAttribute("list", storeService.listCriteria(cri));
	  }

	@RequestMapping(value = "/admin/listPage", method = RequestMethod.GET)
	  public void listPage(@ModelAttribute("cri")Criteria cri, Model model) throws Exception {

			log.info(cri.toString());
			log.info(cri);
	    model.addAttribute("list", storeService.listCriteria(cri));
	    log.info(storeService.listCriteria(cri));
	    PageMaker pageMaker = new PageMaker();
	    pageMaker.setCri(cri);
	   // pageMaker.setTotalCount(131);

	    pageMaker.setTotalCount(storeService.listCountCriteria(cri));

	    model.addAttribute("pageMaker", pageMaker);
	  }

	@RequestMapping(value = "/admin/storeRegister", method = RequestMethod.GET)
	  public String storeRegister(Criteria cri, Model model) throws Exception {

	    log.info("storeRegister......................");
		return "/admin/storeRegister";

	  
	  }
	
	@RequestMapping(value = "/admin/storeRegister", method = RequestMethod.POST)
	  public String storeRegisterPost(Criteria cri, Model model,StoreDTO storeDTO,
			  HttpServletRequest request, HttpServletResponse response) throws Exception {

	    log.info("storeRegister  Post......................");
	    
	    String addr = storeDTO.getJibun_addr();
		String []code =new String [2];
		
		String[]arr=request.getParameterValues("file");
		log.info(arr.length);
		for(int i=0;i<arr.length;i++) {
		System.out.println(arr[i]);
		}
		Float[] coords = GeoCodeUtil.geoCoding(addr);
		for(int i=0;i<2;i++) {
			code[i]=Float.toString(coords[i]);
			System.out.println(code[i]);
		}
		
		storeDTO.setLat(code[0]);	
		storeDTO.setLng(code[1]);
		storeDTO.setFiles(arr);
		log.info(storeDTO.getFiles());
		storeService.regist(storeDTO);
	    
	    
		return "/admin/storeRegister";

	  
	  }

	
	@RequestMapping(value = "/admin/uploadAjax", method = RequestMethod.GET)
	  public void uploadAjax() {
	  }

	  @ResponseBody
	  @RequestMapping(value ="/admin/uploadAjax", method=RequestMethod.POST, 
	                  produces = "text/plain;charset=UTF-8")
	  public ResponseEntity<String> uploadAjax(MultipartFile file)throws Exception{
	    
	    log.info("originalName: " + file.getOriginalFilename());
	    
	   
	    return 
	      new ResponseEntity<>(
	          UploadFileUtils.uploadFile(uploadPathStore, 
	                file.getOriginalFilename(), 
	                file.getBytes()), 
	          HttpStatus.CREATED);
	  }
	
	@ResponseBody
	  @RequestMapping("/admin/displayFile")
	  public ResponseEntity<byte[]>  displayFile(String fileName)throws Exception{
	    
	    InputStream in = null; 
	    ResponseEntity<byte[]> entity = null;
	    
	    log.info("FILE NAME: " + fileName);
	    
	    try{
	      
	      String formatName = fileName.substring(fileName.lastIndexOf(".")+1);
	      
	      MediaType mType = MediaUtils.getMediaType(formatName);
	      
	      HttpHeaders headers = new HttpHeaders();
	      
	      in = new FileInputStream(uploadPathStore+fileName);
	      
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
	  @RequestMapping("/sdisplayFile")
	  public ResponseEntity<byte[]>  udisplayFile(String fileName)throws Exception{
	    
	    InputStream in = null; 
	    ResponseEntity<byte[]> entity = null;
	    
	    log.info("FILE NAME: " + fileName);
	    
	    try{
	      
	      String formatName = fileName.substring(fileName.lastIndexOf(".")+1);
	      
	      MediaType mType = MediaUtils.getMediaType(formatName);
	      
	      HttpHeaders headers = new HttpHeaders();
	      
	      in = new FileInputStream(uploadPathStore+fileName);
	      
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
	  @RequestMapping(value="/admin/deleteFile", method=RequestMethod.POST)
	  public ResponseEntity<String> deleteFile(String fileName){
	    
	    log.info("delete file: "+ fileName);
	    
	    String formatName = fileName.substring(fileName.lastIndexOf(".")+1);
	    
	    MediaType mType = MediaUtils.getMediaType(formatName);
	    
	    if(mType != null){      
	      
	      String front = fileName.substring(0,12);
	      String end = fileName.substring(14);
	      new File(uploadPathStore + (front+end).replace('/', File.separatorChar)).delete();
	    }
	    
	    new File(uploadPathStore + fileName.replace('/', File.separatorChar)).delete();
	    
	    
	    return new ResponseEntity<String>("deleted", HttpStatus.OK);
	  }  
	  
	  @ResponseBody
	  @RequestMapping(value="/admin/deleteAllFiles", method=RequestMethod.POST)
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
	        new File(uploadPathStore + (front+end).replace('/', File.separatorChar)).delete();
	      }
	      
	      new File(uploadPathStore + fileName.replace('/', File.separatorChar)).delete();
	      
	    }
	    return new ResponseEntity<String>("deleted", HttpStatus.OK);
	  }
	  
	  
	  @RequestMapping("/admin/getStoreAttach")
	  @ResponseBody
	  public List<String> getAttach(@RequestParam("store_no")String store_no)throws Exception{
	    log.info("get attach!!!~~~~~~~~~~~~");
	    return storeService.getStoreAttach(store_no);
	  }  
	
	  
	  @RequestMapping(value="/admin/storeGallery", method=RequestMethod.GET)		
		public String pocketGallery(HttpServletRequest request, HttpServletResponse response ,ModelMap model) throws Exception {
			log.info("/admin/storeGallery............ .....");
			
			return "/admin/storeGallery";
			
		}
	  
	  @RequestMapping(value="/storeGallery", method=RequestMethod.GET)
		public String storeListt(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws Exception {
			
			log.info("/storeGallery!!!!!..............");
			
			
			/*List<StoreDTO> sList= storeService.getStoreList();
			
			model.addAttribute(sList);*/
			
			return "/storeGallery";

		}
	  
	  
	  @RequestMapping(value="/admin/storeImgAll")	
	  @ResponseBody
		public List<String> allPocketImg(HttpServletRequest request, HttpServletResponse response ,ModelMap model) throws Exception {
			log.info("/admin/storeImgAll............ .....");
			
			List<String> filelist =storeService.storeImgAll();
			return filelist;
			
		}
	  @RequestMapping(value="/storeImgAll")	
	  @ResponseBody
		public List<String> allstoreImg(HttpServletRequest request, HttpServletResponse response ,ModelMap model) throws Exception {
			log.info("/storeImgAll............ .....");
			
			List<String> filelist =storeService.storeImgAll();
			return filelist;
			
		}
	
	  
	  @RequestMapping(value="/amdin/ocr", method=RequestMethod.GET)	
	  @ResponseBody
		public String ocr(HttpServletRequest request, HttpServletResponse response ,
				ModelMap model,@RequestParam("fullName")String fullName) throws Exception {
			log.info("/admin/ocr............ .....");
			log.info(fullName);
			String nul="ocr";
			return nul;
			
		}
	
}