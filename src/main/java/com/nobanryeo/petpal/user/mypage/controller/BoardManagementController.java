package com.nobanryeo.petpal.user.mypage.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.nobanryeo.petpal.user.dto.AdoptDTO;
import com.nobanryeo.petpal.user.dto.BoradAndCommentDTO;
import com.nobanryeo.petpal.user.dto.MissingDTO;
import com.nobanryeo.petpal.user.dto.PageDTO;
import com.nobanryeo.petpal.user.dto.UserInfoDTO;
import com.nobanryeo.petpal.user.mypage.service.BoardManagementService;

@Controller
@RequestMapping("/user/mypage/*")
public class BoardManagementController {
	
	private BoardManagementService boardService;
	
	@Autowired
	public BoardManagementController(BoardManagementService boardService) {
		this.boardService = boardService;
	}
	
	@GetMapping("boardCommentList")
	public String boardList(
			Model model, BoradAndCommentDTO bcDTO
			, @RequestParam(value = "type", defaultValue =  "A") String type
			, @SessionAttribute UserInfoDTO loginUser
			, PageDTO page
			, @RequestParam(value="nowPage", required = false)String nowPage
			, @RequestParam(value="cntPerPage", required = false)String cntPerPage) {
		
		bcDTO.setUserCode(loginUser.getCode());
		
		if(type.equals("A")) {
			
			System.out.println("들어온 타입 : " + type);
			System.out.println(bcDTO);
			
			
			
			int total = boardService.selectMissingCount(bcDTO);
			
			System.out.println("토탈 카운트 : " + total);
			System.out.println("nowPage : " + nowPage);
			System.out.println("cntPerPage : " + cntPerPage);
			
			
			if(nowPage == null && cntPerPage == null) {
				nowPage = "1";
				cntPerPage = "10";
			} else if(nowPage == null) {
				nowPage = "1";
			} else if(cntPerPage == null) {
				cntPerPage = "10";
			}
			
			page = new PageDTO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
			
			System.out.println("문의 현재 페이지 : " + page.getNowPage());
			System.out.println("문의 마지막 페이지 : " + page.getEnd());
			System.out.println("문의 페이지당 글 갯수 : " + page.getCntPerPage());
			
			HashMap<String, Object> map = new HashMap<String, Object>();
			map.put("bcDTO", bcDTO);
			map.put("pageInfo", page);
			
			List<MissingDTO> aList = boardService.selectMissing(map);
			System.out.println(aList);
			
			model.addAttribute("paging", page);
			model.addAttribute("aList", aList);
			model.addAttribute("type", "A");

		} else if(type.equals("B")) {
			
			System.out.println("들어온 타입 : " + type);
			bcDTO.setUserCode(loginUser.getCode());
			System.out.println(bcDTO);
			
			int total = boardService.selectAdoptCount(bcDTO);
			
			System.out.println("토탈 카운트 : " + total);
			System.out.println("nowPage : " + nowPage);
			System.out.println("cntPerPage : " + cntPerPage);
			
			
			if(nowPage == null && cntPerPage == null) {
				nowPage = "1";
				cntPerPage = "10";
			} else if(nowPage == null) {
				nowPage = "1";
			} else if(cntPerPage == null) {
				cntPerPage = "10";
			}
			
			page = new PageDTO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
			
			System.out.println("문의 현재 페이지 : " + page.getNowPage());
			System.out.println("문의 마지막 페이지 : " + page.getEnd());
			System.out.println("문의 페이지당 글 갯수 : " + page.getCntPerPage());
			
			HashMap<String, Object> map = new HashMap<String, Object>();
			map.put("bcDTO", bcDTO);
			map.put("pageInfo", page);
			
			List<AdoptDTO> bList = boardService.selectAdoptList(map);
			System.out.println(bList);
			
			model.addAttribute("paging", page);
			model.addAttribute("bList", bList);
			model.addAttribute("type", "B");
			
		} else if(type.equals("C")) {
			
			System.out.println("들어온 타입 : " + type);
			bcDTO.setUserCode(loginUser.getCode());
			System.out.println(bcDTO);
			
			int total = boardService.selectInfoCount(bcDTO);
			
			System.out.println("토탈 카운트 : " + total);
			System.out.println("nowPage : " + nowPage);
			System.out.println("cntPerPage : " + cntPerPage);
			
			
			if(nowPage == null && cntPerPage == null) {
				nowPage = "1";
				cntPerPage = "10";
			} else if(nowPage == null) {
				nowPage = "1";
			} else if(cntPerPage == null) {
				cntPerPage = "10";
			}
			
			page = new PageDTO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
			
			System.out.println("문의 현재 페이지 : " + page.getNowPage());
			System.out.println("문의 마지막 페이지 : " + page.getEnd());
			System.out.println("문의 페이지당 글 갯수 : " + page.getCntPerPage());
			
			HashMap<String, Object> map = new HashMap<String, Object>();
			map.put("bcDTO", bcDTO);
			map.put("pageInfo", page);
			
			List<BoradAndCommentDTO> cList = boardService.selectInfoList(map);
			System.out.println(cList);
			
			model.addAttribute("paging", page);
			model.addAttribute("cList", cList);
			model.addAttribute("type", "C");
			
		} else if(type.equals("D")) {
			
			System.out.println("들어온 타입 : " + type);
			bcDTO.setUserCode(loginUser.getCode());
			System.out.println(bcDTO);
			
			int total = boardService.selectFreeCount(bcDTO);
			
			System.out.println("토탈 카운트 : " + total);
			System.out.println("nowPage : " + nowPage);
			System.out.println("cntPerPage : " + cntPerPage);
			
			
			if(nowPage == null && cntPerPage == null) {
				nowPage = "1";
				cntPerPage = "10";
			} else if(nowPage == null) {
				nowPage = "1";
			} else if(cntPerPage == null) {
				cntPerPage = "10";
			}
			
			page = new PageDTO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
			
			System.out.println("문의 현재 페이지 : " + page.getNowPage());
			System.out.println("문의 마지막 페이지 : " + page.getEnd());
			System.out.println("문의 페이지당 글 갯수 : " + page.getCntPerPage());
			
			HashMap<String, Object> map = new HashMap<String, Object>();
			map.put("bcDTO", bcDTO);
			map.put("pageInfo", page);
			
			List<BoradAndCommentDTO> dList = boardService.selectFreeList(map);
			System.out.println(dList);
			
			model.addAttribute("paging", page);
			model.addAttribute("dList", dList);
			model.addAttribute("type", "D");
			
		} else if(type.equals("E")) {
			
			System.out.println("들어온 타입 : " + type);
			bcDTO.setUserCode(loginUser.getCode());
			System.out.println(bcDTO);
			
			int total = boardService.selectShareCount(bcDTO);
			
			System.out.println("토탈 카운트 : " + total);
			System.out.println("nowPage : " + nowPage);
			System.out.println("cntPerPage : " + cntPerPage);
			
			
			if(nowPage == null && cntPerPage == null) {
				nowPage = "1";
				cntPerPage = "10";
			} else if(nowPage == null) {
				nowPage = "1";
			} else if(cntPerPage == null) {
				cntPerPage = "10";
			}
			
			page = new PageDTO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
			
			System.out.println("문의 현재 페이지 : " + page.getNowPage());
			System.out.println("문의 마지막 페이지 : " + page.getEnd());
			System.out.println("문의 페이지당 글 갯수 : " + page.getCntPerPage());
			
			HashMap<String, Object> map = new HashMap<String, Object>();
			map.put("bcDTO", bcDTO);
			map.put("pageInfo", page);
			
			List<BoradAndCommentDTO> eList = boardService.selectShareList(map);
			System.out.println(eList);
			
			model.addAttribute("paging", page);
			model.addAttribute("eList", eList);
			model.addAttribute("type", "E");
			
		} else if(type.equals("F")) {
			
			System.out.println("들어온 타입 : " + type);
			bcDTO.setUserCode(loginUser.getCode());
			System.out.println(bcDTO);
			
			int total = boardService.selectReviewCount(bcDTO);
			
			System.out.println("토탈 카운트 : " + total);
			System.out.println("nowPage : " + nowPage);
			System.out.println("cntPerPage : " + cntPerPage);
			
			
			if(nowPage == null && cntPerPage == null) {
				nowPage = "1";
				cntPerPage = "10";
			} else if(nowPage == null) {
				nowPage = "1";
			} else if(cntPerPage == null) {
				cntPerPage = "10";
			}
			
			page = new PageDTO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
			
			System.out.println("문의 현재 페이지 : " + page.getNowPage());
			System.out.println("문의 마지막 페이지 : " + page.getEnd());
			System.out.println("문의 페이지당 글 갯수 : " + page.getCntPerPage());
			
			HashMap<String, Object> map = new HashMap<String, Object>();
			map.put("bcDTO", bcDTO);
			map.put("pageInfo", page);
			
			List<BoradAndCommentDTO> fList = boardService.selectReviewList(map);
			System.out.println(fList);
			
			model.addAttribute("paging", page);
			model.addAttribute("fList", fList);
			model.addAttribute("type", "F");
			
		} else if(type.equals("G")) {
			
			System.out.println("들어온 타입 : " + type);
			bcDTO.setUserCode(loginUser.getCode());
			System.out.println(bcDTO);
			
			int total = boardService.selectReplyCount(bcDTO);
			
			System.out.println("토탈 카운트 : " + total);
			System.out.println("nowPage : " + nowPage);
			System.out.println("cntPerPage : " + cntPerPage);
			
			
			if(nowPage == null && cntPerPage == null) {
				nowPage = "1";
				cntPerPage = "10";
			} else if(nowPage == null) {
				nowPage = "1";
			} else if(cntPerPage == null) {
				cntPerPage = "10";
			}
			
			page = new PageDTO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
			
			System.out.println("문의 현재 페이지 : " + page.getNowPage());
			System.out.println("문의 마지막 페이지 : " + page.getEnd());
			System.out.println("문의 페이지당 글 갯수 : " + page.getCntPerPage());
			
			HashMap<String, Object> map = new HashMap<String, Object>();
			map.put("bcDTO", bcDTO);
			map.put("pageInfo", page);
			
			List<BoradAndCommentDTO> gList = boardService.selectReplyList(map);
			System.out.println(gList);
			
			model.addAttribute("paging", page);
			model.addAttribute("gList", gList);
			model.addAttribute("type", "G");
			
		}
		
		return "user/mypage/boardCommentList";
	}
	
