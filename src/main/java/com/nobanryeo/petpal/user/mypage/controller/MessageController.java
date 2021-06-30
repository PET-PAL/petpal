package com.nobanryeo.petpal.user.mypage.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.nobanryeo.petpal.user.dto.MessageTableDTO;
import com.nobanryeo.petpal.user.dto.PageDTO;
import com.nobanryeo.petpal.user.dto.UserInfoDTO;
import com.nobanryeo.petpal.user.mypage.service.MessageService;

@Controller
@RequestMapping("/user/mypage/*")
public class MessageController {
	
	private final MessageService messageService;
	  
	@Autowired
	public MessageController(MessageService messageService) {
	   this.messageService = messageService;
	}
	   
	
	@GetMapping("message")
	public String message(@ModelAttribute MessageTableDTO messageDTO, @SessionAttribute UserInfoDTO loginUser
			, PageDTO page , Model model
			, @RequestParam(value="nowPage", required = false)String nowPage
			, @RequestParam(value="cntPerPage", required = false)String cntPerPage) {
		
		messageDTO.setUserCode(loginUser.getCode());
		messageDTO.setUserCode1(loginUser.getCode());
		
		int code = loginUser.getCode();
		
		System.out.println("쪽지 컨트롤러 도착");
		System.out.println("현재 조회할 로그인중인 발신자 유저코드 : " + messageDTO.getUserCode());
		System.out.println("현재 조회할 로그인중인 수신자 유저코드 : " + messageDTO.getUserCode1());
		
		int total = messageService.selectMessageCount(code);
		
		System.out.println("토탈 카운트 : " + total);
		System.out.println("nowPage : " + nowPage);
		System.out.println("cntPerPage : " + cntPerPage);
		
		
		if(nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "5";
		} else if(nowPage == null) {
			nowPage = "1";
		} else if(cntPerPage == null) {
			cntPerPage = "5";
		}
		
		page = new PageDTO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		
		System.out.println("현재 페이지 : " + page.getNowPage());
		System.out.println("마지막 페이지 : " + page.getEnd());
		System.out.println("페이지당 글 갯수 : " + page.getCntPerPage());
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("msgDTO", messageDTO);
		map.put("pageInfo", page);
		
		List<MessageTableDTO> msgList = messageService.selectMessage(map);
		System.out.println("쪽지 리스트 : " + msgList);
		
		model.addAttribute("paging", page);
		model.addAttribute("msgList", msgList);
		
		
		
		return "user/mypage/message";
	}
	
	
	@GetMapping("messageDetail")
	public String messageDetail() {
		
		System.out.println("쪽지 상세보기로 들어왔습니다.");
		return"";
	}
	
	  

}
