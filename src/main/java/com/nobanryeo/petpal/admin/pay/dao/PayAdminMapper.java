package com.nobanryeo.petpal.admin.pay.dao;

import java.util.List;

import com.nobanryeo.petpal.admin.dto.AdAdminDTO;
import com.nobanryeo.petpal.admin.dto.AdminPageInfoDTO;

public interface PayAdminMapper {

	int selectAdPayList(AdminPageInfoDTO cat);

	List<AdAdminDTO> selectAdPayAllList(AdminPageInfoDTO paging);

	List<AdAdminDTO> selectPayAdminDetail(int adCode);

	int searchAdPayList(AdminPageInfoDTO cat);

	List<AdAdminDTO> searchAdPayAllList(AdminPageInfoDTO paging);

	int selectNumber(AdminPageInfoDTO paging);

	int selectTaxList(AdminPageInfoDTO cat);

	List<AdAdminDTO> selectTaxAllList(AdminPageInfoDTO paging);

	int selectTaxNumber(AdminPageInfoDTO paging);

	List<AdAdminDTO> selectTaxDetail(int adCode);

	int searchTaxList(AdminPageInfoDTO cat);

	List<AdAdminDTO> searchTaxAllList(AdminPageInfoDTO paging);

	int searchTaxNumber(AdminPageInfoDTO paging);

	int selectTaxMonthList(AdminPageInfoDTO cat);

	List<AdAdminDTO> selectTaxMonthAllList(AdminPageInfoDTO paging);

	int selectTaxMonthNumber(AdminPageInfoDTO paging);

}
