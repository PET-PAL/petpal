package com.nobanryeo.petpal.admin.ask.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.nobanryeo.petpal.admin.dto.AdminPageInfoDTO;
import com.nobanryeo.petpal.admin.dto.AskDTO;
import com.nobanryeo.petpal.admin.ask.service.AskService;
import com.nobanryeo.petpal.admin.dto.AskDetailDTO;
@Controller
@RequestMapping("/*") 
public class AskController {
	private final AskService askService;
	
	@Autowired
	public AskController(AskService askService) {
		this.askService = askService;
	}
	
    @RequestMapping("askList")
    public String askList(Model model , AdminPageInfoDTO paging,
    		  @RequestParam(value="nowPage", required=false)String nowPage
  			, @RequestParam(value="cntPerPage", required=false)String cntPerPage) {
    	if (nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "5";
		} else if (nowPage == null) {
			nowPage = "1";
		} else if (cntPerPage == null) { 
			cntPerPage = "5";
		}
    	//글 카운트 
    	
    	int total = askService.selectListCount();
    	
		paging = new AdminPageInfoDTO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		model.addAttribute("paging", paging);
		model.addAttribute("total",total);
    	
    	
       List<AskDTO> askList = askService.selectAsk(paging);
       System.out.println(askList);
       model.addAttribute("askList", askList);
       
       
       return "admin/main/ask_board";
    }
    
    @RequestMapping("askDetail")
    public String askDetail(Model model,HttpServletRequest request) {
    	int boardCode = Integer.parseInt(request.getParameter("boardCode"));
    	AskDetailDTO askDetail = askService.selectListDetail(boardCode);
    	System.out.println(askDetail);
    	model.addAttribute("askDetail",askDetail);
       return "admin/main/ask_board_detail";
    }
}
