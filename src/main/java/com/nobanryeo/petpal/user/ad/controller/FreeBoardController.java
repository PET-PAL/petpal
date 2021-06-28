package com.nobanryeo.petpal.user.ad.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.nobanryeo.petpal.user.ad.service.FreeBoardService;
import com.nobanryeo.petpal.user.dto.FreeBoardReplyDTO;
import com.nobanryeo.petpal.user.dto.FreeBoardReportDTO;
import com.nobanryeo.petpal.user.dto.MessageTableDTO;
import com.nobanryeo.petpal.user.dto.UserInfoDTO;

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
   public String insertFreeBoardReply(@ModelAttribute FreeBoardReplyDTO reply, Model model, @RequestParam int code, @SessionAttribute UserInfoDTO loginUser) {
      
      reply.setBoardCode(code);
      reply.setUserCode(loginUser.getCode());
      System.out.println(reply);
      
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
   public String insertFreeBoardMessage(@ModelAttribute MessageTableDTO message, Model model, @RequestParam int code, @SessionAttribute UserInfoDTO loginUser) {
      
      message.setUserCode(loginUser.getCode());
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
   public String insertFreeBoardReport(@ModelAttribute FreeBoardReportDTO report, Model model, @RequestParam int code, @SessionAttribute UserInfoDTO loginUser) {
      
      report.setUserCode(loginUser.getCode());
      report.setBoardCode(code);
      
      System.out.println(report);
      
      if(freeBoardService.insertFreeBoardReport(report) > 0) {
         System.out.println("신고 성공");
      } else {
         System.out.println("신고 실패");
      }
      
      return "redirect:/user/select/freeboard/detail?boardCode="+code;
   }
   
   /**
    * 자유게시판 댓글 신고 작성
    */
   @PostMapping("insert/freeboard/reportReply")
   public String insertFreeBoardReportReply(@ModelAttribute FreeBoardReportDTO report, Model model, @RequestParam int code, @SessionAttribute UserInfoDTO loginUser) {
      
      report.setUserCode(loginUser.getCode());
      report.setBoardCode(code);
      
      System.out.println(report);
      
      if(freeBoardService.insertFreeBoardReport(report) > 0) {
         System.out.println("신고 성공");
      } else {
         System.out.println("신고 실패");
      }
      
      return "redirect:/user/select/freeboard/detail?boardCode="+code;
   }
}