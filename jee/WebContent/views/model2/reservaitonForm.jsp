<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>예약 폼</title>
</head>
<body>
	<div>
	<%
	int floor;
	int room;
	String[][] name = new String[3][5]; // 투숙객 이름
	for (int i = 0; i < name.length; i++) {
		for (int j = 0; j < name[i].length; j++) {
			if (name[i][j] == null) {
				%>
				<%=i + 1 %> 0 <%=j + 1 %> 호
						<%="□"%>
				<%
			} else {
				%><%=i + 1%> 0 <%=j + 1%>호
						<%="■"%> <%=name[i][j]%><%
			}
		}%>
		<br /><%
	}
	%>
	</div>
</body>
</html>