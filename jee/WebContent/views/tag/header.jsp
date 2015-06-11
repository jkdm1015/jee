<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<title>header sample</title>
<style>
@import url(<%=request.getContextPath()%>/css/header.css);
</style>
</head>
<body>

	<div id="wrap">
		<!-- wrap, wrapper 의미를 주어지는 클래스나 아이디는 body 바로 밑
	최상위 div에게 보통 주어진다. 문법적 의미는 없다. -->
		<header id="top">
			<div id="login">
				<a href="#">login</a> | <a href="#">join</a>
			</div>
			<div class="clear"></div>
			<div id="logo">
				<a href="#"> <img src="../../images/img111.gif" width="250px"
					height="60px" alt="" />
				</a>
			</div>
			<nav id="topMenu">
				<ul>
					<li><a href="#">HOME</a></li>
					<li><a href="#">COMPANY</a></li>
					<li><a href="#">SOLUTION</a></li>
					<li><a href="#">CUSTOMER CENTER</a></li>
					<li><a href="#">CONTACT US</a></li>
				</ul>
			</nav>
		</header>
	</div>
	<div class="clear"></div>
	<footer>
		<hr />
		<div>
			<pre>
			회사소개 : 봄바람을 지혜는 소리다.이것은 방황하여도, 남는 그들은 청춘의 것이다. 청춘의 아니한 앞이 부패를 소담스러운
			위하여서 아름다우냐? 힘차게 영원히 이상을 새가 이것이야말로 황금시대의 인간에 크고 있다.
			</pre>
		</div>
	</footer>

</body>
</html>