package com.nobanryeo.petpal.user.ad.controller;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.JsonObject;
import com.nobanryeo.petpal.user.ad.service.UserAdService;
import com.nobanryeo.petpal.user.dto.AdDTO;
import com.nobanryeo.petpal.user.dto.AdQnADTO;
import com.nobanryeo.petpal.user.dto.UserInfoDTO;

/**
 * @author WEENARA
 * 사용자 광고 Controller
 */
@Controller
@RequestMapping("/user/*")
public class UserAdController {

	private final UserAdService adService;
		
	@Autowired
	public UserAdController(UserAdService adService) {
			
		this.adService = adService;
	}
	
	/**
	 * 광고 신청 내역 조회
	 */
	@GetMapping("select/ad/list")
	public String selectAdList(Model model, @SessionAttribute UserInfoDTO loginUser) {
		
		AdDTO adDTO = new AdDTO();
		adDTO.setUserCode(loginUser.getCode());
		
		model.addAttribute("adList", adService.selectAdList(adDTO));
		
		// 광고 클릭수 조회
		model.addAttribute("adPaymentList", adService.selectAdPaymentList(adDTO));
		
		return "user/mypage/adList";
	}
	
	/**
	 * 광고 신청 상세 내용 조회(광고 기본 정보)
	 */
	@GetMapping("select/adApply/detail")
	public String selectAdApplyDetail(Model model, @RequestParam int adCode, @SessionAttribute UserInfoDTO loginUser) {
		
		AdDTO adDTO = new AdDTO();
		adDTO.setUserCode(loginUser.getCode());
		adDTO.setAdCode(adCode);
		
		model.addAttribute("adApplyDetail", adService.selectAdApplyDetail(adDTO));
		
		return "user/mypage/adApplyDetail";
	}
	
	/**
	 * 광고 신청 상세 내용 조회(상세 내용)
	 */
	@GetMapping("select/adApply/detail2")
	public String selectAdApplyDetail2(Model model, @RequestParam int adCode, @SessionAttribute UserInfoDTO loginUser) {
		
		AdDTO adDTO = new AdDTO();
		adDTO.setUserCode(loginUser.getCode());
		adDTO.setAdCode(adCode);
		
		model.addAttribute("adApplyDetail", adService.selectAdApplyDetail(adDTO));
		
		return "user/mypage/adApplyDetail2";
	}
	
	/**
	 * 광고문의 페이지로 이동
	 */
	@RequestMapping("write/adQnA")
	public String writeAdQnA(Model model, @SessionAttribute UserInfoDTO loginUser) {
		
		model.addAttribute("writeAdQnA", loginUser.getNikname());
		
		return "user/mypage/adQna";
	}
	
	/**
	 * 광고문의 작성
	 */
	@PostMapping("insert/adQnA")
	public String insertAdQnA(@ModelAttribute AdQnADTO adQnA, @SessionAttribute UserInfoDTO loginUser) {
		
		adQnA.setUserCode(loginUser.getCode());
		
		if(adService.insertAdQnA(adQnA) > 0) {
			System.out.println("광고 문의 작성 성공");
		} else {
			System.out.println("광고 문의 작성 실패");
		}
		
		return "redirect:/";
	}
	
	/**
	 * 광고신청 첫페이지
	 */
	@RequestMapping("select/adsubmit")
	public String AdSubmit1(@SessionAttribute UserInfoDTO loginUser) {
		
		return "user/banner/adSubmit1";	
	}
	
	/**
	 * 광고신청 두번째 페이지
	 */
	@RequestMapping("select/adsubmit2")
	public String AdSubmit2(@SessionAttribute UserInfoDTO loginUser) {
		
		return "user/banner/adSubmit2";	
	}
	
