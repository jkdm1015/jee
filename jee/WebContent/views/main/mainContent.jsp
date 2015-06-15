<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html> <!-- html:5  html5로 기본 구성잡기 -->
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>Only Content Frame</title>
	<style>@import url(<%=request.getContextPath()%>/views/main/css/onlyContent.css);</style>
</head>
<body>
<div id="wrap" class="clear">
	<jsp:include page="header.jsp"/>
	
		
			<section class="content">
				<table>
					<tr style="height: 50px">
						<td><a href="#">공지</a></td>
						<td><a href="#">자유</a></td>
					</tr>
					<tr>
						<td colspan="2" id="centTd">내용</td>
					</tr>
				</table>
				<br /><br /><br /><br />
				<table>
					<tr style="height: 50px">
						<td>신간</td>
					</tr>
					<tr>
						<td id="centTd">내용</td>
					</tr>
				</table>
				<br /><br /><br /><br />
				<table>
					<tr style="height: 50px">
						<td>베스트</td>
					</tr>
					<tr>
						<td id="centTd">내용</td>
					</tr>
				</table>
			</section>
		
</div>
		
<jsp:include page="footer.jsp"/>
</body>
</html>