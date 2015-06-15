<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>카우프 지수 구하기</title>
	<!-- <style>
		@IMPORT url("../../css/model2/kaup.css");
	</style> -->
</head>
<body>
	<form action="<%=request.getContextPath()%>/model2/join.do" method="post">
		<feildset>
			<legend>회원가입</legend>	
			<table>
				<tr>
					<td>이름</td>
					<td> <input type="text" id="name" name="name" placeholder="이름" /> </td>
				</tr>
				<tr>
					<td>ID</td>
					<td> <input type="text" id="id" name="id" placeholder="ID" /> </td>
				</tr>
				<tr>
					<td>PassWord</td>
					<td> <input type="password" id="password" name="password" /> </td>
				</tr>
				<tr>
					<td>나이</td>
					<td> <input type="text" id="age" name="age" placeholder="나이" /> </td>
				</tr>
				<tr>
					<td>주소</td>
					<td> <input type="text" id="address" name="address" placeholder="주소" /> </td>
				</tr>
				<tr>
					<td colspan="2"> <input type="submit" value="회원가입"/> </td>
				</tr>
			</feildset>	
		</table>
	</form>
	
	<form action="<%=request.getContextPath()%>/model2/login.do" method="post">
		<feildset>
			<legend>로그인</legend>	
			<table>
				<tr>
					<td>ID</td>
					<td> <input type="text" id="id" name="id" placeholder="ID" /> </td>
				</tr>
				<tr>
					<td>PassWord</td>
					<td> <input type="password" id="password" name="password" /> </td>
				</tr>
				<tr>
					<td colspan="2"> <input type="submit" value="로그인" /> </td>
				</tr>
			</feildset>	
		</table>
	</form>
</body>
</html>