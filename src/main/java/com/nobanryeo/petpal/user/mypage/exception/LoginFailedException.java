package com.nobanryeo.petpal.user.mypage.exception;

import org.springframework.stereotype.Service;

@Service("loginFail")
public class LoginFailedException {
	
	public LoginFailedException(String msg) {
		super();
	}
	
}
