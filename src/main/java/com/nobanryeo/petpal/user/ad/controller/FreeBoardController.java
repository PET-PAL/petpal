package com.nobanryeo.petpal.user.ad.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nobanryeo.petpal.user.ad.service.FreeBoardService;
import com.nobanryeo.petpal.user.dto.BoardPictureManageDTO;
import com.nobanryeo.petpal.user.dto.BoardReplyDTO;
import com.nobanryeo.petpal.user.dto.FreeBoardDTO;

@Controller
@RequestMapping("/user/*")
public class FreeBoardController {

	private final FreeBoardService freeBoardService;
	
	@Autowired
	public FreeBoardController(FreeBoardService freeBoardService) {
		
		this.freeBoardService = freeBoardService;
	}
	
	
	@GetMapping("select/freeboard/list")
	public String SelectFreeBoardList(Model model) {
		
		model.addAttribute("freeBoardList", freeBoardService.selectFreeBoardList());
		
		return "user/community/freeBoardList";
	}
	
	@GetMapping("select/freeboard/detail")
	public String SelectFreeBoardDetail(Model model, HttpServletRequest request) {
		
		FreeBoardDTO freeBoard = new FreeBoardDTO();
		BoardPictureManageDTO picture = new BoardPictureManageDTO();
		BoardReplyDTO reply = new BoardReplyDTO();
		freeBoard.setBoardCode(Integer.parseInt(request.getParameter("boardCode")));
		
		model.addAttribute("freeBoardDetail", freeBoardService.selectFreeBoardDetail(freeBoard));
		model.addAttribute("freeBoardDetailPicture", freeBoardService.selectFreeBoardDetailPicture(freeBoard));
		model.addAttribute("freeBoardReply",freeBoardService.selectFreeBoardReply(freeBoard));
		
		return "user/community/freeBoardDetail";
	}
}
