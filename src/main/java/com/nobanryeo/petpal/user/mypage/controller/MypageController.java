package com.nobanryeo.petpal.user.mypage.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.nobanryeo.petpal.user.dto.UserInfoDTO;
import com.nobanryeo.petpal.user.mypage.service.MypageService;
import com.nobanryeo.petpal.user.mypage.service.UserService;

@Controller
@RequestMapping("/mypage/*")
public class MypageController {
	
	private final MypageService mypageService;
	private final UserService userService;
	private final BCryptPasswordEncoder encoder;
	
	@Autowired 
	public MypageController(MypageService mypageService, UserService userService, BCryptPasswordEncoder encoder) { 
		this.mypageService = mypageService; 
		this.userService = userService; 
		this.encoder = encoder;
	}

	@GetMapping(value= {"mypage","/"})
	public String mypageLoad() {
		return "user/mypage/mypage";
	}
	
	@GetMapping("account")
	public String accountPage() {
		return "user/mypage/accountManagement";
	}
	
	@GetMapping("message")
	public String message() {
		return "user/mypage/message";
	}
	
	@GetMapping("boardCommentList")
	public String boardList() {
		return "user/mypage/boardCommentList";
	}
	@GetMapping("qnaReportList")
	public String qnaReportList() {
		return "user/mypage/qnaReportList";
	}
	@GetMapping("adList")
	public String adList() {
		return "user/mypage/adList";
	}
	
	@PostMapping("updateUserInfo")
	public String updateUserInfo(@ModelAttribute UserInfoDTO userInfo) {
		System.out.println("수정 될 유저 정보 : " + userInfo);
		
		if(userInfo.getPwd() != null) {
			//비밀번호 암호화 작업
			userInfo.setPwd(encoder.encode(userInfo.getPwd()));
		}
		
//		boolean modifyUserInfo = mypageService.updateUserInfo(userInfo);
		
		
		return "";
	}
	
	/**
	 * 닉네임 중복체크 컨트롤러
	 * @param userInfo 수정하려는 닉네임
	 * @return
	 */
	@PostMapping(value = "updateNickChk", produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String updateNickChk(@ModelAttribute UserInfoDTO userInfo) {
		System.out.println("중복확인 하는 닉네임 : "  + userInfo.getNikname());
		
		boolean notOverNick = userService.checkNick(userInfo);
		System.out.println("notOverNick : " + notOverNick);
		
		String result = "";
		
		if(notOverNick == true) {
			result = "success";
		} else {
			result = "fail";
		}
		
		Gson gson = new GsonBuilder().create();
		
		return gson.toJson(result);
	}
	
	/**
	 * 이메일 중복체크 컨트롤러
	 * @param userInfo
	 * @return
	 */
	@PostMapping(value = "updateEmailChk", produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String updateEmailChk(@ModelAttribute UserInfoDTO userInfo) {
		
		boolean notOverEmail = userService.checkEmail(userInfo);
		System.out.println("notOverEmail : " + notOverEmail);
		
		String result = "";
		if(notOverEmail == true) {
			result = "success";
		} else {
			result = "fail";
		}
		
		Gson gson = new GsonBuilder().create();
		
		return gson.toJson(result);
		
	}
	
	@PostMapping("updateNick")
	public String updateNick(@ModelAttribute UserInfoDTO userInfo, RedirectAttributes rttr, HttpServletRequest request) {
		System.out.println("변경을 시도하는 아이디 : " + userInfo.getId());
		System.out.println("변경할 닉네임 : " + userInfo.getNikname());
		
		int result = userService.updateNick(userInfo);
		UserInfoDTO loginUser = userService.selectNewUserInfo(userInfo);
		
		if(result > 0) {
			rttr.addFlashAttribute("message", "닉네임 변경에 성공했습니다.");
			
			HttpSession session = request.getSession();
			session.setAttribute("loginUser", loginUser);
		} else {
			rttr.addFlashAttribute("message", "닉네임 변경에 실패했습니다.");
		}
		
		return "redirect:/mypage/account";
	}
	
	@PostMapping("updateEmail")
	public String updateEmail(@ModelAttribute UserInfoDTO userInfo, RedirectAttributes rttr, HttpServletRequest request) {
		System.out.println("변경을 시도하는 아이디 : " + userInfo.getId());
		System.out.println("변경할 이메일 : " + userInfo.getEmail());
		
		int result = userService.updateEmail(userInfo);
		UserInfoDTO loginUser = userService.selectNewUserInfo(userInfo);
		
		if(result > 0) {
			rttr.addFlashAttribute("message", "이메일 변경에 성공했습니다.");
			
			HttpSession session = request.getSession();
			session.setAttribute("loginUser", loginUser);
		} else {
			rttr.addFlashAttribute("message", "이메일 변경에 실패했습니다.");
		}
		
		return "redirect:/mypage/account";
	}
	
	
}






















