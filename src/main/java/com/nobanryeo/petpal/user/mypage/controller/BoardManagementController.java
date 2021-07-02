package com.nobanryeo.petpal.user.mypage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user/mypage/*")
public class BoardManagementController {

	@GetMapping("boardCommentList")
	   public String boardList() {
	      return "user/mypage/boardCommentList";
	}
	
	
	
}
