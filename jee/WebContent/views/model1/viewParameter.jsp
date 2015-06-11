<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Enumeration" %>
<%@ page import="java.util.Map" %>
<!-- get 방식으로 전송하면 아래에서 UTF-8로 인코딩 하지 않아도 한글이 안깨짐 -->
<%
	request.setCharacterEncoding("UTF-8");
%>

<!-- 
	request.getParameter() 메소드 사용 == 낱개 파라미터 키값과 벨류값을 리턴 
	name 파라미터 = 정민규 
	address 파라미터 = 전북 군산 
	request.getParameterValues() 메소드 사용 == 키값없이 벨류 값만 리턴 (체크박스)
	넘어온 value 값 : dog
	넘어온 value 값 : cat
	request.getParameterNames() 메소드 사용 == 키 값만 리턴 (쓸모없음)
	name 
	address 
	pet 
	request.getParameterMap() 메소드 사용 == 파라미터 벨류가 복수인 경우(로그인,회원가입)
	이름 : 정민규
 -->
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>폼 값을 받은 페이지</title>
</head>
<body>
<div>
	<b>request.getParameter() 메소드 사용</b> <br />
	name 파라미터 = <%=request.getParameter("name") %> <br />
	address 파라미터 = <%=request.getParameter("address") %> <br />
	<b>request.getParameterValues() 메소드 사용</b> <br />
	<%
		String[] values = request.getParameterValues("pet");
		if(values != null){
			for(int i = 0 ; i<values.length ; i++){
				%>
				넘어온 value 값 : <%=values[i]%><br />
				<%
			}
		}
	%>
	<b>request.getParameterNames() 메소드 사용</b> <br />
	<%
		Enumeration paramEnum = request.getParameterNames();
		while(paramEnum.hasMoreElements()){
			String name = (String)paramEnum.nextElement();
			%>
			<%=name%> <br />
			<%
		}
	%>
	<b>request.getParameterMap() 메소드 사용</b> <br />
	<%
		Map paramMap = request.getParameterMap();
		String[] nameParam = (String[])paramMap.get("name");
		if(nameParam != null){
			%>
			이름 : <%=nameParam[0]%>
			<%
		}
	%>
</div>
</body>
</html>