package com.nobanryeo.petpal.admin.report.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.nobanryeo.petpal.admin.dto.AdminPageInfoDTO;
import com.nobanryeo.petpal.admin.dto.ReportDTO;
import com.nobanryeo.petpal.admin.dto.ReportDetailDTO;

public interface ReportService {
	int selectReportCount (AdminPageInfoDTO cat);
	List<ReportDTO> selectReport(AdminPageInfoDTO paging);
	ReportDetailDTO selectReportDetail(Map param);

}
