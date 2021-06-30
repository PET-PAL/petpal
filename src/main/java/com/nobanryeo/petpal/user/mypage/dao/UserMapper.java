package com.nobanryeo.petpal.user.mypage.dao;

import com.nobanryeo.petpal.user.dto.UserInfoDTO;

public interface UserMapper {
	/**
	 * ID 중복체크  Mapper
	 * @param userInfo
	 * @return Count(*) "1"(false) or "0"(true)
	 */
	String selectUserIdcheck(UserInfoDTO userInfo);

	/**
	 * Nick 중복체크 Mapper
	 * @param userInfo
	 * @return Count(*) "1"(false) or "0"(true)
	 */
	String selectUserNickcheck(UserInfoDTO userInfo);

	/**
	 * Email 중복체크 Mapper
	 * @param userInfo
	 * @return Count(*) "1"(false) or "0"(true)
	 */
	String selectUserEmailcheck(UserInfoDTO userInfo);

	/**
	 * insert User
	 * @param userInfo
	 * @return
	 */
	int insertUser(UserInfoDTO userInfo);


	/**
	 * 유저가 입력한 비밀번호와 저장되어 있는 비밀번호 매치
	 * @param id
	 * @return 
	 */
	String selectUserPassword(String id);	
	
	
	/**
	 * select User
	 * @param id
	 * @return
	 */
	UserInfoDTO selectUser(String id);

	/**
	 * select Id
	 * @param email
	 * @return
	 */
	String selectUserId(String email);
	
	/**
	 * 비밀번호 변경
	 * @param userInfo
	 * @return
	 */
	int modifyPwd(UserInfoDTO userInfo);

	/**
	 * 닉네임 변경
	 * @param userInfo
	 * @return 결과여부 0 1
	 */
	int updateNick(UserInfoDTO userInfo);

	/**
	 * 이메일 변경
	 * @param userInfo
	 * @return
	 */
	int updateEmail(UserInfoDTO userInfo);

	/**
	 * 유저정보 변경
	 * @param userInfo
	 * @return
	 */
	int updateUserInfo(UserInfoDTO userInfo);

	int updatewithdrawUser(UserInfoDTO userInfo);
	
	int insertwithdrawUser(UserInfoDTO userInfo);

	

}




















