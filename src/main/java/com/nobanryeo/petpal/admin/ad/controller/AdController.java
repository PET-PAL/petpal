package com.nobanryeo.petpal.admin.ad.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin/*")
public class AdController {

	@GetMapping("/main/adApproveList")
	public void adApproveList() {}
	
	
}
