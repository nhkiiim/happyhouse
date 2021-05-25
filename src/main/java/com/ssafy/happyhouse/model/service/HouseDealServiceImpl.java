package com.ssafy.happyhouse.model.service;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.happyhouse.dto.HouseDeal;
import com.ssafy.happyhouse.model.repo.HouseDealRepo;

@Service
public class HouseDealServiceImpl implements HouseDealService {

	@Autowired 
	HouseDealRepo hrepo;
	
	@Override
	public List<HouseDeal> search() throws SQLException {
		return hrepo.search();
	}

	@Override
	public HouseDeal select(int no) throws SQLException {
		return hrepo.select(no);
	}

	@Override
	public List<HouseDeal> selectPrice(int price) throws SQLException {
		return hrepo.selectPrice(price);
	}

	@Override
	public List<HouseDeal> selectAptName(String aptName) throws SQLException {
		return hrepo.selectAptName(aptName);
	}

	@Override
	public List<HouseDeal> selectDong(String dong) throws SQLException {
		return hrepo.selectDong(dong);
	}

	@Override
	public int avg60(String dong) throws SQLException {
		int r= hrepo.avg60(dong);
		return r;
	}

	@Override
	public int avg80(String dong) throws SQLException {
		int r= hrepo.avg80(dong);
		return r;
	}

	@Override
	public int avg100(String dong) throws SQLException {
		int r= hrepo.avg100(dong);
		return r;
	}

	@Override
	public int avg140(String dong) throws SQLException {
		int r= hrepo.avg140(dong);
		return r;
	}
	
}
