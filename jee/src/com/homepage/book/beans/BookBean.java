package com.homepage.book.beans;

import java.util.Date;

public class BookBean {
	private String bTitle;//책 이름
	private String author;//책 저자
	private String publisher;//출판사
	private String bGroup;//책분류
	private String serialNo;//책식별번호
	private boolean exist;//책이 도서실에 있나 없나
	private boolean isRent;//책 빌림 신청이 걸려 있나 안걸려 있나.
	private boolean isDelay;//책 빌려가고 연장 햇나 안했나.
	private int rentCount;//해당 책 빌려간 횟수
	private Date pressDate;//책 출간일
	private Date rentDate;//책 대여일
	private Date entrada;//책 입고일
}
