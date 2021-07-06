package com.nobanryeo.petpal.user.adopt.controller;

import java.io.File;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.google.gson.FieldNamingPolicy;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.nobanryeo.petpal.user.adopt.service.MissingService;
import com.nobanryeo.petpal.user.dto.MissingDTO;
import com.nobanryeo.petpal.user.dto.MissingPictureDTO;
import com.nobanryeo.petpal.user.dto.PictureDTO;
import com.nobanryeo.petpal.user.dto.UserInfoDTO;

@Controller
@RequestMapping("/user/*")
public class MissingController {
	
	private final MissingService missingService;
	
	@Autowired
	public MissingController(MissingService missingService) {
		this.missingService = missingService;
	}

	@GetMapping("missing")
	public String missingBoard() {
		return "user/missing/missingPage";
	}
	
	@GetMapping("missingList")
	@ResponseBody
	public ModelAndView misssingBoard(ModelAndView mv, HttpServletResponse response) {
		
		response.setContentType("application/json; charset=utf-8");
		List<MissingPictureDTO> missingList = new ArrayList<>();
		missingList=missingService.selectMissingList();
		
		System.out.println("controller: "+missingList);
		
		Gson gson = new GsonBuilder().setPrettyPrinting()
				.setFieldNamingPolicy(FieldNamingPolicy.IDENTITY)
				.serializeNulls().disableHtmlEscaping().create();
	
		mv.addObject("missingList", gson.toJson(missingList));
		mv.setViewName("jsonView");
		
		return mv;
	}
	
	@GetMapping("missing/write")
	public String missingWrite() {
		
		return "user/missing/missingBoardWrite";
	}
	
	@PostMapping("missing/write")
	public String insertMissingWrite(@ModelAttribute MissingDTO missing, Model model,HttpServletRequest request,@RequestParam(name="picture",required=true) List<MultipartFile> picture, RedirectAttributes rttr, HttpSession session) throws ParseException {
		
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		java.util.Date utilDate = dateFormat.parse(request.getParameter("missingDate"));
		java.sql.Date missingDate = new java.sql.Date(utilDate.getTime());
		
		missing.setMissingDate(missingDate);
		int userCode = ((UserInfoDTO)session.getAttribute("loginUser")).getCode();
		
		missing.setUserCode(userCode);
		
		System.out.println("controller missing: "+missing);
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
			file.put("utilPath", "resources\\uploadFiles\\"+saveName);
			
			files.add(file);
			
		}
		System.out.println(files);
		/* 파일을 저장한다,*/
		List<PictureDTO> pictureList = new ArrayList<>();
		try {
			for(int i =0; i<picture.size();i++) {
				
				Map<String,String> file= files.get(i);

				picture.get(i).transferTo(new File(filePath +"\\"+file.get("saveName")));
				System.out.println("for문안의 file: "+ file);

				
				PictureDTO pictureDTO = new PictureDTO();
				pictureDTO.setPictureName(file.get("originFileName"));
				pictureDTO.setPictureDeleteYN("N");
				pictureDTO.setPictureURL(file.get("filePath"));
				pictureDTO.setPictureNewName(file.get("saveName"));
				pictureDTO.setPictureUtilPath(file.get("utilPath"));
				
				pictureList.add(pictureDTO);
			}
			model.addAttribute("message", "파일업로드 성공!!!");
		}catch(Exception e) {
			e.printStackTrace();
			
			/* 실패시 파일 삭제 */
			for(int i =0; i<picture.size();i++) {
				System.out.println("실패인가?");
				Map<String,String> file= files.get(i);
				new File(filePath +"\\"+ file.get("saveName")).delete();

		}
		
			model.addAttribute("message", "파일업로드 실패!!");
		
		}
		
		int result = missingService.insertMissingWrite(missing,pictureList);
		
		int boardCode = missing.getBoardCode();
		
		if(result>0) {
			rttr.addFlashAttribute("message", "sucess");
		}else {
			rttr.addFlashAttribute("message", "fail");
		}
		return "redirect:/user/missing/detail/"+boardCode;
	}
	
	@GetMapping("missing/detail/{boardCode}")
	public String missingDetail() {
		
		return "user/missing/missingDetail";
	}
}
