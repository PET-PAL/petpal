package com.nobanryeo.petpal.admin.report.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nobanryeo.petpal.admin.dto.AdminPageInfoDTO;
import com.nobanryeo.petpal.admin.dto.ReportDTO;
import com.nobanryeo.petpal.admin.dto.ReportDetailDTO;
import com.nobanryeo.petpal.admin.report.dao.ReportMapper;

@Service
public class ReportServiceImpl implements  ReportService{
	private ReportMapper mapper;
	
	@Autowired
	public ReportServiceImpl(ReportMapper mapper) {
		this.mapper=mapper;
	}
	
	@Override
	public int selectReportCount(AdminPageInfoDTO cat) {
		// TODO Auto-generated method stub
		return mapper.selectReportCount(cat);
	}

	@Override
	public List<ReportDTO> selectReport(AdminPageInfoDTO paging) {
		// TODO Auto-generated method stub
		return mapper.selectReport(paging);
	}

	@Override
	public ReportDetailDTO selectReportDetail(Map param) {
		// TODO Auto-generated method stub
		return mapper.selectReportDetail(param);
	}

}
