package com.nobanryeo.petpal.user.mypage.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
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

		messageDTO.setUserCode1(loginUser.getCode());
		
		int code = loginUser.getCode();
		
		System.out.println("쪽지 컨트롤러 도착");
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
	
	
	/**
	 * 쪽지 상세보기
	 * @param messageDTO 
	 * @param page 
	 * @param model
	 * @param nowPage
	 * @param cntPerPage
	 * @return
	 */
	@GetMapping("message/messageDetail")
	public String messageDetail(@ModelAttribute MessageTableDTO messageDTO
			, PageDTO page , Model model
			, @RequestParam(value="nowPage", required = false)String nowPage
			, @RequestParam(value="cntPerPage", required = false)String cntPerPage) {
		
		System.out.println("쪽지 상세보기로 들어왔습니다.");
		System.out.println(messageDTO);
		
		int total = messageService.selectMessageDtailCount(messageDTO);
		

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
		
		List<MessageTableDTO> msgList = messageService.selectDetailMessage(map);
		System.out.println("쪽지 리스트 : " + msgList);
		
		MessageTableDTO oneList = new MessageTableDTO();
		
		for(int i = 0; i < 1; i++) {
			oneList  = msgList.get(i);
			System.out.println("oneList : " + oneList);
		}
		
		model.addAttribute("paging", page);
		model.addAttribute("msgList", msgList);
		
		model.addAttribute("oneList", oneList);
		
		return"user/mypage/messageDetail";
	}
	
	
	@PostMapping("message/messageSend")
	public String messageSend(@ModelAttribute MessageTableDTO messageDTO, @SessionAttribute UserInfoDTO loginUser) {
		
		System.out.println("보내는 쪽지 내용 : " + messageDTO);

		String send = loginUser.getNikname(); //룹룽이
		String recevie = "";
		
		int sendCode = 0;
		int recevieCode = 0;
		
		if(loginUser.getNikname().equals(messageDTO.getSendUserNick())){ //보낸 사람이 룹룽이와 룹룽이
			
			System.out.println("일반 if들어옴!");
			
			recevie = messageDTO.getReceiveUserNick(); //받는사람은 룹룽이 아닌 사람
			recevieCode = messageDTO.getUserCode();
			sendCode = messageDTO.getUserCode1();
			
			messageDTO.setSendUserNick(send); //보내는 사람: 룹룽이
			messageDTO.setReceiveUserNick(recevie); //받는 사람: 룹룽이x
			messageDTO.setUserCode(recevieCode);
			messageDTO.setUserCode1(sendCode);
			
			System.out.println("보내는 사람 : " + messageDTO.getSendUserNick());
			System.out.println("보내는 사람 코드 : " + messageDTO.getUserCode());
			System.out.println("받는 사람 : " + messageDTO.getReceiveUserNick());
			System.out.println("받는 사람 : " + messageDTO.getUserCode1());
			
		} else { 
			
			System.out.println("else 들어옴!");
			
			recevie = messageDTO.getSendUserNick(); //받는사람은 보낸사람
			recevieCode = messageDTO.getUserCode1();
			sendCode = messageDTO.getUserCode();
			
			messageDTO.setSendUserNick(send);
			messageDTO.setReceiveUserNick(recevie);
			messageDTO.setUserCode1(recevieCode);
			messageDTO.setUserCode(sendCode);
			
			System.out.println("보내는 사람 : " + messageDTO.getSendUserNick());
			System.out.println("보내는 사람 코드 : " + messageDTO.getUserCode1());
			System.out.println("받는 사람 : " + messageDTO.getReceiveUserNick());
			System.out.println("받는 사람 : " + messageDTO.getUserCode());
			
		}
		
		if(messageService.insertMessageFromMypage(messageDTO)) {
			System.out.println("쪽지 보내기 성공!");
		} else {
			System.out.println("쪽지 보내기 실패...");
		}
		
		return "redirect:/user/mypage/message/messageDetail?userCode1="+messageDTO.getUserCode1()+"&userCode="+messageDTO.getUserCode();
	}
	
	

	
	
	
	
	
}
















