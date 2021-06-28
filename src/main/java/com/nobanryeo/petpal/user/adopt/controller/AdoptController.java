package com.nobanryeo.petpal.user.adopt.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.google.gson.FieldNamingPolicy;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.nobanryeo.petpal.user.adopt.service.AdoptService;
import com.nobanryeo.petpal.user.dto.AdoptDTO;
import com.nobanryeo.petpal.user.dto.AdoptPictureManageDTO;
import com.nobanryeo.petpal.user.dto.PictureDTO;
import com.nobanryeo.petpal.user.dto.UserInfoDTO;

@Controller
@RequestMapping("/user/*")
public class AdoptController {

	private final AdoptService adoptService; 
	
	
	@Autowired
	public AdoptController(AdoptService adoptService) {
		this.adoptService = adoptService;
	}
	
	@GetMapping("adopt")
	public String introAdopt() {
		List<AdoptPictureManageDTO> adoptList = new ArrayList<>();
		adoptList=adoptService.selectAdoptList();
//		
		System.out.println("adoptList in controller: "+adoptList);
		return "user/adopt/adoptPage";
	}
	
	@GetMapping("adoptData")
	@ResponseBody
	public ModelAndView selectAdoptMain(ModelAndView mv, HttpServletResponse response) {
		
		response.setContentType("application/json; charset=utf-8");
		List<AdoptPictureManageDTO> adoptList = new ArrayList<>();
		adoptList=adoptService.selectAdoptList();
		
//		System.out.println("adoptList in controller: "+adoptService.selectAdoptList());
		System.out.println("controller: "+adoptList);
		
		Gson gson = new GsonBuilder().setPrettyPrinting()
				.setFieldNamingPolicy(FieldNamingPolicy.IDENTITY)
				.serializeNulls().disableHtmlEscaping().create();
	
		mv.addObject("adoptList", gson.toJson(adoptList));
		mv.setViewName("jsonView");
		
		return mv;
	}
//	@GetMapping(value="adopt",produces = "application/json; charset=UTF-8")
//	@ResponseBody
//	public String selectAdoptMain() {
//		
//		
//		response.setContentType("application/json; charset=utf-8");
//		System.out.println("controller: "+adoptList);
//		
//		Gson gson = new GsonBuilder().setPrettyPrinting()
//				.setFieldNamingPolicy(FieldNamingPolicy.IDENTITY)
//				.serializeNulls().disableHtmlEscaping().create();
//		
//	mv.addObject("adoptList", gson.toJson(adoptList));
//	mv.setViewName("jsonView");
//		
//		return gson.toJson(adoptList);
//	}
	
	@GetMapping("adopt/terms")
	public String termsAdopt() {
		return "user/adopt/terms";
	}
	
	@GetMapping("adopt/write")
	public String writeAdoptInfo() {
		return "user/adopt/adoptBoardWrite";
	}
	
	@PostMapping("adopt/write1")
	@ResponseBody
	public ModelAndView putAdoptInfo(@ModelAttribute AdoptDTO adopt,ModelAndView mv, HttpServletRequest request,@RequestParam(name="picture",required=true) List<MultipartFile> picture, RedirectAttributes rttr, HttpSession session) {
		
//		int userCode = ((UserInfoDTO)session.getAttribute("loginUser")).getCode();
		
		//세선값 넣기
		adopt.setUserCode(5);
		System.out.println("controller adopt: "+adopt);
		System.out.println("controller picture: "+picture);
		
		
		
		String root = request.getSession().getServletContext().getRealPath("resources");
		System.out.println("root in controller: "+ root);
		
		String filePath = root + "\\uploadFiles";
		
		File mkdir = new File(filePath);
		if(!mkdir.exists()) {
			mkdir.mkdirs();
		}
		
		List<Map<String,String>> files = new ArrayList<>();
		

		for(int i=0; i<picture.size();i++) {
			
			/* 파일명 변경 처리*/
			String originFileName = picture.get(i).getOriginalFilename();
			String ext = originFileName.substring(originFileName.lastIndexOf("."));
			String saveName = UUID.randomUUID().toString().replace("-", "")+ext;
			
			Map<String,String> file = new HashMap<String, String>();
			file.put("originFileName", originFileName);
			file.put("saveName", saveName);
			file.put("filePath", filePath);
			
			files.add(file);
			
		}
		System.out.println(files);
		/* 파일을 저장한다,*/
		try {
			
			for(int i =0; i<picture.size();i++) {
				
				Map<String,String> file= files.get(i);

				picture.get(i).transferTo(new File(filePath +"\\"+file.get("saveName")));
				System.out.println("for문안의 file: "+ file);

				
				PictureDTO pictureDTO = new PictureDTO();
				pictureDTO.setPictureName(file.get("originFileName"));
				pictureDTO.setPictureDeleteYN("N");
				pictureDTO.setPictureURL(file.get("filePath"));
			}
			mv.addObject("message", "파일업로드 성공!!!");
		}catch(Exception e) {
			e.printStackTrace();
			
			/* 실패시 파일 삭제 */
			for(int i =0; i<picture.size();i++) {
				System.out.println("실패인가?");
				Map<String,String> file= files.get(i);
				new File(filePath +"\\"+ file.get("saveName")).delete();

		}
		
			mv.addObject("message", "파일업로드 실패!!");
		
		}
		
		PictureDTO pictureDTO = new PictureDTO();
		pictureDTO.setPictureDeleteYN("N");
		//pictureDTO.setPictureName(f);
		
		List<PictureDTO> pictureList = new ArrayList<>();
	
		
	
		/* Exception 핸들러 동작 확인 */
//		boolean test = true;
//		if(test) {
//			throw new MemberRegistException("당신은 우리와 함께 할 수 없습니다.");
//		}
		int result = adoptService.registAdopt(adopt, pictureList);
		System.out.println("controller result : "+ result);
		if(result>0) {
			rttr.addFlashAttribute("message", "입양글 등록에 성공하셨습니다.");
			
		}else {
			rttr.addFlashAttribute("message", "입양글 등록에 실패하셨습니다.");
		}
		mv.setViewName("jsonView");
		return mv;
	}
}
