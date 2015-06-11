package com.homepage.stat.beans;

import java.util.List;

import com.homepage.book.beans.BookBean;

public class StatBean {
	private int visitorCnt; // 방문자 수
	private int ageGroup; // 나이대
	private int rentCnt; // 책 대여수
	private int searchCnt; // 검색횟수
//	private BookBean bookBean; // 책 정보
	
	public BookBean getList(BookBean bookNo){
		return bookNo;
	}
}
