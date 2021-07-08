package com.nobanryeo.petpal.user.mypage.controller;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;
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
import com.nobanryeo.petpal.user.dto.PageDTO;
import com.nobanryeo.petpal.user.dto.PictureDTO;
import com.nobanryeo.petpal.user.dto.ReviewDTO;
import com.nobanryeo.petpal.user.dto.UserInfoDTO;
import com.nobanryeo.petpal.user.mypage.service.ReviewPostService;

@Controller
@RequestMapping("/user/*")
public class ReviewPostController {
	
	private ReviewPostService reviewService;
	
	public ReviewPostController(ReviewPostService reviewService) {
		this.reviewService = reviewService;
	}
	
	/**
	 * 리뷰 리스트
	 * @param model
	 * @param reviewDTO
	 * @param page
	 * @param nowPage
	 * @param cntPerPage
	 * @return
	 */
	@GetMapping("review")
	public String review(Model model, ReviewDTO reviewDTO, PageDTO page
			, @RequestParam(value="nowPage", required = false)String nowPage
			, @RequestParam(value="cntPerPage", required = false)String cntPerPage) {
		
		int total = reviewService.selectReviewPostCount();
		
		System.out.println("토탈 카운트 : " + total);
		System.out.println("nowPage : " + nowPage);
		System.out.println("cntPerPage : " + cntPerPage);
		
		
		if(nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "10";
		} else if(nowPage == null) {
			nowPage = "1";
		} else if(cntPerPage == null) {
			cntPerPage = "10";
		}
		
		page = new PageDTO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		
		System.out.println("문의 현재 페이지 : " + page.getNowPage());
		System.out.println("문의 마지막 페이지 : " + page.getEnd());
		System.out.println("문의 페이지당 글 갯수 : " + page.getCntPerPage());
		
		List<ReviewDTO> reviewList = reviewService.selectReviewPostList(page);
		
		System.out.println(reviewList);
		
		model.addAttribute("paging", page);
		model.addAttribute("reviewList", reviewList);
		
		return "user/community/reviewList";
	}
	
	/**
	 * 리뷰디테일 출력
	 * @param boardCode
	 * @param model
	 * @return
	 */
	@GetMapping("review/reviewDetail")
	public String reviewDetail(@RequestParam int boardCode, Model model) {
		
		//조회수업
		reviewService.updateViewsCount(boardCode);
		
		//게시"글"
		model.addAttribute("review", reviewService.selectReviewDetail(boardCode));
		//댓글
		model.addAttribute("reply", reviewService.selectReviewReply(boardCode));
		//사진
		model.addAttribute("reviewImg", reviewService.selectReviewImg(boardCode));
		
		
		return "user/community/reviewDetail";
	}
	
	/**
	 * 글작성 페이지 띄우기
	 * @param model
	 * @param loginUser
	 * @return
	 */
	@GetMapping("review/reviewWrite")
	public String reviewWrite(Model model, @SessionAttribute UserInfoDTO loginUser) {
		
		return "user/community/reviewDetailWrite";
	}
	
	@PostMapping(value = "/insert/reviewboardImg", produces ="application/json")
	@ResponseBody
	public String insertReviewBoardFile(Model model, @SessionAttribute UserInfoDTO loginUser
			, @RequestParam("file") MultipartFile multipartFile, HttpServletRequest request) {
		
		JsonObject jsonObject = new JsonObject();
		  
		String fileRoot = request.getSession().getServletContext().getRealPath("resources"); // 저장될 파일 경로
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
	
	@PostMapping(value = "review/reviewWrite/insertBoard")
	public String insertWriteReviewBoard(Model model, @ModelAttribute ReviewDTO reviewDTO, @ModelAttribute PictureDTO picture, @SessionAttribute UserInfoDTO loginUser) {
		
		reviewDTO.setUserCode(loginUser.getCode());
		picture.setUserCode(loginUser.getCode());
		
		System.out.println(reviewDTO);
		System.out.println(picture);
		
		// 게시글 insert
		if(reviewService.insertWriteReviewBoard(reviewDTO) > 0) {
			System.out.println("게시글 작성 성공~!!~!~!~~~~~~~!!!!!!!!!!!!!!!!!!~~~~~~~~!!~~!~!");
		} else {
			System.out.println("게시글 작성 실패...............................................................");
		}
		
		// 이미지 insert. 단, 이미지 없을때 insert 안해준다
		if(picture.getPictureName().equals("")) {
			
		} else {
			
			if(reviewService.insertReviewBoardImg(picture) > 0) {
				System.out.println("이미지 작성 성공!!!!!!!");
			} else {
				System.out.println("이미지 작성 실패.............");
			}
			
		}
		
		return "redirect:/user/review";
		
	}
	
	

}




















