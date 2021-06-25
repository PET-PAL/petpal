package com.nobanryeo.petpal.user.adopt.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/user/*")
public class MissingController {

	@GetMapping("missing")
	public String missingBoard() {
		return "user/missing/missingPage";
	}
	
	@GetMapping("missing/write")
	public String missingWrite() {
		return "user/missing/missingBoardWrite";
	}
}
