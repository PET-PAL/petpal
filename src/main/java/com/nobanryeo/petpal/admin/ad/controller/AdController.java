package com.nobanryeo.petpal.admin.ad.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/*")
public class AdController {	
	
	   
	   @RequestMapping("user_login")
	   public String userLogin() {
	      
	      return "common/login";
	   }
	   @RequestMapping("admin_login")
	   public String adminLogin() {
	      
	      return "admin/main/manager_main";
	   }
	   
	   @RequestMapping("adApproveList")
	   public String adApproveList() {
	      
	      return "admin/main/adApproveList";
	   }
	  
	   
	   @RequestMapping("adApproveDetail")
	   public String adApproveDetail() {
	      
	      return "admin/main/adApproveDetail";
	   }
	   
	   
	   @RequestMapping("adList")
	   public String adList() {
	      
	      return "admin/main/adList";
	   }
	   
	   @RequestMapping("reviewList")
	   public String reviewList() {
	      
	      return "admin/main/reviewInfo";
	   }
	   
	   @RequestMapping("reviewDetail")
	   public String reviewDetail() {
	      
	      return "admin/main/reviewInfo_detail";
	   }
	   
	   @RequestMapping("reportList")
	   public String reportList() {
	      
	      return "admin/main/report";
	   }
	   
	   @RequestMapping("reportDetail")
	   public String reportDetail() {
	      
	      return "admin/main/report_detail";
	   }
	   
	   @RequestMapping("askList")
	   public String askList() {
	      
	      return "admin/main/ask_board";
	   }
	   
	   @RequestMapping("askDetail")
	   public String askDetail() {
	      
	      return "admin/main/ask_board_detail";
	   }
	   
	   @RequestMapping("newsLetterList")
	   public String newsLetterList() {
	      
	      return "admin/main/newsletterList";
	   }
	   
	   
	   
	   
}
