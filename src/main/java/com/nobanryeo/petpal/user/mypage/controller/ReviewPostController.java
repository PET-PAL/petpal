package com.nobanryeo.petpal.user.mypage.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.nobanryeo.petpal.user.dto.PageDTO;
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
		
		model.addAttribute("review", reviewService.selectReviewDetail(boardCode));
		model.addAttribute("reply", reviewService.selectReviewReply(boardCode));
		System.out.println(reviewService.selectReviewReply(boardCode));
		
		
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
	
	
	

}




















