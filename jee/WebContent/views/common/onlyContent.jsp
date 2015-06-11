<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html> <!-- html:5  html5로 기본 구성잡기 -->
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>Only Content Frame</title>
	<style>@import url("<%=request.getContextPath()%>/css/onlyContent.css");</style>
</head>
<body>
<!-- table>tr>td* 3 (table 3개 만들기)-->
	<header>
		<h3>헤더</h3>
	</header>
	<article>
		<section class="content">
			<h3>콘텐츠</h3>
		</section>
	</article>	
	<footer>
		<h3>푸터</h3>
	</footer>
</body>
</html>