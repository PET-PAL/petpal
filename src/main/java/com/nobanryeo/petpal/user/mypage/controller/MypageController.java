package com.nobanryeo.petpal.user.mypage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user/*")
public class MypageController {

	@GetMapping("mypage")
	public String mypageLoad() {
		return "user/mypage/mypage";
	}
	
	@GetMapping("account")
	public String accountPage() {
		return "user/mypage/accountManagement";
	}
	
	@GetMapping("message")
	public String message() {
		return "user/mypage/message";
	}
	
	@GetMapping("boardCommentList")
	public String boardList() {
		return "user/mypage/boardCommentList";
	}
	@GetMapping("qnaReportList")
	public String qnaReportList() {
		return "user/mypage/qnaReportList";
	}
	@GetMapping("adList")
	public String adList() {
		return "user/mypage/adList";
	}
	
	@GetMapping("adminMain")
	public String adminMain() {
		return "admin/main/manager_main";
	}
	
}
