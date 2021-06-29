package com.nobanryeo.petpal.user.mypage.service;

import javax.servlet.http.HttpServletResponse;

import com.nobanryeo.petpal.user.dto.UserInfoDTO;


public interface UserService {

	/**
	 * ID 중복체크 서비스
	 * @param userInfo
	 * @return true or false
	 */
	boolean checkId(UserInfoDTO userInfo);

	/**
	 * NickName 중복체크 서비스
	 * @param userInfo
	 * @return true or false
	 */
	boolean checkNick(UserInfoDTO userInfo);

	/**
	 * Email 중복체크 서비스
	 * @param userInfo
	 * @return true or false
	 */
	boolean checkEmail(UserInfoDTO userInfo);

	/**
	 * User insert 서비스
	 * @param userInfo
	 * @return 실패0 성공1
	 */
	boolean insertUser(UserInfoDTO userInfo);

	/**
	 * User select 로그인
	 * @param userInfo
	 * @return 실패"0" 성공"1"
	 * @throws LoginFailedException 
	 */
	UserInfoDTO selectUser(UserInfoDTO userInfo);

	/**
	 * User Id 찾기
	 * @param email
	 * @return
	 */
	String findIdService(String email);

	/**
	 * User pwd 찾기
	 * @param userInfo
	 * @return
	 */
	void findPwd(HttpServletResponse response, UserInfoDTO userInfo) throws Exception;

	void sendEmail(UserInfoDTO userInfo, String div) throws Exception;

	

	
	
}
