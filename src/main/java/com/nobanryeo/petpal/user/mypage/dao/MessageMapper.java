package com.nobanryeo.petpal.user.mypage.dao;

import java.util.HashMap;
import java.util.List;

import com.nobanryeo.petpal.user.dto.MessageTableDTO;

public interface MessageMapper {
	
	/**
	 * 쪽지 갯수 카운트
	 * @return
	 */
	public int selectMessageCount(int code);
	
	public List<MessageTableDTO> selectMessage(HashMap<String, Object> map);
	

}




















