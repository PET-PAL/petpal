package com.nobanryeo.petpal.user.ad.controller;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.UUID;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.JsonObject;
import com.nobanryeo.petpal.user.ad.service.ShareInfoService;
import com.nobanryeo.petpal.user.dto.PictureDTO;
import com.nobanryeo.petpal.user.dto.ShareInfoDTO;
import com.nobanryeo.petpal.user.dto.UserInfoDTO;

/**
 * @author WEENARA
 * 정보공유 게시판 Controller
 */
@Controller
@RequestMapping("/user/*")
public class ShareInfoController {

private final ShareInfoService shareInfoService;
    
    @Autowired
    public ShareInfoController(ShareInfoService shareInfoService) {
       
        this.shareInfoService = shareInfoService;
    }
    
    /**
     * 정보공유게시판 리스트 조회
     */
    @GetMapping("select/shareInfo/list")
    public String selectShareInfoList(Model model, HttpServletResponse response, HttpServletRequest request) {
    	
    	Cookie[] cookies = request.getCookies();
    	
    	for(Cookie cookie: cookies) {
    		
    		if(!(cookie.getName().equals("shareInfo"))) {
    			
    			cookie = new Cookie("shareInfo",null); 			//sharInfo라는 이름의 쿠키 생성
    			cookie.setComment("shareInfo 게시글 조회 확인");		//해당 쿠키가 어떤 용도인지 커멘트
    			response.addCookie(cookie);						//사용자에게 해당 쿠키를 추가
    			
    		}
    	}
       
        model.addAttribute("shareInfoList", shareInfoService.selectShareInfoList());
    	
    	return "user/main/shareInfo";
    }
	
    /**
     * 정보공유게시판 상세내용 조회
     */
    @GetMapping("select/shareInfo/detail")
    public String selectShareInfoDetail(@CookieValue(name = "shareInfo") String cookie, HttpServletResponse response, Model model, @RequestParam int boardCode) {
    	
    	if(!(cookie.contains(String.valueOf(boardCode)))) {
			
			cookie += boardCode + "/";
			
			// 조회수 카운트
			shareInfoService.updateShareInfoViews(boardCode);
			
		}
    	
    	response.addCookie(new Cookie("shareInfo", cookie));
    	
    	// 상세 내용 조회      
        model.addAttribute("shareInfoDetail", shareInfoService.selectShareInfoDetail(boardCode));
        // 댓글 내용 조회
        model.addAttribute("shareInfoReply", shareInfoService.selectShareInfoReply(boardCode));
    	
    	return "user/main/shareInfoDetail";
    }
    
    @PostMapping("insert/shareInfo/reply")
    public String insertShareInfoReply(@SessionAttribute UserInfoDTO loginUser, @RequestParam int code) {
    	
    	return "redirect:/user/select/shareInfo/detail?boardCode="+code;
    }
    
    /**
     * 정보공유 게시글 작성 페이지로 이동
     */
    @GetMapping("select/shareInfo")
    public String selectaa(Model model, @SessionAttribute UserInfoDTO loginUser) {
    	
    	model.addAttribute("writeUser", shareInfoService.writeShareInfo(loginUser.getCode()));
    	
    	return "user/main/shareInfoWrite";
    }
    
    /**
	 * 정보공유 게시글 작성 이미지 업로드
	 */
	@PostMapping(value="insert/shareInfoImg", produces ="application/json")
	@ResponseBody
	public String insertShareInfoFile(Model model, @SessionAttribute UserInfoDTO loginUser, @RequestParam("file") MultipartFile multipartFile, HttpServletRequest request) {
		
		JsonObject jsonObject = new JsonObject();
		  
		String fileRoot = request.getSession().getServletContext().getRealPath("resources");	// 저장될 파일 경로
		String filePath = fileRoot + "\\uploadFiles";
		String pictureName = multipartFile.getOriginalFilename(); //오리지날 파일명 String
		String extension = pictureName.substring(pictureName.lastIndexOf(".")); //파일 확장자
		
		String pictureNewName = UUID.randomUUID().toString().replace("-", "") + extension; //저장될 파일 명
		
		File pictureURL = new File(filePath + "\\" + pictureNewName);
		
		try { 
			InputStream fileStream = multipartFile.getInputStream();
			FileUtils.copyInputStreamToFile(fileStream, pictureURL); //파일 저장
			jsonObject.addProperty("url", "/petpal/resources/uploadFiles/" + pictureNewName);
			jsonObject.addProperty("responseCode", "success");
			
			jsonObject.addProperty("pictureName", pictureName);
			jsonObject.addProperty("pictureURL", filePath);
			jsonObject.addProperty("pictureNewName", pictureNewName);
			jsonObject.addProperty("pictureUtilPath", "resources\\uploadFiles\\" + pictureNewName);
			
		
		} catch (IOException e) { 
			FileUtils.deleteQuietly(pictureURL); //저장된 파일 삭제
			jsonObject.addProperty("responseCode", "error");
			e.printStackTrace();
		}
		
		return jsonObject.toString();
	}
	
	/**
	 * 정보공유게시판 게시글 작성
	 */
	@PostMapping("insert/write/shareInfo")
	public String insertWriteShareInfo(@ModelAttribute ShareInfoDTO shareInfo, @ModelAttribute PictureDTO picture, @SessionAttribute UserInfoDTO loginUser) {
		
		shareInfo.setUserCode(loginUser.getCode());
		
		if(shareInfoService.inserWriteShreInfo(shareInfo) > 1) {
			System.out.println("게시글 작성 성공");
		}
		
		return "redirect:/user/select/shareInfo/list";
	}
}
