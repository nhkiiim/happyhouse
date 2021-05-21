package com.ssafy.happyhouse.dto;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;

@ApiModel(value = "BookDto : 책 한권의 정보", description = "책의 상세 정보를 나타낸다.")
public class QnaDto {

	@ApiModelProperty(value = "고유번호", example = "111-111-1111")
	private String isbn;
	@ApiModelProperty(value = "책제목")
	private String title;
	@ApiModelProperty(value = "저자")
	private String author;
	@ApiModelProperty(value = "상세정보")
	private String content;
	@ApiModelProperty(value = "2021.05.19")
	private String time;


	public String getIsbn() {
		return isbn;
	}

	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

}
