<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
@import url(<%=request.getContextPath()%>/views/main/css/header.css);
</style>

<!-- wrap, wrapper 의미를 주어지는 클래스나 아이디는 body 바로 밑
	최상위 div에게 보통 주어진다. 문법적 의미는 없다. -->
<header id="top">
	<div id="login">
		<a href="#">회원가입</a> | <a href="#">로그인</a> | <a href="#">사이트맵</a>
	</div>
	<div class="clear"></div>
	<nav id="topMenu">
		<table id="noneT" align="center" style="width: 80%; height: 50px">
			<tr>
				<td><a href="#">HOME</a></td>
				<td><a href="#">자료검색</a></td>
				<td><a href="#">신청/예약</a></td>
				<td><a href="#">게시판</a></td>
				<td><a href="#">통계</a></td>
			</tr>
		</table>
		<!-- <ul>
			<li><a href="#">HOME</a></li>
			<li><a href="#">자료검색</a></li>
			<li><a href="#">신청/예약</a></li>
			<li><a href="#">게시판</a></li>
			<li><a href="#">통계</a></li>
		</ul> -->
	</nav>
</header>
<div class="clear"></div>
