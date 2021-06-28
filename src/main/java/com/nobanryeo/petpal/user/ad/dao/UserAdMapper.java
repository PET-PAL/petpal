package com.nobanryeo.petpal.user.ad.dao;

import java.util.List;

import com.nobanryeo.petpal.user.dto.AdDTO;

public interface UserAdMapper {

	List<AdDTO> selectAdList(AdDTO adDTO);

}
