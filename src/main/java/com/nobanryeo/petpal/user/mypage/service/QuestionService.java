package com.nobanryeo.petpal.user.mypage.service;

import java.util.HashMap;
import java.util.List;

import com.nobanryeo.petpal.user.dto.AdQnADTO;

public interface QuestionService {

	int selectQnACount(int code);

	List<AdQnADTO> selectQnAList(HashMap<String, Object> map);

	AdQnADTO selectQnADetail(int boardCode);

}
