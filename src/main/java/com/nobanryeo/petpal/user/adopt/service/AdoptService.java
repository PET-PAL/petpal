package com.nobanryeo.petpal.user.adopt.service;

import java.util.List;

import com.nobanryeo.petpal.user.dto.AdoptPictureManageDTO;

public interface AdoptService {
	

	List<AdoptPictureManageDTO> selectAdoptList();
}
