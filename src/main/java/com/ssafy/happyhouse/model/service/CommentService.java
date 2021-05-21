package com.ssafy.happyhouse.model.service;

import java.util.List;

import com.ssafy.happyhouse.dto.CommentDto;


public interface CommentService {
	List<CommentDto> list(String isbn);
	boolean create(CommentDto commentDto);
	boolean modify(CommentDto commentDto);
	boolean delete(int commentNo);	
}
