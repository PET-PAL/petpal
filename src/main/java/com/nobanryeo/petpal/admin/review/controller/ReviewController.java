package com.nobanryeo.petpal.admin.review.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin/*") 
public class ReviewController {
	@RequestMapping("reviewList")
    public String reviewList() {
       
       return "admin/main/reviewInfo";
    }
    
    @RequestMapping("reviewDetail")
    public String reviewDetail() {
       
       return "admin/main/reviewInfo_detail";
    }
}
