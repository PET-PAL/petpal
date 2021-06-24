package com.nobanryeo.petpal.user.mypage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user/*")
public class LoginController {
	
	@GetMapping("login")
	public String LoginForm() {
		return "common/login";
	}
	
	@GetMapping("regist")
	public String registForm() {
		return "common/regist";
	}
	
	
	
	
}
