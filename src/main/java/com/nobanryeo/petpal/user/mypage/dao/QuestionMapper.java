package com.nobanryeo.petpal.user.mypage.dao;

import java.util.HashMap;
import java.util.List;

import com.nobanryeo.petpal.user.dto.AdQnADTO;

public interface QuestionMapper {

	int selectQnACount(int code);

	List<AdQnADTO> selectQnAList(HashMap<String, Object> map);

}
