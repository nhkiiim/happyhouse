package com.ssafy.happyhouse.model.service;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.happyhouse.dto.HouseDeal;
import com.ssafy.happyhouse.dto.Notice;
import com.ssafy.happyhouse.model.repo.NoticeRepo;

@Service
public class NoticeServiceImpl implements NoticeService {
	
	@Autowired
	NoticeRepo nrepo;

	@Override
	public Notice select(String notice_no) throws SQLException {
		return nrepo.select(notice_no);
	}

	@Override
	public void insert(Notice notice_no) throws SQLException {
		nrepo.insert(notice_no);
	}

	@Override
	public void modify(Notice notice_no) throws SQLException {
		nrepo.modify(notice_no);
	}

	@Override
	public void delete(int notice_no) throws SQLException {
		nrepo.delete(notice_no);
	}
	
	@Override
	public List<Notice> search() throws SQLException {
		return nrepo.search();
	}

}
