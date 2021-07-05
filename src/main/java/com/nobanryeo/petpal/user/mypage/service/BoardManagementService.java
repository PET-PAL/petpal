package com.nobanryeo.petpal.user.mypage.service;

import java.util.HashMap;
import java.util.List;

import com.nobanryeo.petpal.user.dto.AdoptDTO;
import com.nobanryeo.petpal.user.dto.BoradAndCommentDTO;
import com.nobanryeo.petpal.user.dto.MissingDTO;

public interface BoardManagementService {

	int selectMissingCount(BoradAndCommentDTO bcDTO);

	List<MissingDTO> selectMissing(HashMap<String, Object> map);

	int selectAdoptCount(BoradAndCommentDTO bcDTO);

	List<AdoptDTO> selectAdoptList(HashMap<String, Object> map);

}
