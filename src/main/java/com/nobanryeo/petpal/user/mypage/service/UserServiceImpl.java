package com.nobanryeo.petpal.user.mypage.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.nobanryeo.petpal.user.dto.UserInfoDTO;
import com.nobanryeo.petpal.user.mypage.dao.UserMapper;
import com.nobanryeo.petpal.user.mypage.exception.LoginFailedException;

@Service
public class UserServiceImpl implements UserService{
	
	private UserMapper mapper;
	private BCryptPasswordEncoder passwordEncoder;
	
	@Autowired
	public UserServiceImpl(UserMapper mapper, BCryptPasswordEncoder passwordEncoder) {
		this.mapper = mapper;
		this.passwordEncoder = passwordEncoder;
	}


	/**
	 * ID 중복체크 서비스impl 
	 * true or false를 service로 반환
	 */
	@Override
	public boolean checkId(UserInfoDTO userInfo) {
		System.out.println("서비스까지 왔습니다 : " + userInfo.getId());
		return mapper.selectUserIdcheck(userInfo).equals("0")? true:false;
	}


	/**
	 * Nick 중복체크 서비스impl
	 * true or false를 service로 반환
	 */
	@Override
	public boolean checkNick(UserInfoDTO userInfo) {
		System.out.println("서비스까지 왔습니다 : " + userInfo.getNikname());
		return mapper.selectUserNickcheck(userInfo).equals("0")? true:false;
	}


	/**
	 * Email 중복체크 서비스impl
	 * true or false를 service로 반환
	 */
	@Override
	public boolean checkEmail(UserInfoDTO userInfo) {
		System.out.println("서비스까지 왔습니다 : " + userInfo.getEmail());
		return mapper.selectUserEmailcheck(userInfo).equals("0")? true:false;
	}


	/**
	 * insert작업
	 * 성공 > 0, 실패=0
	 */
	@Override
	public boolean insertUser(UserInfoDTO userInfo) {
		System.out.println("서비스까지 왔습니다 : " + userInfo);
		return mapper.insertUser(userInfo) > 0 ? true:false;
	}


	@Override
	public UserInfoDTO selectUser(UserInfoDTO userInfo) {
		
		String result = "";
		
		if(!passwordEncoder.matches(userInfo.getPwd(), mapper.selectUserPassword(userInfo))) {
			
		}
		
		return mapper.selectUser(userInfo);
	}

	

}
