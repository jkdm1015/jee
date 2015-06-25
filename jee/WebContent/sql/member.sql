-- DDL 테이블 생성 --
create table MEMBER (
    MEMBERID varchar2(10) -- primary key, 간편하게 추가하는데 비추..
    PASSWORD varchar2(10) not null,
    NAME varchar2(20) not null,
    EMAIL varchar2(80),
    constraint member_pk primary key(memberid),
    constraint member_fk_address foreign key(address_id)
    references ADDRESS(address_id)
);
create table ADDRESS(
	address_id varchar2(10)
	constrant address_pk primary key(address_id)
);

commit;

-- 인스턴스간의 값을 식별할 수 있는 유일한 값이 필요하다
-- 제약조건(constraint)
-- 1. null or not null
-- 2. unique or not unique
-- 3. check() ex) boolean 이면 참, 거짓만 있어야한다
-- 4. not null + unique ==> primary key(기본 키) PK
-- 5. 참조값 : 관계정의에 필요한 키 값 ==> foregin key(외래키) FK ==> 상속(부모-자식)

-- primary key 추가하기
alter table member
add constraint member_pk primary key(memberid);

-- pk 삭제
alter table member
drop primary key;

-- DDL 테이블 삭제 --
drop table member;	commit;

-- DML 데이터 삽입(1) --
insert into member(memberid, password, name, email)
values('hong','hong','홍길동','hong@naver.com');commit;

-- DML 데이터 삽입(2) --
insert into member
values('hong2','hong2','홍길동','hong2@naver.com');commit;

-- DML 데이터 삽입(3) null인 값이 있을 경우
insert into member(memberid, password, name)
values('hulk','hulk','헐크');commit;

-- DML 데이터 조회 --
select * from member;

-- DML 데이터 조회(where절 사용)
select * from member
where memberid = 'hong2';

-- DML 두가지 조건을 가지고 검색
select * from member
where name = '홍길동' and email = 'hong@naver.com';

-- DML null 값인 경우 검색
select * from member
where email is null;

-- DML null 이 아닌 경우 검색
select * from member
where email is not null;

-- DML 조건 검색 like
select * from member
where name like '홍%';

select * from member
where name like '%길%';

-- DML 오름차순 정렬 
select * from member
where name like '%길%'
order by name asc;

-- DML 내림차순 정렬 
select * from member
where name like '%길%'
order by name desc;

-- DML 중복 정렬
select * from member
order by name asc, memberid asc;

-- DML 내장된 함수
select count(*) from member;
-- count() 은 인스턴스(row) 의 수량을 출력함
-- 그런데 파라미터 자리에 * count(*) 이 오면
-- 전체 개수를 리턴

-- DML 데이터 수정
update member
set name = '허얼크'
where memberid = 'hulk' and email is null;
commit;

update member
set memberid = 'huuulk', password = 'huuulk'
where email is null;
commit;

-- DML 데이터 삭제
-- 테이블 삭제는 drop 데이터 삭제는 delete
-- 차이는 클래스를 지우는것과 인스턴스를 지우는것 정도로 보면 됨
delete from member
where email is null; commit;

-- DDL 테이블 상세내역 보기
desc member;

-- DDL 테이블 종류 보기
select * from tab;

-- DDL 테이블 수정
-- 컬럼을 추가하는 구문
alter table member
add age number;
commit;

-- DDL 컬럼을 삭제하는 구문
alter table member
drop column age;
commit;

-- DDL 컬럼의 유형을 변경
alter table member
modify age varchar2(10);
commit;

-- 컬럼명 변경
alter table member 
rename column name to name2;

-- PK 조회
select table_name, constraint_name, constraint_type
from user_constraints
where table_name = 'MEMBER'; -- 주의 대문자 오라클은 내부적으로 대문자로 바뀜

-- 
