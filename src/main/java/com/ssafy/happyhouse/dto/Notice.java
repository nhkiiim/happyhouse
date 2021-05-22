package com.ssafy.happyhouse.dto;

public class Notice {
	private int notice_no;
	private String title;
	private String content;
	private String notice_time;
	
	public int getNotice_no() {
		return notice_no;
	}

	public void setNotice_no(int notice_no) {
		this.notice_no = notice_no;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getNotice_time() {
		return notice_time;
	}

	public void setNotice_time(String notice_time) {
		this.notice_time = notice_time;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("notice [notice_no=").append(notice_no).append(", title=").append(title).append(", content=")
				.append(content).append(", notice_time=").append(notice_time).append("]");
		return builder.toString();
	}

	
	
}
