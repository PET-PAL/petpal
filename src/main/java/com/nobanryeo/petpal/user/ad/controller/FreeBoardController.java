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
	   public String selectFreeBoardDetail(Model model, @RequestParam int boardCode) {
	      
	      // 조회수 카운트
//	      freeBoardService.updateFreeBoardViews(boardCode);
	      
	      // 상세 내용 조회      
//	      model.addAttribute("freeBoardDetail", freeBoardService.selectFreeBoardDetail(boardCode));
//	      model.addAttribute("freeBoardReply",freeBoardService.selectFreeBoardReply(boardCode));
	      
	      return "user/community/freeBoardDetail";
	   }
}