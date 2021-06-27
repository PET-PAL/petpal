package com.nobanryeo.petpal.user.mypage.exception;

import org.springframework.stereotype.Service;

public class LoginFailedException extends Exception {
	   
	   public LoginFailedException(String msg) {
	      super(msg);
	   }
	   
	}
