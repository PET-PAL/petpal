package com.nobanryeo.petpal.user.adopt.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.nobanryeo.petpal.user.adopt.service.AdoptService;

@Controller
@RequestMapping("/user/*")
public class AdoptController {

	private final AdoptService adoptService; 
	
	public AdoptController(AdoptService adoptService) {
		this.adoptService = adoptService;
	}
	
	@GetMapping("adopt")
	public String selectAdoptMain(ModelAndView mv) {
		
		
		System.out.println("controller: "+adoptService.selectAdoptList());
		
		
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
