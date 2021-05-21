package com.ssafy.happyhouse.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.happyhouse.dto.QnaDto;
import com.ssafy.happyhouse.model.repo.QnaMapper;



@Service
public class QnaServiceImpl implements QnaService {
	@Autowired
	private QnaMapper qnaMapper;
	
	@Override
	public List<QnaDto> list() {
		return qnaMapper.list();
	}

	@Override
	public QnaDto search(String isbn) {
		return qnaMapper.search(isbn);
	}

	@Override
	public boolean create(QnaDto bookDto) {
		return qnaMapper.create(bookDto) == 1;
	}

	@Override
	public boolean modify(QnaDto bookDto) {
		return qnaMapper.modify(bookDto) == 1;
	}

	@Override
	public boolean delete(String isbn) {
		return qnaMapper.delete(isbn) == 1;
	}
}
