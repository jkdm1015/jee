<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	@IMPORT url("template.css");
</style>
</head>
<body>
	<table
		class = "tableClass">
		<tr class="trClass">
			<td
				class = "tdColorClass">필드</td>
			<td
				class = "tdColorClass">입력값</td>
		</tr>
		<tr class="trClass">
			<td class="tdCenterClass">이름</td>
			<td class="tdCenterClass">
			<input type="text" style="width: 350px;">
			<!-- type 도 css로 뺄수 있다 
			개발자의 역량에 따라서 하고 싶으면 한다 --></td>
		</tr>
		<tr class="trClass">
			<td class="tdCenterClass">나이</td>
			<td class="tdCenterClass">
			<input type="text" style="width: 350px;"></td>
		</tr>
	</table>
</body>
</html>