	@PostMapping(value = "deletePost", produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String deletePost(@RequestParam(value="boardCode", required = false) int boardCode
			,@RequestParam(value="type", required = false) String type) {
		System.out.println("boardCode : " + boardCode);
		System.out.println("type : " + type);
		
		String result = "";
		
		if(type.equals("A")) {
			
			boolean value = boardService.deletePost(boardCode);
			
			if(value == true) {
				result = "success";
			} else {
				result = "fail";
			}
			
		} else if(type.equals("B")) {
			System.out.println("B타입에 들어옴");
			
			boolean value = boardService.deletePostAdopt(boardCode);
			
			if(value == true) {
				result = "success";
			} else {
				result = "fail";
			}

		} else if(type.equals("C")) {
			boolean value = boardService.deletePostInfo(boardCode);
			if(value == true) {
				result = "success";
			} else {
				result = "fail";
			}
		} else if(type.equals("D")) {
			boolean value = boardService.deletePostFree(boardCode);
			if(value == true) {
				result = "success";
			} else {
				result = "fail";
			}
		} else if(type.equals("E")) {
			boolean value = boardService.deletePostShare(boardCode);
			if(value == true) {
				result = "success";
			} else {
				result = "fail";
			}
		} else if(type.equals("F")) {
			boolean value = boardService.deletePostReview(boardCode);
			if(value == true) {
				result = "success";
			} else {
				result = "fail";
			}
		} else if(type.equals("G")) {
			boolean value = boardService.deleteReply(boardCode);
			if(value == true) {
				result = "success";
			} else {
				result = "fail";
			}
		}
		
	    Gson gson = new GsonBuilder().create();
	     
	    return gson.toJson(result);
	}
	
	
	
	
}




















