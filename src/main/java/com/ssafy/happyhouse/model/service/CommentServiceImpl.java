package com.ssafy.happyhouse.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssafy.happyhouse.dto.CommentDto;
import com.ssafy.happyhouse.model.repo.CommentMapper;

@Service
public class CommentServiceImpl implements CommentService {
	@Autowired
	private CommentMapper commentMapper;
	
	@Override
	public List<CommentDto> list(String isbn) {
		return commentMapper.list(isbn);
	}
	@Override
	public boolean create(CommentDto commentDto) {
		return commentMapper.create(commentDto) == 1;
	}
	@Override
	public boolean modify(CommentDto commentDto) {
		return commentMapper.modify(commentDto) == 1;
	}
	@Override
	public boolean delete(int commentNo) {
		return commentMapper.delete(commentNo) == 1;
	}
}
