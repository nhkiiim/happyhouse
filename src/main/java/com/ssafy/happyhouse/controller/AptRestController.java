package com.ssafy.happyhouse.controller;

import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@CrossOrigin("*")
@RequestMapping("/houseapi")
public class AptRestController {
//	@Autowired
//	private BookService bService;
//	
//	private ResponseEntity<?> exceptionHandling(Exception e) {
//		e.printStackTrace();
//		return new ResponseEntity<String>("Exception: "+e.getMessage(),HttpStatus.INTERNAL_SERVER_ERROR);
//	}
//	@PostMapping("/book")
//	@ApiOperation(value = "Book 객체를 저장한다.", response = Integer.class)
//	public ResponseEntity<?> insert(@RequestBody Book book) throws IllegalStateException, IOException{
//		try {
//			int result=bService.insert(book);
//			return new ResponseEntity<Integer>(result,HttpStatus.CREATED);
//		}catch(Exception e) {
//			return exceptionHandling(e);
//		}
//	}
//	@PutMapping("/book")
//	@ApiOperation(value = "Book 객체를 수정한다.", response = Integer.class)
//	public ResponseEntity<?> update(@RequestBody Book book) throws IllegalStateException, IOException{
//		try {
//			int result=bService.update(book);
//			if(result==0) return new ResponseEntity<Integer>(result,HttpStatus.NO_CONTENT);
//			else          return new ResponseEntity<Integer>(result,HttpStatus.CREATED);
//		}catch(Exception e) {
//			return exceptionHandling(e);
//		}
//	}
//	@DeleteMapping("/book/{isbn}")
//	@ApiOperation(value = "{isbn}에 해당하는 Book 객체를 삭제한다.", response = Integer.class)
//	public ResponseEntity<?> delete(@PathVariable String isbn) {
//		try {
//			int result=bService.delete(isbn);
//			if(result==0) return new ResponseEntity<Integer>(result,HttpStatus.NO_CONTENT);
//			else          return new ResponseEntity<Integer>(result,HttpStatus.CREATED);
//		}catch(Exception e) {
//			return exceptionHandling(e);
//		}
//	}
//	@GetMapping("/book/{isbn}")
//	@ApiOperation(value = "{isbn}에 해당하는 도서 정보를 반환한다.", response = Book.class)
//	public ResponseEntity<?> select(@PathVariable String isbn) {
//		try {
//			Book book=bService.select(isbn);
//			if(book!=null) return new ResponseEntity<Book>(book,HttpStatus.OK);
//			else           return new ResponseEntity<Void>(HttpStatus.NO_CONTENT);
//		}catch(Exception e) {
//			return exceptionHandling(e);
//		}
//	}
//	@GetMapping("/book")
//	@ApiOperation(value = "query string에 해당하는 검색 조건에 해당하는 도서 목록을 반환한다.", response = Book.class)
//	public ResponseEntity<?> search(SearchCondition condition){
//		try {
//			List<Book> books=bService.search(condition);
//			if(books!=null && books.size()>0) return new ResponseEntity<List<Book>>(books,HttpStatus.OK);
//			else                              return new ResponseEntity<Void>(HttpStatus.NO_CONTENT);
//		}catch(Exception e) {
//			return exceptionHandling(e);
//		}
//	}
}