	/**
	 * 광고신청 두번째 페이지 기본정보 넣기
	 */
	@RequestMapping("insert/adsubmit2")
	public String insertAdSubmit2(@ModelAttribute AdDTO adDTO, Model model, @SessionAttribute UserInfoDTO loginUser) {
		
		adDTO.setUserCode(loginUser.getCode());
		
		// adTypeCode 넣어주기
		if(adDTO.getAdTypeName().equals("그 외") && adDTO.getAdWeek() == 1) {
			adDTO.setAdTypeCode(1);
		} else if(adDTO.getAdTypeName().equals("그 외") && adDTO.getAdWeek() == 2) {
			adDTO.setAdTypeCode(3);
		} else if(adDTO.getAdTypeName().equals("장소") && adDTO.getAdWeek() == 1) {
			adDTO.setAdTypeCode(2);
		} else if(adDTO.getAdTypeName().equals("장소") && adDTO.getAdWeek() == 2) {			
			adDTO.setAdTypeCode(4);
		}

		model.addAttribute("insertAdSubmit2", adDTO);
		
		return "user/banner/adSubmit3";
	}
	
	/**
	 * 광고신청 세번째 페이지 광고 이미지 업로드
	 */
	@PostMapping(value="insert/imgTest", produces ="application/json")
	@ResponseBody
	public String insertAdSubmitFile(@ModelAttribute AdDTO adDTO, Model model, @SessionAttribute UserInfoDTO loginUser, @RequestParam("file") MultipartFile multipartFile, HttpServletRequest request) {
		
		JsonObject jsonObject = new JsonObject();
		  
		String fileRoot = request.getSession().getServletContext().getRealPath("resources");	// 저장될 파일 경로
		String filePath = fileRoot + "\\uploadFiles";
		String pictureName = multipartFile.getOriginalFilename(); //오리지날 파일명 String
		String extension = pictureName.substring(pictureName.lastIndexOf("."));
		//파일 확장자
		
		String pictureNewName = UUID.randomUUID().toString().replace("-", "") + extension; //저장될 파일 명
		
		File pictureUrl = new File(filePath + "\\" + pictureNewName);
		
		try { 
			InputStream fileStream = multipartFile.getInputStream();
			FileUtils.copyInputStreamToFile(fileStream, pictureUrl); //파일 저장
			jsonObject.addProperty("url", filePath + "\\" + pictureNewName);
//			jsonObject.addProperty("url", "file:///C:/Users/WEENARA/git/petpal/src/main/webapp/resources/uploadFiles/3e55474907894bc2a32c402907e09d08.jpg");
			jsonObject.addProperty("responseCode", "success");
			
			jsonObject.addProperty("pictureName", pictureName);
			jsonObject.addProperty("pictureUrl", filePath);
			jsonObject.addProperty("pictureNewName", pictureNewName);
			jsonObject.addProperty("pictureUtilPath", "resources\\uploadFiles\\" + pictureNewName);
			
		
		} catch (IOException e) { 
			FileUtils.deleteQuietly(pictureUrl); //저장된 파일 삭제
			jsonObject.addProperty("responseCode", "error");
			e.printStackTrace();
		}
		
		return jsonObject.toString();
	}
	
	/**
	 * 광고신청 세번째 페이지 광고 내용 insert
	 */
	@PostMapping("insert/adsubmit3")
	public String insertAdSubmit3(@ModelAttribute AdDTO adDTO, Model model, @SessionAttribute UserInfoDTO loginUser) {
		
		System.out.println(adDTO);		
		
		adDTO.setUserCode(loginUser.getCode());
		
		System.out.println(adDTO);		
		
		if(adService.insertAdSubmit(adDTO) > 0) {
			System.out.println("광고신청1 성공");
		} else {
			System.out.println("광고신청1 실패");
		}
		if(adService.insertAdSubmit2(adDTO) > 0) {
			System.out.println("광고신청2 성공");
		} else {
			System.out.println("광고신청2 실패");
		}
		
		return "redirect:/";
	}
	
	
	   
	 

}
