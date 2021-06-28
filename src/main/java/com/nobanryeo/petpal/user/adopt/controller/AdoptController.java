package com.nobanryeo.petpal.user.adopt.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.aspectj.lang.annotation.Pointcut;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
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
		System.out.println("adoptList in controller: "+adoptService.selectAdoptList());
		return "user/adopt/adoptPage";
	}
	
	@GetMapping("adoptData")
	@ResponseBody
	public ModelAndView selectAdoptMain(ModelAndView mv, HttpServletResponse response) {
		
		response.setContentType("application/json; charset=utf-8");
		List<AdoptPictureManageDTO> adoptList = new ArrayList<>();
		adoptList=adoptService.selectAdoptList();
////		
//		System.out.println("adoptList in controller: "+adoptService.selectAdoptList());
		System.out.println("controller: "+adoptList);
		
		Gson gson = new GsonBuilder().setPrettyPrinting()
				.setFieldNamingPolicy(FieldNamingPolicy.IDENTITY)
				.serializeNulls().disableHtmlEscaping().create();
	
		mv.addObject("adoptList", gson.toJson(adoptService.selectAdoptList()));
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
	public void putAdoptInfo() {}
	
	@PostMapping("adopt/write")
	public String putAdoptInfo(@ModelAttribute AdoptDTO adopt, HttpServletRequest request,@RequestParam(name="picture",required=true) MultipartFile picture, RedirectAttributes rttr, HttpSession session) {
		System.out.println("controller adopt: "+adopt);
		System.out.println("controller picture: "+picture);
		
		int userCode = ((UserInfoDTO)session.getAttribute("loginUser")).getCode();
		
		adopt.setUserCode(userCode);
		
		String root = request.getSession().getServletContext().getRealPath("resources");
		System.out.println("root in controller: "+ root);
		
		String filePath = root + "\\uploadFiles";
		
		File mkdir = new File(filePath);
		if(!mkdir.exists()) {
			mkdir.mkdirs();
		}
		
		String originFileName = "";
		String ext = "";
		String changeName = "";
		
		if(picture.getSize() > 0) {
			originFileName = picture.getOriginalFilename();
			ext = originFileName.substring(originFileName.lastIndexOf("."));
			changeName = UUID.randomUUID().toString().replace("-",  "");
			
			try {
				picture.transferTo(new File(filePath + "\\" + changeName + ext));
			} catch (IOException e) {
				e.printStackTrace();
				
				new File(filePath + "\\" + changeName + ext).delete();
				System.out.println("tk");
//				throw new MemberRegistException("사진 업로드 때문에 회원 가입 실패함!");
			}
		}
			
	
		/* Exception 핸들러 동작 확인 */
//		boolean test = true;
//		if(test) {
//			throw new MemberRegistException("당신은 우리와 함께 할 수 없습니다.");
//		}
		int result = adoptService.registAdopt(adopt);
		
		if(result>0) {
			
			rttr.addFlashAttribute("message", "입양글 등록에 성공하셨습니다.");
		}else {
		new File(filePath + "\\" + changeName + ext).delete();
//			throw new MemberRegistException("당신은 우리와 함께 할 수 없습니다.");
		}
		
		return "redirect:/user/adopt";
	}
}
