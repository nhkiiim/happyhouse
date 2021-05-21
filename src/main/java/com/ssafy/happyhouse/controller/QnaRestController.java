package com.ssafy.happyhouse.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ssafy.happyhouse.dto.QnaDto;
import com.ssafy.happyhouse.model.service.QnaService;

import io.swagger.annotations.ApiOperation;

@CrossOrigin(origins = { "*" }, maxAge = 6000)
@RestController
@RequestMapping("/qnaapi")
public class QnaRestController {

	private static final Logger logger = LoggerFactory.getLogger(QnaRestController.class);
	private static final String SUCCESS = "success";
	private static final String FAIL = "fail";
	
	@Autowired
	QnaService qnaService;

	@ApiOperation(value = "모든 게시물을 반환한다.", response = List.class)
	@GetMapping
	public ResponseEntity<List<QnaDto>> listBook() {
		logger.debug("listQna - 호출");
		return new ResponseEntity<>(qnaService.list(), HttpStatus.OK);
	}

	@ApiOperation(value = "isbn에 해당하는 게시물을 반환한다.", response = QnaDto.class)
	@GetMapping("/{isbn}")
	public ResponseEntity<QnaDto> searchQna(@PathVariable String isbn) {
		logger.debug("searchBook - 호출");
		return new ResponseEntity<>(qnaService.search(isbn), HttpStatus.OK);
	}

	@ApiOperation(value = "새로운 게시물을 입력한다. 그리고 DB입력 성공여부에 따라 'success' 또는 'fail' 문자열을 반환한다.", response = String.class)
	@PostMapping
	public ResponseEntity<String> createQna(@RequestBody QnaDto qnaDto) {
		logger.debug("createQna - 호출");
		if(qnaService.create(qnaDto)) {
			return new ResponseEntity<String>(SUCCESS, HttpStatus.OK);
		}
		return new ResponseEntity<String>(FAIL, HttpStatus.NO_CONTENT);
	}

	@ApiOperation(value = "isbn에 해당하는 게시물의 정보를 수정한다. 그리고 DB수정 성공여부에 따라 'success' 또는 'fail' 문자열을 반환한다.", response = String.class)
	@PutMapping("{isbn}")
	public ResponseEntity<String> modifyQna(@RequestBody QnaDto qnaDto) {
		logger.debug("modifyQna - 호출");
		logger.debug("" + qnaDto);
		if(qnaService.modify(qnaDto)) {
			return new ResponseEntity<String>(SUCCESS, HttpStatus.OK);
		}
		return new ResponseEntity<String>(FAIL, HttpStatus.NO_CONTENT);
	}

	@ApiOperation(value = "isbn에 해당하는 책의 정보를 삭제한다. 그리고 DB삭제 성공여부에 따라 'success' 또는 'fail' 문자열을 반환한다.", response = String.class)
	@DeleteMapping("{isbn}")
	public ResponseEntity<String> deleteQna(@PathVariable("isbn") String isbn) {
		logger.debug("deleteBook - 호출");
		if(qnaService.delete(isbn)) {
			return new ResponseEntity<String>(SUCCESS, HttpStatus.OK);
		}
		return new ResponseEntity<String>(FAIL, HttpStatus.NO_CONTENT);
	}
}
