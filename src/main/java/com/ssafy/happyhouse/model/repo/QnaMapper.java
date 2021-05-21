package com.ssafy.happyhouse.model.repo;

import java.util.List;

import com.ssafy.happyhouse.dto.QnaDto;



public interface QnaMapper {
	List<QnaDto> list();
	QnaDto search(String isbn);
	int create(QnaDto bookDto);
	int modify(QnaDto bookDto);
	int delete(String isbn);
}
