package com.nobanryeo.petpal.admin.review.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.nobanryeo.petpal.admin.dto.AdminPageInfoDTO;
import com.nobanryeo.petpal.admin.dto.AdminReviewDTO;
import com.nobanryeo.petpal.admin.review.service.AdminReviewService;

@Controller
@RequestMapping("/admin/*") 
public class AdminReviewController {
	
	private final AdminReviewService reviewService;
	
	public AdminReviewController(AdminReviewService reviewService) {
		this.reviewService = reviewService;
	}
	@RequestMapping("reviewList")
    public String reviewList(Model model , AdminPageInfoDTO paging,
            @RequestParam(value="nowPage", required=false)String nowPage
            , @RequestParam(value="cntPerPage", required=false)String cntPerPage
            , @RequestParam(value="category", required=false)String category
            , @RequestParam(value="searchCondition", required=false)String searchCondition
            , @RequestParam(value="searchValue", required=false)String searchValue
            , @RequestParam(value="sortValue", required=false)String sortValue) {
       
		if (nowPage == null && cntPerPage == null) {
            nowPage = "1";
            cntPerPage = "5";
         } else if (nowPage == null) {
            nowPage = "1";
         } else if (cntPerPage == null) { 
            cntPerPage = "5";
         }
	   	if(category == null) {
	   		category = "0";
	   	}
	   	
	   	if(searchValue == null) {
    		int total = 0;
        	AdminPageInfoDTO cat = new AdminPageInfoDTO(category);
      	    total = reviewService.selectReviewCount(cat);
        	paging = new AdminPageInfoDTO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage),category,sortValue);
        	model.addAttribute("paging", paging);
            model.addAttribute("total",total);
            model.addAttribute("category", category);
            model.addAttribute("sortValue",sortValue);
            
            
            List<AdminReviewDTO> reviewList = reviewService.selectReview(paging);
        	System.out.println(reviewList);
            model.addAttribute("reviewList", reviewList);
    	}else {
    		int total = 0;
        	AdminPageInfoDTO cat = new AdminPageInfoDTO(category,searchCondition,searchValue);
      	    total = reviewService.selectReviewCount(cat);
        	paging = new AdminPageInfoDTO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage),category,searchCondition,searchValue,sortValue);
        	model.addAttribute("paging", paging);
            model.addAttribute("total",total);
            model.addAttribute("category", category);
            model.addAttribute("sortValue",sortValue);
            model.addAttribute("searchCondition", searchCondition);
            model.addAttribute("searchValue", searchValue);
            
            List<AdminReviewDTO> reviewList = reviewService.selectReview(paging);
        	System.out.println(reviewList);
            model.addAttribute("reviewList", reviewList);
    		
    		
    	}
		
		
       return "admin/main/reviewInfo";
    }
    
    @RequestMapping("reviewDetail")
    public String reviewDetail() {
       
       return "admin/main/reviewInfo_detail";
    }
}
