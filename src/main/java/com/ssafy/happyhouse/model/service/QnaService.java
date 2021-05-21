package com.ssafy.happyhouse.model.service;

import java.util.List;

import com.ssafy.happyhouse.dto.QnaDto;



public interface QnaService {
	List<QnaDto> list();
	QnaDto search(String isbn);
	boolean create(QnaDto bookDto);
	boolean modify(QnaDto bookDto);
	boolean delete(String isbn);
}
