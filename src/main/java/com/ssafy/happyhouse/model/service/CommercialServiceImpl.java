package com.ssafy.happyhouse.model.service;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.happyhouse.dto.Commercial;
import com.ssafy.happyhouse.model.repo.CommercialRepo;

@Service
public class CommercialServiceImpl implements CommercialService {

	@Autowired
	CommercialRepo crepo;
	
	@Override
	public int commCodeA(String dong,String tmp) throws SQLException {
		int res= crepo.commCodeA(dong,tmp);
		return res;
	}

	@Override
	public int commCodeB(String dong,String tmp) throws SQLException {
		int res= crepo.commCodeB(dong,tmp);
		return res;
	}

}
