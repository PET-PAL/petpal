package com.nobanryeo.petpal.user.ad.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.nobanryeo.petpal.user.ad.service.FreeBoardService;
import com.nobanryeo.petpal.user.dto.FreeBoardDTO;
import com.nobanryeo.petpal.user.dto.FreeBoardReplyDTO;

/**
 * @author WEENARA
 * 자유게시판 Controller
 */
@Controller
@RequestMapping("/user/*")
public class FreeBoardController {

	private final FreeBoardService freeBoardService;
	
	@Autowired
	public FreeBoardController(FreeBoardService freeBoardService) {
		
		this.freeBoardService = freeBoardService;
	}
	
	/**
	 * 자유게시판 전체 게시글 조회
	 */
	@GetMapping("select/freeboard/list")
	public String selectFreeBoardList(Model model) {
		
		model.addAttribute("freeBoardList", freeBoardService.selectFreeBoardList());
		
		return "user/community/freeBoardList";
	}
	
	/**
	 * 자유게시판 상세 내용 조회
	 * 게시글 내용, 사진, 댓글
	 */
	@GetMapping("select/freeboard/detail")
	public String selectFreeBoardDetail(Model model, HttpServletRequest request) {
		
		FreeBoardDTO freeBoard = new FreeBoardDTO();
		FreeBoardReplyDTO reply = new FreeBoardReplyDTO();
		freeBoard.setBoardCode(Integer.parseInt(request.getParameter("boardCode")));
		reply.setBoardCode(Integer.parseInt(request.getParameter("boardCode")));
		
		model.addAttribute("freeBoardDetail", freeBoardService.selectFreeBoardDetail(freeBoard));
		model.addAttribute("freeBoardReply",freeBoardService.selectFreeBoardReply(reply));
		
		return "user/community/freeBoardDetail";
	}
	
	@PostMapping("insert/freeboard/reply")
	public String insertFreeBoardReply(@ModelAttribute FreeBoardReplyDTO reply, Model model,@RequestParam int code) {
		reply.setBoardCode(code);
		
		if(freeBoardService.insertFreeBoardReply(reply) > 0) {
			System.out.println("댓글 등록 성공");
		} else {
			System.out.println("댓글 등록 실패");
		}
				
		return "redirect:/user/community/freeBoardDetail";
	}
}
