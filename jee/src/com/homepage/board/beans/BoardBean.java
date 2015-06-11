package com.homepage.board.beans;

import java.util.Date;

public class BoardBean {
	private String title; // 글제목
	private int hits; // 조회수
	private String cateId; // 분류
	private String cateName; // 분류이름
	private String comment; // 댓글
	private String content; // 내용
	/*private int page; // 페이지쪽수 페이징으로 처리*/	
	private int commentNo; // 댓글번호	
	private Date regDate; // 댓글날짜
}
