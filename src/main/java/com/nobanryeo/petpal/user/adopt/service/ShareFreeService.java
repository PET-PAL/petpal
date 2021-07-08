package com.nobanryeo.petpal.user.adopt.service;

import java.util.HashMap;
import java.util.List;

import com.nobanryeo.petpal.user.dto.PageDTO;
import com.nobanryeo.petpal.user.dto.ShareFreeDTO;

public interface ShareFreeService {

	int selectTotalCount();

	List<ShareFreeDTO> selectShareFreeList(HashMap<String, Object> map);

}
