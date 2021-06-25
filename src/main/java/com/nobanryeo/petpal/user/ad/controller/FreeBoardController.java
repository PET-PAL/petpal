package com.nobanryeo.petpal.user.ad.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user/*")
public class FreeBoardController {

	@GetMapping("select/freeboard/list")
	public String SelectFreeBoardList() {
		return "user/community/freeBoardList";
	}
	
	@GetMapping("select/freeboard/detail")
	public String SelectFreeBoardDetail() {
		return "user/community/freeBoardDetail";
	}
}
