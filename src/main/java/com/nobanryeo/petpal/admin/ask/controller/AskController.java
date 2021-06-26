package com.nobanryeo.petpal.admin.ask.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nobanryeo.petpal.admin.ask.dto.AskDTO;
import com.nobanryeo.petpal.admin.ask.service.AskService;
@Controller
@RequestMapping("/*") 
public class AskController {
	private final AskService askService;
	
	@Autowired
	public AskController(AskService askService) {
		this.askService = askService;
	}
	
    @RequestMapping("askList")
    public String askList(@ModelAttribute AskDTO ask, Model model) {
       
       List<AskDTO> askList = askService.selectAsk(ask);
       System.out.println(askList);
       model.addAttribute("askList", askList);
       return "admin/main/ask_board";
    }
}
