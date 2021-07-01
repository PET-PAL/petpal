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
import com.nobanryeo.petpal.user.ad.service.FreeBoardService;
import com.nobanryeo.petpal.user.dto.AdDTO;
import com.nobanryeo.petpal.user.dto.FreeBoardDTO;
import com.nobanryeo.petpal.user.dto.FreeBoardReplyDTO;
import com.nobanryeo.petpal.user.dto.FreeBoardReportDTO;
import com.nobanryeo.petpal.user.dto.MessageTableDTO;
import com.nobanryeo.petpal.user.dto.PictureDTO;
import com.nobanryeo.petpal.user.dto.UserInfoDTO;

/**
 * @author WEENARA
 * 자유게시판 Controller
 */
@Controller
@RequestMapping("/user/*")
public class FreeBoardController {

    private final FreeBoardService freeBoardService;
    
    @Autowired
    public FreeBoardController(FreeBoardService freeBoardService) {
       
       this.freeBoardService = freeBoardService;
    }
    
    /**
     * 자유게시판 전체 게시글 조회
     */
    @GetMapping("select/freeboard/list")
    public String selectFreeBoardList(Model model) {
       
       model.addAttribute("freeBoardList", freeBoardService.selectFreeBoardList());
       
       return "user/community/freeBoardList";
    }
    
    /**
     * 자유게시판 상세 내용 조회
     * 게시글 내용, 사진, 댓글
     */
    @GetMapping("select/freeboard/detail")
    public String selectFreeBoardDetail(Model model, @RequestParam int boardCode) {
       
       // 조회수 카운트
       freeBoardService.updateFreeBoardViews(boardCode);
       
       // 상세 내용 조회      
       model.addAttribute("freeBoardDetail", freeBoardService.selectFreeBoardDetail(boardCode));
       // 게시글 사진 조회
       model.addAttribute("freeBoardImg", freeBoardService.selectFreeBoardImg(boardCode));
       // 댓글 내용 조회
       model.addAttribute("freeBoardReply", freeBoardService.selectFreeBoardReply(boardCode));
       
       return "user/community/freeBoardDetail";
    }
    
    /**
     * 자유게시판 댓글 작성
     */
    @PostMapping("insert/freeboard/reply")
    public String insertFreeBoardReply(@ModelAttribute FreeBoardReplyDTO reply, Model model, @RequestParam int code, @SessionAttribute UserInfoDTO loginUser) {
       
       reply.setBoardCode(code);
       reply.setUserCode(loginUser.getCode());
       System.out.println(reply);
       
       if(freeBoardService.insertFreeBoardReply(reply) > 0) {
          System.out.println("댓글 등록 성공");
       } else {
          System.out.println("댓글 등록 실패");
       }
             
       return "redirect:/user/select/freeboard/detail?boardCode="+code;
    }
    
    /**
     * 쪽지 작성
     */
    @PostMapping("insert/freeboard/message")
    public String insertFreeBoardMessage(@ModelAttribute MessageTableDTO message, Model model, @RequestParam int code, @RequestParam String receiveUserNick, @SessionAttribute UserInfoDTO loginUser) {
       
 	  message.setReceiveUserNick(receiveUserNick);
       message.setUserCode(loginUser.getCode());
       System.out.println(message);
       
       if(freeBoardService.insertFreeBoardMessage(message) > 0) {
          System.out.println("쪽지 전송 성공");
       } else {
          System.out.println("쪽지 전송 실패");
       }
       
       return "redirect:/user/select/freeboard/detail?boardCode="+code;
    }
    
    /**
     * 자유게시판 신고 작성
     */
    @PostMapping("insert/freeboard/report")
    public String insertFreeBoardReport(@ModelAttribute FreeBoardReportDTO report, Model model, @RequestParam int code, @SessionAttribute UserInfoDTO loginUser) {
       
       report.setUserCode(loginUser.getCode());
       report.setBoardCode(code);
       
       System.out.println(report);
       
       if(freeBoardService.insertFreeBoardReport(report) > 0) {
          System.out.println("신고 성공");
       } else {
          System.out.println("신고 실패");
       }
       
       return "redirect:/user/select/freeboard/detail?boardCode="+code;
    }
   
    /**
     * 자유게시판 댓글 신고 작성
     */
    @PostMapping("insert/freeboard/reportReply")
    public String insertFreeBoardReportReply(@ModelAttribute FreeBoardReplyDTO replyReport, Model model, @RequestParam int code, @RequestParam String inputReplyCode, @RequestParam String inputuserCode1, @SessionAttribute UserInfoDTO loginUser) {
       
 	  replyReport.setUserCode(loginUser.getCode());
 	  replyReport.setReplyCode(Integer.parseInt(inputReplyCode));
 	  replyReport.setBoardCode(code);
 	  replyReport.setUserCode1(Integer.parseInt(inputuserCode1));
       
       System.out.println(replyReport);
       
       if(freeBoardService.insertFreeBoardReplyReport(replyReport) > 0) {
          System.out.println("신고 성공");
       } else {
          System.out.println("신고 실패");
       }
       
       return "redirect:/user/select/freeboard/detail?boardCode="+code;
    }
    
    /**
     * 자유게시판 글작성 페이지 이동
  	*/
    @GetMapping("insert/freeboard")
    public String writeFreeBoard(Model model, @SessionAttribute UserInfoDTO loginUser) {
 	   
 	   model.addAttribute("writeUser", freeBoardService.writeFreeBoard(loginUser.getCode()));
 	   
 	   return "/user/community/freeBoardWrite";
    }
	
	/**
	 * 자유게시판 게시글 작성 이미지 업로드
	 */
	@PostMapping(value="insert/freeboardImg", produces ="application/json")
	@ResponseBody
	public String insertFreeBoardFile(Model model, @SessionAttribute UserInfoDTO loginUser, @RequestParam("file") MultipartFile multipartFile, HttpServletRequest request) {
		
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
	 * 자유게시판 게시글 작성
	 */
	@PostMapping("insert/write/freeboard")
	public String insertWriteFreeBoard(Model model, @ModelAttribute FreeBoardDTO freeBoard, @ModelAttribute PictureDTO picture, @SessionAttribute UserInfoDTO loginUser) {
		
		freeBoard.setUserCode(loginUser.getCode());
		picture.setUserCode(loginUser.getCode());
		
		System.out.println(freeBoard);
		System.out.println(picture);
		
		// 게시글 insert
		if(freeBoardService.insertWriteFreeBoard(freeBoard) > 0) {
			System.out.println("게시글 작성 성공");
		} else {
			System.out.println("게시글 작성 실패");
		}
		
		// 이미지 insert
		if(freeBoardService.insertFreeBoardImg(picture) > 0) {
			System.out.println("이미지 작성 성공");
		} else {
			System.out.println("이미지 작성 실패");
		}
		
		// 이미지 관리 테이블 insert
//		if(freeBoardService.insertFreeBoardImg2(picture) > 0) {
//			System.out.println("이미지 관리 작성 성공");
//		} else {
//			System.out.println("이미지 관리 작성 실패");
//		}
		
		return "redirect:/user/select/freeboard/list";
		
	}
}