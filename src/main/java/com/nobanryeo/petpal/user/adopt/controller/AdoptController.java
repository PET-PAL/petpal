package com.nobanryeo.petpal.user.adopt.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user/*")
public class AdoptController {

	@GetMapping("adopt")
	public String AdoptMain() {
		return "user/adopt/adoptPage";
	}
	
	@GetMapping("adopt/terms")
	public String termsAdopt() {
		return "user/adopt/terms";
	}
	
	@GetMapping("adopt/write")
	public String writeAdopt() {
		return "user/adopt/adoptBoardWrite";
	}
}
