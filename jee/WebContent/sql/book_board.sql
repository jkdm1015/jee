create table board(
	hits number,	-- 조회수 --
	title varchar2(30),		-- 글 제목 --
	cate_id varchar2(10),	-- 분류 --
	cate_name varchar2(20),	-- 분류 이름 --
	comment varchar2(100),	-- 댓글 --
	content varchar2(300),	-- 내용 --
	comment_no varchar2(10),-- 댓글 번호 --	
	reg_date date	-- 댓글 날짜 --
);
