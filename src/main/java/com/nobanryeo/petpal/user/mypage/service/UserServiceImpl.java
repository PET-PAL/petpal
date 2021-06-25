package com.nobanryeo.petpal.user.mypage.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.nobanryeo.petpal.user.dto.UserInfoDTO;
import com.nobanryeo.petpal.user.mypage.dao.UserMapper;

@Service
public class UserServiceImpl implements UserService{
	
	private UserMapper mapper;
	private BCryptPasswordEncoder passwordEncoder;
	
	@Autowired
	public UserServiceImpl(UserMapper mapper, BCryptPasswordEncoder passwordEncoder) {
		this.mapper = mapper;
		this.passwordEncoder = passwordEncoder;
	}


	@Override
	public boolean checkId(UserInfoDTO userInfo) {
		System.out.println("서비스까지 왔습니다 : " + userInfo.getId());
		return mapper.selectUserIdcheck(userInfo).equals("0")? true:false;
	}

	

}
