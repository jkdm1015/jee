<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html> <!-- html:5  html5로 기본 구성잡기 -->
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>Only Content Frame</title>
	<style>@import url(<%=request.getContextPath()%>/css/onlyContent.css);</style>
</head>
<body>
<div id="wrap" class="clear">
	<jsp:include page="header.jsp"/>
	<!-- table>tr>td* 3 (table 3개 만들기)-->
		<article>
			<section class="content">
				<h3>콘텐츠</h3>
			</section>
		</article>
</div>
		
<jsp:include page="footer.jsp"/>
</body>
</html>