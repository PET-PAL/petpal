package com.nobanryeo.petpal.user.adopt.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.FieldNamingPolicy;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.nobanryeo.petpal.user.adopt.service.AdoptService;
import com.nobanryeo.petpal.user.dto.AdoptPictureManageDTO;

@Controller
@RequestMapping("/user/*")
public class AdoptController {

	private final AdoptService adoptService; 
	private final List<AdoptPictureManageDTO> adoptList;
	
	public AdoptController(AdoptService adoptService, List<AdoptPictureManageDTO> adoptList) {
		this.adoptService = adoptService;
		this.adoptList = adoptService.selectAdoptList();
	}
	
	@GetMapping("adopt")
	public ModelAndView selectAdoptMain(ModelAndView mv, HttpServletResponse response) {
		
		
		System.out.println("controller: "+adoptList);
		response.setContentType("application/json; charset=utf-8");
		
		Gson gson = new GsonBuilder().setFieldNamingPolicy(FieldNamingPolicy.IDENTITY).serializeNulls().disableHtmlEscaping().create();
	
		mv.addObject("adoptList",gson.toJson(adoptList));
		mv.setViewName("jsonView");
		return mv;
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
