package com.nobanryeo.petpal.user.mypage.service;

import java.util.HashMap;
import java.util.List;

import com.nobanryeo.petpal.user.dto.MessageTableDTO;

public interface MessageService {

	public int selectMessageCount(int code);
	
	public List<MessageTableDTO> selectMessage(HashMap<String, Object> map);

	public int selectMessageDtailCount(MessageTableDTO messageDTO);

	public List<MessageTableDTO> selectDetailMessage(HashMap<String, Object> map);

	public boolean insertMessageFromMypage(MessageTableDTO messageDTO);
	
}
