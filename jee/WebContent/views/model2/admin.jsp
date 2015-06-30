<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>관리자 페이지</title>
</head>
<body>
<form action="<%=request.getContextPath()%>/model2/searchAllMembers.do" name="frmAdin">
		<feildset>
			<legend>회원관리</legend>	
			<table>
				<tr>
					<td>전체회원 목록보기</td>
					<!-- <td> <input type="text" id="name" name="name" placeholder="이름" /> </td> -->
				</tr>
				<tr>
					<td>ID 로 회원검색</td>
				<!-- 	<td> <input type="text" id="id" name="id" placeholder="ID" /> </td> -->
				</tr>
				<tr>
					<td>이름으로 회원검색(동명이인 허용)</td>
					<!-- <td> <input type="password" id="password" name="password" /> </td> -->
				</tr>
				<tr>
					<td>회원 삭제</td>
					<!-- <td> <input type="text" id="age" name="age" placeholder="나이" /> </td> -->
				</tr>
				<tr>
					<td colspan="2"> <input type="submit" value="전송"/> </td>
				</tr>
			</feildset>	
		</table>
	</form>
	
</body>
</html>