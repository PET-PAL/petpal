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
import com.nobanryeo.petpal.user.dto.FreeBoardReplyDTO;
import com.nobanryeo.petpal.user.dto.FreeBoardReportDTO;
import com.nobanryeo.petpal.user.dto.FriendlyPlaceDTO;
import com.nobanryeo.petpal.user.dto.MessageTableDTO;
import com.nobanryeo.petpal.user.dto.PictureDTO;
import com.nobanryeo.petpal.user.dto.ShareInfoDTO;
import com.nobanryeo.petpal.user.dto.UserInfoDTO;

/**
 * @author WEENARA
 * 정보공유 게시판, 프렌들리플레이스게시판 Controller
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
    
    /**
     * 정보공유게시판 댓글 작성
     */
    @PostMapping("insert/shareInfo/reply")
    public String insertShareInfoReply(@SessionAttribute UserInfoDTO loginUser, @RequestParam int boardCode, @ModelAttribute FreeBoardReplyDTO reply) {
    	
    	reply.setBoardCode(boardCode);
    	reply.setUserCode(loginUser.getCode());
    	
    	if(shareInfoService.insertShareInfoReply(reply) > 0 ) {
    		System.out.println("댓글 작성 성공");
    	} else {
    		System.out.println("댓글 작성 실패");
    	}
    	
    	return "redirect:/user/select/shareInfo/detail?boardCode="+boardCode;
    }
    
    /**
     * 쪽지 보내기
     */
    @PostMapping("insert/shareInfo/message")
    public String insertShareInfoMessage(@SessionAttribute UserInfoDTO loginUser, @RequestParam int boardCode, @ModelAttribute MessageTableDTO message) {
    	
    	message.setUserCode(loginUser.getCode());
    	System.out.println(message);
    	
    	if(shareInfoService.insertShareInfoMessage(message) > 0) {
    		System.out.println("쪽지보내기 성공");
    	} else {
    		System.out.println("쪽지보내기 실패");
    	}
    	
    	return "redirect:/user/select/shareInfo/detail?boardCode="+boardCode;
    }
    
    /**
     * 정보공유게시판 게시글 신고
     */
    @PostMapping("insert/shareInfo/report")
    public String insertShareInfoReport(@SessionAttribute UserInfoDTO loginUser, @RequestParam int boardCode, @ModelAttribute FreeBoardReportDTO report) {
    	
    	report.setUserCode(loginUser.getCode());
    	report.setBoardCode(boardCode);
    	
    	if(shareInfoService.insertShareInfoReport(report) > 0) {
    		System.out.println("게시글 신고 성공");
    	} else {
    		System.out.println("게시글 신고 실패");
    	}
    	
    	return "redirect:/user/select/shareInfo/detail?boardCode="+boardCode;
    }
    
    /**
     * 정보공유게시판 댓글 신고
     */
    @PostMapping("insert/shareInfo/reportReply")
    public String insertShareInfoReportReply(@SessionAttribute UserInfoDTO loginUser, @RequestParam int boardCode, @ModelAttribute FreeBoardReplyDTO replyReport, @RequestParam String inputReplyCode, @RequestParam String inputuserCode1) {
    	
    	replyReport.setUserCode(loginUser.getCode());
    	replyReport.setReplyCode(Integer.parseInt(inputReplyCode));
    	replyReport.setUserCode1(Integer.parseInt(inputuserCode1));
    	System.out.println(replyReport);
    	
    	if(shareInfoService.insertShareInfoReportReply(replyReport) > 0) {
    		System.out.println("댓글신고 성공");
    	} else {
    		System.out.println("댓글신고 실패");
    	}
    	
    	return "redirect:/user/select/shareInfo/detail?boardCode="+boardCode;
    }
    
    /**
     * 정보공유 게시글 작성 페이지로 이동
     */
    @GetMapping("select/shareInfo")
    public String selectWriteShareInfo(Model model, @SessionAttribute UserInfoDTO loginUser) {
    	
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
	
	
	
	
	
	
	/**
     * 프렌들리 플레이스 게시판 리스트 조회
     */
    @GetMapping("select/sharePlace/list")
    public String selectSharePlaceList(Model model, HttpServletResponse response, HttpServletRequest request) {
    	
    	Cookie[] cookies = request.getCookies();
    	
    	for(Cookie cookie: cookies) {
    		
    		if(!(cookie.getName().equals("sharePlace"))) {
    			
    			cookie = new Cookie("sharePlace",null); 		//sharInfo라는 이름의 쿠키 생성
    			cookie.setComment("sharePlace 게시글 조회 확인");		//해당 쿠키가 어떤 용도인지 커멘트
    			response.addCookie(cookie);						//사용자에게 해당 쿠키를 추가
    			
    		}
    	}
       
        model.addAttribute("sharePlaceList", shareInfoService.selectSharePlaceList());
    	
    	return "user/main/sharePlace";
    }
    
    /**
     * 프렌들리 플레이스 게시판 상세내용 조회
     */
    @GetMapping("select/sharePlace/detail")
	public String selectSharePlaceDetail(@CookieValue(name = "sharePlace") String cookie, HttpServletResponse response,
			Model model , @RequestParam int boardCode) {
    	
    	if(!(cookie.contains(String.valueOf(boardCode)))) {
			
			cookie += boardCode + "/";
			
			// 조회수 카운트
			shareInfoService.updateSharePlaceViews(boardCode);
			
		}
    	
    	response.addCookie(new Cookie("sharePlace", cookie));
    	
    	// 상세 내용 조회      
        model.addAttribute("sharePlaceDetail", shareInfoService.selectSharePlaceDetail(boardCode));
        // 댓글 내용 조회
        model.addAttribute("sharePlaceReply", shareInfoService.selectSharePlaceReply(boardCode));
    	
    	return "user/main/sharePlaceDetail";
    }
    
    /**
     * 프렌들리 플레이스 게시판 댓글 작성
     */
    @PostMapping("insert/sharePlace/reply")
    public String insertSharePlaceReply(@SessionAttribute UserInfoDTO loginUser, @RequestParam int boardCode, @ModelAttribute FreeBoardReplyDTO reply) {
    	
    	reply.setBoardCode(boardCode);
    	reply.setUserCode(loginUser.getCode());
    	
    	if(shareInfoService.insertSharePlaceReply(reply) > 0 ) {
    		System.out.println("댓글 작성 성공");
    	} else {
    		System.out.println("댓글 작성 실패");
    	}
    	
    	return "redirect:/user/select/sharePlace/detail?boardCode="+boardCode;
    }
    
    /**
     * 쪽지보내기
     */
    @PostMapping("insert/sharePlace/message")
    public String insertSharePlaceMessage(@SessionAttribute UserInfoDTO loginUser, @RequestParam int boardCode, @ModelAttribute MessageTableDTO message) {
    	
    	message.setUserCode(loginUser.getCode());
    	System.out.println(message);
    	
    	if(shareInfoService.insertShareInfoMessage(message) > 0) {
    		System.out.println("쪽지보내기 성공");
    	} else {
    		System.out.println("쪽지보내기 실패");
    	}
    	
    	return "redirect:/user/select/sharePlace/detail?boardCode="+boardCode;
    }
    
    /**
     * 프렌들리 플레이스 게시판 게시글 신고
     */
    @PostMapping("insert/sharePlace/report")
    public String insertSharePlaceReport(@SessionAttribute UserInfoDTO loginUser, @RequestParam int boardCode, @ModelAttribute FreeBoardReportDTO report) {
    	
    	report.setUserCode(loginUser.getCode());
    	report.setBoardCode(boardCode);
    	
    	if(shareInfoService.insertSharePlaceReport(report) > 0) {
    		System.out.println("게시글 신고 성공");
    	} else {
    		System.out.println("게시글 신고 실패");
    	}
    	
    	return "redirect:/user/select/sharePlace/detail?boardCode="+boardCode;
    }
    
    /**
     * 프렌들리 플레이스 게시판 댓글 신고
     */
    @PostMapping("insert/sharePlace/reportReply")
    public String insertSharePlaceReportReply(@SessionAttribute UserInfoDTO loginUser, @RequestParam int boardCode, @ModelAttribute FreeBoardReplyDTO replyReport, @RequestParam String inputReplyCode, @RequestParam String inputuserCode1) {
    	
    	replyReport.setUserCode(loginUser.getCode());
    	replyReport.setReplyCode(Integer.parseInt(inputReplyCode));
    	replyReport.setUserCode1(Integer.parseInt(inputuserCode1));
    	System.out.println(replyReport);
    	
    	if(shareInfoService.insertShareInfoReportReply(replyReport) > 0) {
    		System.out.println("댓글신고 성공");
    	} else {
    		System.out.println("댓글신고 실패");
    	}
    	
    	return "redirect:/user/select/sharePlace/detail?boardCode="+boardCode;
    }
	
    /**
     * 프렌들리 플레이스 게시글 작성페이지로 이동
     */
    @GetMapping("select/write/sharePlace")
    public String selectWruteSharePlace(Model model, @SessionAttribute UserInfoDTO loginUser) {
    	
    	return "user/main/sharePlaceWrite";
    }
    
    /**
	 * 프렌들리 플레이스 게시글 작성 이미지 업로드
	 */
	@PostMapping(value="insert/sharePlaceImg", produces ="application/json")
	@ResponseBody
	public String insertSharePlaceFile(Model model, @SessionAttribute UserInfoDTO loginUser, @RequestParam("file") MultipartFile multipartFile, HttpServletRequest request) {
		
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
	 * 프렌들리 플레이스 게시글 작성
	 */
	@PostMapping("insert/write/sharePlace")
	public String insertWriteSharePlace(@ModelAttribute FriendlyPlaceDTO sharePlace, @SessionAttribute UserInfoDTO loginUser) {
		
		sharePlace.setUserCode(loginUser.getCode());
		System.out.println(sharePlace);
		
		if(shareInfoService.insertWriteShrePlace(sharePlace) > 1) {
			System.out.println("게시글 작성 성공");
		}
		
		return "redirect:/user/select/sharePlace/list";
	}
}
