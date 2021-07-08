package com.nobanryeo.petpal.user.adopt.dao;

import java.util.HashMap;
import java.util.List;

import com.nobanryeo.petpal.user.dto.ShareFreeDTO;

public interface ShareFreeMapper {

	int selectTotalCount();

	List<ShareFreeDTO> selectShareFreeList(HashMap<String, Object> map);

}
