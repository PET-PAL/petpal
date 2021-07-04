package com.nobanryeo.petpal.user.adopt.service;

import java.util.List;

import com.nobanryeo.petpal.user.dto.MissingPictureDTO;

public interface MissingService {

	List<MissingPictureDTO> selectAdoptList();

}
