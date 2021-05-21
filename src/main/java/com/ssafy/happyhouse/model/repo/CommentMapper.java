package com.ssafy.happyhouse.model.repo;

import java.util.List;

//import com.ssafy.happyhouse.model.CommentDto;
import com.ssafy.happyhouse.dto.CommentDto;



public interface CommentMapper {
	List<CommentDto> list(String isbn);
	int create(CommentDto commentDto);
	int modify(CommentDto commentDto);
	int delete(int commentNo);	
}
