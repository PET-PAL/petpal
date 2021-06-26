package com.nobanryeo.petpal.user.ad.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.nobanryeo.petpal.user.ad.service.FreeBoardService;
import com.nobanryeo.petpal.user.dto.BoardReportDTO;
import com.nobanryeo.petpal.user.dto.FreeBoardDTO;
import com.nobanryeo.petpal.user.dto.FreeBoardReplyDTO;
import com.nobanryeo.petpal.user.dto.MessageTableDTO;

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
	public String selectFreeBoardDetail(Model model, @RequestParam int boardCode) {
		
		// 조회수 카운트
		freeBoardService.updateFreeBoardViews(boardCode);
		
		// 상세 내용 조회		
		model.addAttribute("freeBoardDetail", freeBoardService.selectFreeBoardDetail(boardCode));
		model.addAttribute("freeBoardReply",freeBoardService.selectFreeBoardReply(boardCode));
		
		return "user/community/freeBoardDetail";
	}
	
	/**
	 * 자유게시판 댓글 작성
	 */
	@PostMapping("insert/freeboard/reply")
	public String insertFreeBoardReply(@ModelAttribute FreeBoardReplyDTO reply, Model model, @RequestParam int code) {
		
		reply.setBoardCode(code);
		reply.setUserCode(1); 		// 세션 연결해야됨
		
		if(freeBoardService.insertFreeBoardReply(reply) > 0) {
			System.out.println("댓글 등록 성공");
		} else {
			System.out.println("댓글 등록 실패");
		}
				
		return "redirect:/user/select/freeboard/detail?boardCode="+code;
	}
	
	/**
	 * 쪽지 작성
	 */
	@PostMapping("insert/freeboard/message")
	public String insertFreeBoardMessage(@ModelAttribute MessageTableDTO message, Model model, @RequestParam int code) {
		
		// 세션 열결해야됨
		message.setUserCode(1);
		System.out.println(message);
		
		if(freeBoardService.insertFreeBoardMessage(message) > 0) {
			System.out.println("쪽지 전송 성공");
		} else {
			System.out.println("쪽지 전송 실패");
		}
		
		return "redirect:/user/select/freeboard/detail?boardCode="+code;
	}
	
	/**
	 * 자유게시판 신고 작성
	 */
	@PostMapping("insert/freeboard/report")
	public String inserFreeBoardReport(@ModelAttribute BoardReportDTO report, Model model, @RequestParam int code) {
		
		report.setBoardCode(code);
		
		return "redirect:/user/select/freeboard/detail?boardCode="+code;
	}
}
