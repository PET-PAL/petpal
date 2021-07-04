package com.nobanryeo.petpal.user.adopt.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.FieldNamingPolicy;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.nobanryeo.petpal.user.adopt.service.MissingService;
import com.nobanryeo.petpal.user.dto.MissingPictureDTO;

@Controller
@RequestMapping("/user/*")
public class MissingController {
	
	private final MissingService missingService;
	
	@Autowired
	public MissingController(MissingService missingService) {
		this.missingService = missingService;
	}

	@GetMapping("missing")
	public String missingBoard() {
		return "user/missing/missingPage";
	}
	
	@GetMapping("missingList")
	@ResponseBody
	public ModelAndView misssingBoard(ModelAndView mv, HttpServletResponse response) {
		
		response.setContentType("application/json; charset=utf-8");
		List<MissingPictureDTO> missingList = new ArrayList<>();
		missingList=missingService.selectAdoptList();
		
		System.out.println("controller: "+missingList);
		
		Gson gson = new GsonBuilder().setPrettyPrinting()
				.setFieldNamingPolicy(FieldNamingPolicy.IDENTITY)
				.serializeNulls().disableHtmlEscaping().create();
	
		mv.addObject("missingList", gson.toJson(missingList));
		mv.setViewName("jsonView");
		
		return mv;
	}
	
	@GetMapping("missing/write")
	public String missingWrite() {
		return "user/missing/missingBoardWrite";
	}
}
